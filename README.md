# IntegerToJapanese

数値を日本語読みにする処理を追加します。

## 追加方法

gemに追加します。

```bash
$ gem install integer_to_japanese
```

またはGemfileに追加します。

```ruby
gem 'integer_to_japanese'
```

## 使い方

```ruby
require 'integer_to_japanese'

800.to_hiragana
#=> "はっぴゃく"

3000.to_katakana
#=> "サンゼン"

20000.to_kanji
#=> "二万"
```

負数の場合はマイナスが付きます。

```ruby
-100.to_hiragana
#=> "まいなすひゃく"

# 漢字の場合はカタカナ表記で付きます
-50.to_kanji
#=> "マイナス五十"
```

無量大数を超える位の数字はnilになります。

```ruby
(10 ** 71).to_kanji
#=> "千無量大数"

(10 ** 72).to_kanji
#=> nil
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
