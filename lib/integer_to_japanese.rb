# frozen_string_literal: true

require_relative "integer_to_japanese/version"
require_relative "integer_to_japanese/constants"

# Integer用の日本語変換モジュール
module IntegerToJapanese
  include Constants

  # 数値のひらがなよみを返します
  #
  # @example
  #   10.to_hiragana        #=> "じゅう"
  #   1110.to_hiragana      #=> "せんひゃくじゅう"
  #   8_000_000.to_hiragana #=> "はっぴゃくまん"
  # @return [String] ひらがなに変換した文字列
  # @return [nil] 無量大数の次の位の値の場合
  def to_hiragana
    return HIRAGANA_ZERO if zero?
    return nil if self >= READABLE_LIMIT_NUMBER

    has_numeral = true
    result = digits_map do |digit, index|
      converted_digit, has_numeral = convert_digit_to_hiragana(digit, index, has_numeral)
      converted_digit
    end
    "#{negative? ? HIRAGANA_MINUS : nil}#{convert_ten_numerals(result)}"
  end

  # 数値のカタカナよみを返します
  #
  # @example
  #   10.to_katakana        #=> "ジュウ"
  #   1110.to_katakana      #=> "センヒャクジュウ"
  #   8_000_000.to_katakana #=> "ハッピャクマン"
  # @return [String] カタカナに変換した文字列
  # @return [nil] 無量大数の次の位の値の場合
  def to_katakana
    to_hiragana&.tr("ぁ-ん", "ァ-ン")
  end

  # 数値漢字よみを返します<br>
  # ただし負数のマイナスはカタカナを返します
  #
  # @example
  #   10.to_kanji        #=> "十"
  #   1110.to_kanji      #=> "千百十"
  #   8_000_000.to_kanji #=> "八百万"
  #   -100.to_kanji      #=> "マイナス百"
  # @return [String] 漢字に変換した文字列
  # @return [nil] 無量大数の次の位の値の場合
  def to_kanji
    return KANJI_ZERO if zero?
    return nil if self >= READABLE_LIMIT_NUMBER

    has_numeral = true
    result = digits_map do |digit, index|
      converted_digit, has_numeral = convert_digit_to_kanji(digit, index, has_numeral)
      converted_digit
    end
    "#{negative? ? KANJI_MINUS : nil}#{result}"
  end

  protected

  # 各桁の変換処理<br>
  # 各桁をblockの内容で変換し、結果を文字列連結して返す処理
  def digits_map
    size_count = abs.digits.size
    abs.digits.reverse.map.with_index do |digit, reverse_index|
      index = size_count - 1 - reverse_index
      yield(digit, index)
    end.join
  end

  # 数値をひらがなに変換
  def convert_digit_to_hiragana(digit, index, has_numeral)
    result = ""
    sub_numeral = index % 4
    digit_word = HIRAGANA_WORDS[digit]
    has_numeral |= !digit_word.empty?
    if sub_numeral.zero?
      # 万、億等の単位表示桁の場合
      return [result, has_numeral] unless has_numeral

      has_numeral = false
      numeral = index / 4
      result = SPECIAL_NUMERALS[[digit, numeral]] || "#{digit_word}#{HIRAGANA_NUMERAL[numeral]}"
    else
      # 千、百等のサブ単位表示桁の場合
      result = SPECIAL_HIRAGANA_SUB_NUMERALS[[digit, sub_numeral]] || "#{digit_word}#{HIRAGANA_SUB_NUMERAL[sub_numeral]}"
    end
    [result, has_numeral]
  end

  # 数値を漢字に変換
  def convert_digit_to_kanji(digit, index, has_numeral)
    result = ""
    sub_numeral = index % 4
    digit_word = KANJI_WORDS[digit]
    has_numeral |= !digit_word.empty?
    if sub_numeral.zero?
      # 万、億等の単位表示桁の場合
      return [result, has_numeral] unless has_numeral

      has_numeral = false
      numeral = index / 4
      result = "#{digit_word}#{KANJI_NUMERAL[numeral]}"
    else
      # 千、百等のサブ単位表示桁の場合
      result = SPECIAL_KANJI_SUB_NUMERALS[[digit, sub_numeral]] || "#{digit_word}#{KANJI_SUB_NUMERAL[sub_numeral]}"
    end
    [result, has_numeral]
  end

  # 特殊処理として10 + 特定の単位のときに「じゅう」を「じっ」に置換
  # @example
  #   convert_ten_numerals("じゅうちょう") #=> "じっちょう"
  def convert_ten_numerals(string)
    SPECIAL_TEN_NUMERALS.each do |before, after|
      string.gsub!(before, after)
    end
    string
  end
end

class Integer
  include IntegerToJapanese
end
