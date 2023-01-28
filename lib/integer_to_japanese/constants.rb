# frozen_string_literal: true

module IntegerToJapanese
  module Constants
    HIRAGANA_MINUS = "まいなす"
    HIRAGANA_ZERO = "ぜろ"
    HIRAGANA_WORDS = ["", "いち", "に", "さん", "よん", "ご", "ろく", "なな", "はち", "きゅう"].freeze
    HIRAGANA_SUB_NUMERAL = ["", "じゅう", "ひゃく", "せん"].freeze
    HIRAGANA_NUMERAL = ["", "まん", "おく", "ちょう", "けい", "がい", "じょ", "じょう", "こう", "かん", "せい", "さい", "ごく", "ごうがしゃ", "あそうぎ", "なゆた", "ふかしぎ", "むりょうたいすう"].freeze
    SPECIAL_HIRAGANA_SUB_NUMERALS = {
      [0, 0].freeze => "", [0, 1].freeze => "", [0, 2].freeze => "", [0, 3].freeze => "",
      [1, 1].freeze => "じゅう", [1, 2].freeze => "ひゃく", [1, 3].freeze => "せん",
      [3, 2].freeze => "さんびゃく", [3, 3].freeze => "さんぜん",
      [6, 2].freeze => "ろっぴゃく",
      [8, 2].freeze => "はっぴゃく", [8, 3].freeze => "はっせん"
    }.freeze
    SPECIAL_NUMERALS = {
      [1, 3].freeze => "いっちょう", [8, 3].freeze => "はっちょう",
      [1, 4].freeze => "いっけい", [6, 4].freeze => "ろっけい", [8, 4].freeze => "はっけい",
      [1, 8].freeze => "いっこう", [6, 8].freeze => "ろっこう", [8, 8].freeze => "はっこう",
      [1, 9].freeze => "いっかん", [6, 9].freeze => "ろっかん", [8, 9].freeze => "はっかん",
      [1, 10].freeze => "いっせい", [8, 10].freeze => "はっせい",
      [1, 11].freeze => "いっさい", [8, 11].freeze => "はっさい"
    }.freeze
    SPECIAL_TEN_NUMERALS = {
      "じゅうちょう" => "じっちょう", "じゅうけい" => "じっけい",
      "じゅうこう" => "じっこう", "じゅうかん" => "じっかん",
      "じゅうせい" => "じっせい", "じゅうさい" => "じっさい"
    }.freeze

    KANJI_MINUS = "マイナス"
    KANJI_ZERO = "零"
    KANJI_WORDS = ["", "一", "二", "三", "四", "五", "六", "七", "八", "九"].freeze
    KANJI_SUB_NUMERAL = ["", "十", "百", "千"].freeze
    KANJI_NUMERAL = ["", "万", "億", "兆", "京", "垓", "秭", "穰", "溝", "澗", "正", "載", "極", "恒河沙", "阿僧祇", "那由他", "不可思議", "無量大数"].freeze
    SPECIAL_KANJI_SUB_NUMERALS = {
      [0, 0].freeze => "", [0, 1].freeze => "", [0, 2].freeze => "", [0, 3].freeze => "",
      [1, 1].freeze => "十", [1, 2].freeze => "百", [1, 3].freeze => "千"
    }.freeze

    READABLE_LIMIT_NUMBER =
      1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
  end
end
