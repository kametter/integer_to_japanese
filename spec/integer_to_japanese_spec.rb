# frozen_string_literal: true

RSpec.describe IntegerToJapanese do
  it "has a version number" do
    expect(IntegerToJapanese::VERSION).not_to be nil
  end

  context "to_hiragana" do
    it "1 digit" do
      expect(0.to_hiragana).to eq("ぜろ")
      expect(1.to_hiragana).to eq("いち")
      expect(2.to_hiragana).to eq("に")
      expect(3.to_hiragana).to eq("さん")
      expect(4.to_hiragana).to eq("よん")
      expect(5.to_hiragana).to eq("ご")
      expect(6.to_hiragana).to eq("ろく")
      expect(7.to_hiragana).to eq("なな")
      expect(8.to_hiragana).to eq("はち")
      expect(9.to_hiragana).to eq("きゅう")
    end

    it "2 digits" do
      expect(10.to_hiragana).to eq("じゅう")
      expect(20.to_hiragana).to eq("にじゅう")
      expect(30.to_hiragana).to eq("さんじゅう")
      expect(40.to_hiragana).to eq("よんじゅう")
      expect(50.to_hiragana).to eq("ごじゅう")
      expect(60.to_hiragana).to eq("ろくじゅう")
      expect(70.to_hiragana).to eq("ななじゅう")
      expect(80.to_hiragana).to eq("はちじゅう")
      expect(90.to_hiragana).to eq("きゅうじゅう")
      expect(11.to_hiragana).to eq("じゅういち")
      expect(12.to_hiragana).to eq("じゅうに")
      expect(23.to_hiragana).to eq("にじゅうさん")
      expect(24.to_hiragana).to eq("にじゅうよん")
      expect(75.to_hiragana).to eq("ななじゅうご")
      expect(99.to_hiragana).to eq("きゅうじゅうきゅう")
    end

    it "3 digits" do
      expect(100.to_hiragana).to eq("ひゃく")
      expect(200.to_hiragana).to eq("にひゃく")
      expect(300.to_hiragana).to eq("さんびゃく")
      expect(400.to_hiragana).to eq("よんひゃく")
      expect(500.to_hiragana).to eq("ごひゃく")
      expect(600.to_hiragana).to eq("ろっぴゃく")
      expect(700.to_hiragana).to eq("ななひゃく")
      expect(800.to_hiragana).to eq("はっぴゃく")
      expect(900.to_hiragana).to eq("きゅうひゃく")
      expect(101.to_hiragana).to eq("ひゃくいち")
      expect(110.to_hiragana).to eq("ひゃくじゅう")
      expect(222.to_hiragana).to eq("にひゃくにじゅうに")
      expect(333.to_hiragana).to eq("さんびゃくさんじゅうさん")
      expect(444.to_hiragana).to eq("よんひゃくよんじゅうよん")
      expect(555.to_hiragana).to eq("ごひゃくごじゅうご")
      expect(666.to_hiragana).to eq("ろっぴゃくろくじゅうろく")
      expect(777.to_hiragana).to eq("ななひゃくななじゅうなな")
      expect(888.to_hiragana).to eq("はっぴゃくはちじゅうはち")
      expect(999.to_hiragana).to eq("きゅうひゃくきゅうじゅうきゅう")
    end

    it "4 digits" do
      expect(1000.to_hiragana).to eq("せん")
      expect(2000.to_hiragana).to eq("にせん")
      expect(3000.to_hiragana).to eq("さんぜん")
      expect(4000.to_hiragana).to eq("よんせん")
      expect(5000.to_hiragana).to eq("ごせん")
      expect(6000.to_hiragana).to eq("ろくせん")
      expect(7000.to_hiragana).to eq("ななせん")
      expect(8000.to_hiragana).to eq("はっせん")
      expect(9000.to_hiragana).to eq("きゅうせん")
      expect(1001.to_hiragana).to eq("せんいち")
      expect(1010.to_hiragana).to eq("せんじゅう")
      expect(1100.to_hiragana).to eq("せんひゃく")
      expect(1110.to_hiragana).to eq("せんひゃくじゅう")
      expect(1111.to_hiragana).to eq("せんひゃくじゅういち")
      expect(2222.to_hiragana).to eq("にせんにひゃくにじゅうに")
      expect(3333.to_hiragana).to eq("さんぜんさんびゃくさんじゅうさん")
      expect(4444.to_hiragana).to eq("よんせんよんひゃくよんじゅうよん")
      expect(5555.to_hiragana).to eq("ごせんごひゃくごじゅうご")
      expect(6666.to_hiragana).to eq("ろくせんろっぴゃくろくじゅうろく")
      expect(7777.to_hiragana).to eq("ななせんななひゃくななじゅうなな")
      expect(8888.to_hiragana).to eq("はっせんはっぴゃくはちじゅうはち")
      expect(9999.to_hiragana).to eq("きゅうせんきゅうひゃくきゅうじゅうきゅう")
    end

    it "5-8 digits" do
      expect(10_000.to_hiragana).to eq("いちまん")
      expect(20_000.to_hiragana).to eq("にまん")
      expect(100_000.to_hiragana).to eq("じゅうまん")
      expect(200_000.to_hiragana).to eq("にじゅうまん")
      expect(1_000_000.to_hiragana).to eq("ひゃくまん")
      expect(2_000_000.to_hiragana).to eq("にひゃくまん")
      expect(10_000_000.to_hiragana).to eq("せんまん")
      expect(20_000_000.to_hiragana).to eq("にせんまん")
      expect(10_000_001.to_hiragana).to eq("せんまんいち")
      expect(10_000_010.to_hiragana).to eq("せんまんじゅう")
      expect(10_000_100.to_hiragana).to eq("せんまんひゃく")
      expect(10_001_000.to_hiragana).to eq("せんまんせん")
      expect(10_010_000.to_hiragana).to eq("せんいちまん")
      expect(10_100_000.to_hiragana).to eq("せんじゅうまん")
      expect(11_000_000.to_hiragana).to eq("せんひゃくまん")
      expect(11_111_111.to_hiragana).to eq("せんひゃくじゅういちまんせんひゃくじゅういち")
      expect(33_333_333.to_hiragana).to eq("さんぜんさんびゃくさんじゅうさんまんさんぜんさんびゃくさんじゅうさん")
      expect(66_666_666.to_hiragana).to eq("ろくせんろっぴゃくろくじゅうろくまんろくせんろっぴゃくろくじゅうろく")
      expect(88_888_888.to_hiragana).to eq("はっせんはっぴゃくはちじゅうはちまんはっせんはっぴゃくはちじゅうはち")
    end

    it "9-12 digits" do
      expect(100_000_000.to_hiragana).to eq("いちおく")
      expect(200_000_000.to_hiragana).to eq("におく")
      expect(1_000_000_000.to_hiragana).to eq("じゅうおく")
      expect(2_000_000_000.to_hiragana).to eq("にじゅうおく")
      expect(10_000_000_000.to_hiragana).to eq("ひゃくおく")
      expect(20_000_000_000.to_hiragana).to eq("にひゃくおく")
      expect(100_000_000_000.to_hiragana).to eq("せんおく")
      expect(200_000_000_000.to_hiragana).to eq("にせんおく")
      expect(100_000_000_001.to_hiragana).to eq("せんおくいち")
      expect(100_000_000_010.to_hiragana).to eq("せんおくじゅう")
      expect(100_000_000_100.to_hiragana).to eq("せんおくひゃく")
      expect(100_000_001_000.to_hiragana).to eq("せんおくせん")
      expect(100_000_010_000.to_hiragana).to eq("せんおくいちまん")
      expect(100_000_100_000.to_hiragana).to eq("せんおくじゅうまん")
      expect(100_001_000_000.to_hiragana).to eq("せんおくひゃくまん")
      expect(100_010_000_000.to_hiragana).to eq("せんおくせんまん")
      expect(100_100_000_000.to_hiragana).to eq("せんいちおく")
      expect(101_000_000_000.to_hiragana).to eq("せんじゅうおく")
      expect(110_000_000_000.to_hiragana).to eq("せんひゃくおく")
      expect(100_010_001_000.to_hiragana).to eq("せんおくせんまんせん")
      expect(100_010_001.to_hiragana).to eq("いちおくいちまんいち")
      expect(111_111_111_111.to_hiragana).to eq("せんひゃくじゅういちおくせんひゃくじゅういちまんせんひゃくじゅういち")
      expect(333_333_333_333.to_hiragana)
        .to eq("さんぜんさんびゃくさんじゅうさんおくさんぜんさんびゃくさんじゅうさんまんさんぜんさんびゃくさんじゅうさん")
      expect(666_666_666_666.to_hiragana)
        .to eq("ろくせんろっぴゃくろくじゅうろくおくろくせんろっぴゃくろくじゅうろくまんろくせんろっぴゃくろくじゅうろく")
      expect(888_888_888_888.to_hiragana)
        .to eq("はっせんはっぴゃくはちじゅうはちおくはっせんはっぴゃくはちじゅうはちまんはっせんはっぴゃくはちじゅうはち")
    end

    it "13-16 digits" do
      expect(1_000_000_000_000.to_hiragana).to eq("いっちょう")
      expect(2_000_000_000_000.to_hiragana).to eq("にちょう")
      expect(8_000_000_000_000.to_hiragana).to eq("はっちょう")
      expect(10_000_000_000_000.to_hiragana).to eq("じっちょう")
      expect(20_000_000_000_000.to_hiragana).to eq("にじっちょう")
      expect(100_000_000_000_000.to_hiragana).to eq("ひゃくちょう")
      expect(200_000_000_000_000.to_hiragana).to eq("にひゃくちょう")
      expect(1_000_000_000_000_000.to_hiragana).to eq("せんちょう")
      expect(2_000_000_000_000_000.to_hiragana).to eq("にせんちょう")
      expect(1_111_111_111_111_111.to_hiragana)
        .to eq("せんひゃくじゅういっちょうせんひゃくじゅういちおくせんひゃくじゅういちまんせんひゃくじゅういち")
      expect(3_333_333_333_333_333.to_hiragana)
        .to eq("さんぜんさんびゃくさんじゅうさんちょうさんぜんさんびゃくさんじゅうさんおくさんぜんさんびゃくさんじゅうさんまんさんぜんさんびゃくさんじゅうさん")
      expect(6_666_666_666_666_666.to_hiragana)
        .to eq("ろくせんろっぴゃくろくじゅうろくちょうろくせんろっぴゃくろくじゅうろくおくろくせんろっぴゃくろくじゅうろくまんろくせんろっぴゃくろくじゅうろく")
      expect(8_888_888_888_888_888.to_hiragana)
        .to eq("はっせんはっぴゃくはちじゅうはっちょうはっせんはっぴゃくはちじゅうはちおくはっせんはっぴゃくはちじゅうはちまんはっせんはっぴゃくはちじゅうはち")
    end

    it "17 or more digits" do
      expect(100_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000.to_hiragana)
        .to eq("いちむりょうたいすう")
      expect(100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001.to_hiragana)
        .to eq("いちむりょうたいすういちふかしぎいちなゆたいちあそうぎいちごうがしゃいちごくいっさいいっせいいっかんいっこういちじょういちじょいちがいいっけいいっちょういちおくいちまんいち")
      expect(200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002.to_hiragana)
        .to eq("にむりょうたいすうにふかしぎになゆたにあそうぎにごうがしゃにごくにさいにせいにかんにこうにじょうにじょにがいにけいにちょうにおくにまんに")
      expect(600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006.to_hiragana)
        .to eq("ろくむりょうたいすうろくふかしぎろくなゆたろくあそうぎろくごうがしゃろくごくろくさいろくせいろっかんろっこうろくじょうろくじょろくがいろっけいろくちょうろくおくろくまんろく")
      expect(800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008.to_hiragana)
        .to eq("はちむりょうたいすうはちふかしぎはちなゆたはちあそうぎはちごうがしゃはちごくはっさいはっせいはっかんはっこうはちじょうはちじょはちがいはっけいはっちょうはちおくはちまんはち")
      expect(1_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010.to_hiragana)
        .to eq("じゅうむりょうたいすうじゅうふかしぎじゅうなゆたじゅうあそうぎじゅうごうがしゃじゅうごくじっさいじっせいじっかんじっこうじゅうじょうじゅうじょじゅうがいじっけいじっちょうじゅうおくじゅうまんじゅう")
      expect(999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999.to_hiragana)
        .to eq("きゅうせんきゅうひゃくきゅうじゅうきゅうむりょうたいすうきゅうせんきゅうひゃくきゅうじゅうきゅうふかしぎきゅうせんきゅうひゃくきゅうじゅうきゅうなゆたきゅうせんきゅうひゃくきゅうじゅうきゅうあそうぎきゅうせんきゅうひゃくきゅうじゅうきゅうごうがしゃきゅうせんきゅうひゃくきゅうじゅうきゅうごくきゅうせんきゅうひゃくきゅうじゅうきゅうさいきゅうせんきゅうひゃくきゅうじゅうきゅうせいきゅうせんきゅうひゃくきゅうじゅうきゅうかんきゅうせんきゅうひゃくきゅうじゅうきゅうこうきゅうせんきゅうひゃくきゅうじゅうきゅうじょうきゅうせんきゅうひゃくきゅうじゅうきゅうじょきゅうせんきゅうひゃくきゅうじゅうきゅうがいきゅうせんきゅうひゃくきゅうじゅうきゅうけいきゅうせんきゅうひゃくきゅうじゅうきゅうちょうきゅうせんきゅうひゃくきゅうじゅうきゅうおくきゅうせんきゅうひゃくきゅうじゅうきゅうまんきゅうせんきゅうひゃくきゅうじゅうきゅう")
    end

    it "over digits" do
      expect(1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
               .to_hiragana)
        .to eq(nil)
    end

    it "negative numbers" do
      expect(-1.to_hiragana).to eq("まいなすいち")
      expect(-999999999999.to_hiragana)
        .to eq("まいなすきゅうせんきゅうひゃくきゅうじゅうきゅうおくきゅうせんきゅうひゃくきゅうじゅうきゅうまんきゅうせんきゅうひゃくきゅうじゅうきゅう")
    end
  end

  context "to_katakana" do
    it "1 digit" do
      expect(0.to_katakana).to eq("ゼロ")
      expect(1.to_katakana).to eq("イチ")
      expect(2.to_katakana).to eq("ニ")
      expect(3.to_katakana).to eq("サン")
      expect(4.to_katakana).to eq("ヨン")
      expect(5.to_katakana).to eq("ゴ")
      expect(6.to_katakana).to eq("ロク")
      expect(7.to_katakana).to eq("ナナ")
      expect(8.to_katakana).to eq("ハチ")
      expect(9.to_katakana).to eq("キュウ")
    end

    it "2 digits" do
      expect(10.to_katakana).to eq("ジュウ")
      expect(20.to_katakana).to eq("ニジュウ")
      expect(30.to_katakana).to eq("サンジュウ")
      expect(40.to_katakana).to eq("ヨンジュウ")
      expect(50.to_katakana).to eq("ゴジュウ")
      expect(60.to_katakana).to eq("ロクジュウ")
      expect(70.to_katakana).to eq("ナナジュウ")
      expect(80.to_katakana).to eq("ハチジュウ")
      expect(90.to_katakana).to eq("キュウジュウ")
      expect(11.to_katakana).to eq("ジュウイチ")
      expect(12.to_katakana).to eq("ジュウニ")
      expect(23.to_katakana).to eq("ニジュウサン")
      expect(24.to_katakana).to eq("ニジュウヨン")
      expect(75.to_katakana).to eq("ナナジュウゴ")
      expect(99.to_katakana).to eq("キュウジュウキュウ")
    end

    it "3 digits" do
      expect(100.to_katakana).to eq("ヒャク")
      expect(200.to_katakana).to eq("ニヒャク")
      expect(300.to_katakana).to eq("サンビャク")
      expect(400.to_katakana).to eq("ヨンヒャク")
      expect(500.to_katakana).to eq("ゴヒャク")
      expect(600.to_katakana).to eq("ロッピャク")
      expect(700.to_katakana).to eq("ナナヒャク")
      expect(800.to_katakana).to eq("ハッピャク")
      expect(900.to_katakana).to eq("キュウヒャク")
      expect(101.to_katakana).to eq("ヒャクイチ")
      expect(110.to_katakana).to eq("ヒャクジュウ")
      expect(222.to_katakana).to eq("ニヒャクニジュウニ")
      expect(333.to_katakana).to eq("サンビャクサンジュウサン")
      expect(444.to_katakana).to eq("ヨンヒャクヨンジュウヨン")
      expect(555.to_katakana).to eq("ゴヒャクゴジュウゴ")
      expect(666.to_katakana).to eq("ロッピャクロクジュウロク")
      expect(777.to_katakana).to eq("ナナヒャクナナジュウナナ")
      expect(888.to_katakana).to eq("ハッピャクハチジュウハチ")
      expect(999.to_katakana).to eq("キュウヒャクキュウジュウキュウ")
    end

    it "4 digits" do
      expect(1000.to_katakana).to eq("セン")
      expect(2000.to_katakana).to eq("ニセン")
      expect(3000.to_katakana).to eq("サンゼン")
      expect(4000.to_katakana).to eq("ヨンセン")
      expect(5000.to_katakana).to eq("ゴセン")
      expect(6000.to_katakana).to eq("ロクセン")
      expect(7000.to_katakana).to eq("ナナセン")
      expect(8000.to_katakana).to eq("ハッセン")
      expect(9000.to_katakana).to eq("キュウセン")
      expect(1001.to_katakana).to eq("センイチ")
      expect(1010.to_katakana).to eq("センジュウ")
      expect(1100.to_katakana).to eq("センヒャク")
      expect(1110.to_katakana).to eq("センヒャクジュウ")
      expect(1111.to_katakana).to eq("センヒャクジュウイチ")
      expect(2222.to_katakana).to eq("ニセンニヒャクニジュウニ")
      expect(3333.to_katakana).to eq("サンゼンサンビャクサンジュウサン")
      expect(4444.to_katakana).to eq("ヨンセンヨンヒャクヨンジュウヨン")
      expect(5555.to_katakana).to eq("ゴセンゴヒャクゴジュウゴ")
      expect(6666.to_katakana).to eq("ロクセンロッピャクロクジュウロク")
      expect(7777.to_katakana).to eq("ナナセンナナヒャクナナジュウナナ")
      expect(8888.to_katakana).to eq("ハッセンハッピャクハチジュウハチ")
      expect(9999.to_katakana).to eq("キュウセンキュウヒャクキュウジュウキュウ")
    end

    it "5-8 digits" do
      expect(10_000.to_katakana).to eq("イチマン")
      expect(20_000.to_katakana).to eq("ニマン")
      expect(100_000.to_katakana).to eq("ジュウマン")
      expect(200_000.to_katakana).to eq("ニジュウマン")
      expect(1_000_000.to_katakana).to eq("ヒャクマン")
      expect(2_000_000.to_katakana).to eq("ニヒャクマン")
      expect(10_000_000.to_katakana).to eq("センマン")
      expect(20_000_000.to_katakana).to eq("ニセンマン")
      expect(10_000_001.to_katakana).to eq("センマンイチ")
      expect(10_000_010.to_katakana).to eq("センマンジュウ")
      expect(10_000_100.to_katakana).to eq("センマンヒャク")
      expect(10_001_000.to_katakana).to eq("センマンセン")
      expect(10_010_000.to_katakana).to eq("センイチマン")
      expect(10_100_000.to_katakana).to eq("センジュウマン")
      expect(11_000_000.to_katakana).to eq("センヒャクマン")
      expect(11_111_111.to_katakana).to eq("センヒャクジュウイチマンセンヒャクジュウイチ")
      expect(33_333_333.to_katakana).to eq("サンゼンサンビャクサンジュウサンマンサンゼンサンビャクサンジュウサン")
      expect(66_666_666.to_katakana).to eq("ロクセンロッピャクロクジュウロクマンロクセンロッピャクロクジュウロク")
      expect(88_888_888.to_katakana).to eq("ハッセンハッピャクハチジュウハチマンハッセンハッピャクハチジュウハチ")
    end

    it "9-12 digits" do
      expect(100_000_000.to_katakana).to eq("イチオク")
      expect(200_000_000.to_katakana).to eq("ニオク")
      expect(1_000_000_000.to_katakana).to eq("ジュウオク")
      expect(2_000_000_000.to_katakana).to eq("ニジュウオク")
      expect(10_000_000_000.to_katakana).to eq("ヒャクオク")
      expect(20_000_000_000.to_katakana).to eq("ニヒャクオク")
      expect(100_000_000_000.to_katakana).to eq("センオク")
      expect(200_000_000_000.to_katakana).to eq("ニセンオク")
      expect(100_000_000_001.to_katakana).to eq("センオクイチ")
      expect(100_000_000_010.to_katakana).to eq("センオクジュウ")
      expect(100_000_000_100.to_katakana).to eq("センオクヒャク")
      expect(100_000_001_000.to_katakana).to eq("センオクセン")
      expect(100_000_010_000.to_katakana).to eq("センオクイチマン")
      expect(100_000_100_000.to_katakana).to eq("センオクジュウマン")
      expect(100_001_000_000.to_katakana).to eq("センオクヒャクマン")
      expect(100_010_000_000.to_katakana).to eq("センオクセンマン")
      expect(100_100_000_000.to_katakana).to eq("センイチオク")
      expect(101_000_000_000.to_katakana).to eq("センジュウオク")
      expect(110_000_000_000.to_katakana).to eq("センヒャクオク")
      expect(100_010_001_000.to_katakana).to eq("センオクセンマンセン")
      expect(100_010_001.to_katakana).to eq("イチオクイチマンイチ")
      expect(111_111_111_111.to_katakana).to eq("センヒャクジュウイチオクセンヒャクジュウイチマンセンヒャクジュウイチ")
      expect(333_333_333_333.to_katakana)
        .to eq("サンゼンサンビャクサンジュウサンオクサンゼンサンビャクサンジュウサンマンサンゼンサンビャクサンジュウサン")
      expect(666_666_666_666.to_katakana)
        .to eq("ロクセンロッピャクロクジュウロクオクロクセンロッピャクロクジュウロクマンロクセンロッピャクロクジュウロク")
      expect(888_888_888_888.to_katakana)
        .to eq("ハッセンハッピャクハチジュウハチオクハッセンハッピャクハチジュウハチマンハッセンハッピャクハチジュウハチ")
    end

    it "13-16 digits" do
      expect(1_000_000_000_000.to_katakana).to eq("イッチョウ")
      expect(2_000_000_000_000.to_katakana).to eq("ニチョウ")
      expect(8_000_000_000_000.to_katakana).to eq("ハッチョウ")
      expect(10_000_000_000_000.to_katakana).to eq("ジッチョウ")
      expect(20_000_000_000_000.to_katakana).to eq("ニジッチョウ")
      expect(100_000_000_000_000.to_katakana).to eq("ヒャクチョウ")
      expect(200_000_000_000_000.to_katakana).to eq("ニヒャクチョウ")
      expect(1_000_000_000_000_000.to_katakana).to eq("センチョウ")
      expect(2_000_000_000_000_000.to_katakana).to eq("ニセンチョウ")
      expect(1_111_111_111_111_111.to_katakana)
        .to eq("センヒャクジュウイッチョウセンヒャクジュウイチオクセンヒャクジュウイチマンセンヒャクジュウイチ")
      expect(3_333_333_333_333_333.to_katakana)
        .to eq("サンゼンサンビャクサンジュウサンチョウサンゼンサンビャクサンジュウサンオクサンゼンサンビャクサンジュウサンマンサンゼンサンビャクサンジュウサン")
      expect(6_666_666_666_666_666.to_katakana)
        .to eq("ロクセンロッピャクロクジュウロクチョウロクセンロッピャクロクジュウロクオクロクセンロッピャクロクジュウロクマンロクセンロッピャクロクジュウロク")
      expect(8_888_888_888_888_888.to_katakana)
        .to eq("ハッセンハッピャクハチジュウハッチョウハッセンハッピャクハチジュウハチオクハッセンハッピャクハチジュウハチマンハッセンハッピャクハチジュウハチ")
    end

    it "17 or more digits" do
      expect(100_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000.to_katakana)
        .to eq("イチムリョウタイスウ")
      expect(100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001.to_katakana)
        .to eq("イチムリョウタイスウイチフカシギイチナユタイチアソウギイチゴウガシャイチゴクイッサイイッセイイッカンイッコウイチジョウイチジョイチガイイッケイイッチョウイチオクイチマンイチ")
      expect(200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002.to_katakana)
        .to eq("ニムリョウタイスウニフカシギニナユタニアソウギニゴウガシャニゴクニサイニセイニカンニコウニジョウニジョニガイニケイニチョウニオクニマンニ")
      expect(600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006.to_katakana)
        .to eq("ロクムリョウタイスウロクフカシギロクナユタロクアソウギロクゴウガシャロクゴクロクサイロクセイロッカンロッコウロクジョウロクジョロクガイロッケイロクチョウロクオクロクマンロク")
      expect(800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008.to_katakana)
        .to eq("ハチムリョウタイスウハチフカシギハチナユタハチアソウギハチゴウガシャハチゴクハッサイハッセイハッカンハッコウハチジョウハチジョハチガイハッケイハッチョウハチオクハチマンハチ")
      expect(1_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010.to_katakana)
        .to eq("ジュウムリョウタイスウジュウフカシギジュウナユタジュウアソウギジュウゴウガシャジュウゴクジッサイジッセイジッカンジッコウジュウジョウジュウジョジュウガイジッケイジッチョウジュウオクジュウマンジュウ")
      expect(999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999.to_katakana)
        .to eq("キュウセンキュウヒャクキュウジュウキュウムリョウタイスウキュウセンキュウヒャクキュウジュウキュウフカシギキュウセンキュウヒャクキュウジュウキュウナユタキュウセンキュウヒャクキュウジュウキュウアソウギキュウセンキュウヒャクキュウジュウキュウゴウガシャキュウセンキュウヒャクキュウジュウキュウゴクキュウセンキュウヒャクキュウジュウキュウサイキュウセンキュウヒャクキュウジュウキュウセイキュウセンキュウヒャクキュウジュウキュウカンキュウセンキュウヒャクキュウジュウキュウコウキュウセンキュウヒャクキュウジュウキュウジョウキュウセンキュウヒャクキュウジュウキュウジョキュウセンキュウヒャクキュウジュウキュウガイキュウセンキュウヒャクキュウジュウキュウケイキュウセンキュウヒャクキュウジュウキュウチョウキュウセンキュウヒャクキュウジュウキュウオクキュウセンキュウヒャクキュウジュウキュウマンキュウセンキュウヒャクキュウジュウキュウ")
    end

    it "over digits" do
      expect(1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
               .to_katakana)
        .to eq(nil)
    end

    it "negative numbers" do
      expect(-1.to_katakana).to eq("マイナスイチ")
      expect(-999999999999.to_katakana)
        .to eq("マイナスキュウセンキュウヒャクキュウジュウキュウオクキュウセンキュウヒャクキュウジュウキュウマンキュウセンキュウヒャクキュウジュウキュウ")
    end
  end

  context "to_kanji" do
    it "1 digit" do
      expect(0.to_kanji).to eq("零")
      expect(1.to_kanji).to eq("一")
      expect(2.to_kanji).to eq("二")
      expect(3.to_kanji).to eq("三")
      expect(4.to_kanji).to eq("四")
      expect(5.to_kanji).to eq("五")
      expect(6.to_kanji).to eq("六")
      expect(7.to_kanji).to eq("七")
      expect(8.to_kanji).to eq("八")
      expect(9.to_kanji).to eq("九")
    end

    it "2 digits" do
      expect(10.to_kanji).to eq("十")
      expect(20.to_kanji).to eq("二十")
      expect(30.to_kanji).to eq("三十")
      expect(40.to_kanji).to eq("四十")
      expect(50.to_kanji).to eq("五十")
      expect(60.to_kanji).to eq("六十")
      expect(70.to_kanji).to eq("七十")
      expect(80.to_kanji).to eq("八十")
      expect(90.to_kanji).to eq("九十")
      expect(11.to_kanji).to eq("十一")
      expect(12.to_kanji).to eq("十二")
      expect(23.to_kanji).to eq("二十三")
      expect(24.to_kanji).to eq("二十四")
      expect(75.to_kanji).to eq("七十五")
      expect(99.to_kanji).to eq("九十九")
    end

    it "3 digits" do
      expect(100.to_kanji).to eq("百")
      expect(200.to_kanji).to eq("二百")
      expect(300.to_kanji).to eq("三百")
      expect(400.to_kanji).to eq("四百")
      expect(500.to_kanji).to eq("五百")
      expect(600.to_kanji).to eq("六百")
      expect(700.to_kanji).to eq("七百")
      expect(800.to_kanji).to eq("八百")
      expect(900.to_kanji).to eq("九百")
      expect(101.to_kanji).to eq("百一")
      expect(110.to_kanji).to eq("百十")
      expect(222.to_kanji).to eq("二百二十二")
      expect(333.to_kanji).to eq("三百三十三")
      expect(444.to_kanji).to eq("四百四十四")
      expect(555.to_kanji).to eq("五百五十五")
      expect(666.to_kanji).to eq("六百六十六")
      expect(777.to_kanji).to eq("七百七十七")
      expect(888.to_kanji).to eq("八百八十八")
      expect(999.to_kanji).to eq("九百九十九")
    end

    it "4 digits" do
      expect(1000.to_kanji).to eq("千")
      expect(2000.to_kanji).to eq("二千")
      expect(3000.to_kanji).to eq("三千")
      expect(4000.to_kanji).to eq("四千")
      expect(5000.to_kanji).to eq("五千")
      expect(6000.to_kanji).to eq("六千")
      expect(7000.to_kanji).to eq("七千")
      expect(8000.to_kanji).to eq("八千")
      expect(9000.to_kanji).to eq("九千")
      expect(1001.to_kanji).to eq("千一")
      expect(1010.to_kanji).to eq("千十")
      expect(1100.to_kanji).to eq("千百")
      expect(1110.to_kanji).to eq("千百十")
      expect(1111.to_kanji).to eq("千百十一")
      expect(2222.to_kanji).to eq("二千二百二十二")
      expect(3333.to_kanji).to eq("三千三百三十三")
      expect(4444.to_kanji).to eq("四千四百四十四")
      expect(5555.to_kanji).to eq("五千五百五十五")
      expect(6666.to_kanji).to eq("六千六百六十六")
      expect(7777.to_kanji).to eq("七千七百七十七")
      expect(8888.to_kanji).to eq("八千八百八十八")
      expect(9999.to_kanji).to eq("九千九百九十九")
    end

    it "5-8 digits" do
      expect(10_000.to_kanji).to eq("一万")
      expect(20_000.to_kanji).to eq("二万")
      expect(100_000.to_kanji).to eq("十万")
      expect(200_000.to_kanji).to eq("二十万")
      expect(1_000_000.to_kanji).to eq("百万")
      expect(2_000_000.to_kanji).to eq("二百万")
      expect(10_000_000.to_kanji).to eq("千万")
      expect(20_000_000.to_kanji).to eq("二千万")
      expect(10_000_001.to_kanji).to eq("千万一")
      expect(10_000_010.to_kanji).to eq("千万十")
      expect(10_000_100.to_kanji).to eq("千万百")
      expect(10_001_000.to_kanji).to eq("千万千")
      expect(10_010_000.to_kanji).to eq("千一万")
      expect(10_100_000.to_kanji).to eq("千十万")
      expect(11_000_000.to_kanji).to eq("千百万")
      expect(11_111_111.to_kanji).to eq("千百十一万千百十一")
      expect(33_333_333.to_kanji).to eq("三千三百三十三万三千三百三十三")
      expect(66_666_666.to_kanji).to eq("六千六百六十六万六千六百六十六")
      expect(88_888_888.to_kanji).to eq("八千八百八十八万八千八百八十八")
    end

    it "9-12 digits" do
      expect(100_000_000.to_kanji).to eq("一億")
      expect(200_000_000.to_kanji).to eq("二億")
      expect(1_000_000_000.to_kanji).to eq("十億")
      expect(2_000_000_000.to_kanji).to eq("二十億")
      expect(10_000_000_000.to_kanji).to eq("百億")
      expect(20_000_000_000.to_kanji).to eq("二百億")
      expect(100_000_000_000.to_kanji).to eq("千億")
      expect(200_000_000_000.to_kanji).to eq("二千億")
      expect(100_000_000_001.to_kanji).to eq("千億一")
      expect(100_000_000_010.to_kanji).to eq("千億十")
      expect(100_000_000_100.to_kanji).to eq("千億百")
      expect(100_000_001_000.to_kanji).to eq("千億千")
      expect(100_000_010_000.to_kanji).to eq("千億一万")
      expect(100_000_100_000.to_kanji).to eq("千億十万")
      expect(100_001_000_000.to_kanji).to eq("千億百万")
      expect(100_010_000_000.to_kanji).to eq("千億千万")
      expect(100_100_000_000.to_kanji).to eq("千一億")
      expect(101_000_000_000.to_kanji).to eq("千十億")
      expect(110_000_000_000.to_kanji).to eq("千百億")
      expect(100_010_001_000.to_kanji).to eq("千億千万千")
      expect(100_010_001.to_kanji).to eq("一億一万一")
      expect(111_111_111_111.to_kanji).to eq("千百十一億千百十一万千百十一")
      expect(333_333_333_333.to_kanji)
        .to eq("三千三百三十三億三千三百三十三万三千三百三十三")
      expect(666_666_666_666.to_kanji)
        .to eq("六千六百六十六億六千六百六十六万六千六百六十六")
      expect(888_888_888_888.to_kanji)
        .to eq("八千八百八十八億八千八百八十八万八千八百八十八")
    end

    it "13-16 digits" do
      expect(1_000_000_000_000.to_kanji).to eq("一兆")
      expect(2_000_000_000_000.to_kanji).to eq("二兆")
      expect(8_000_000_000_000.to_kanji).to eq("八兆")
      expect(10_000_000_000_000.to_kanji).to eq("十兆")
      expect(20_000_000_000_000.to_kanji).to eq("二十兆")
      expect(100_000_000_000_000.to_kanji).to eq("百兆")
      expect(200_000_000_000_000.to_kanji).to eq("二百兆")
      expect(1_000_000_000_000_000.to_kanji).to eq("千兆")
      expect(2_000_000_000_000_000.to_kanji).to eq("二千兆")
      expect(1_111_111_111_111_111.to_kanji)
        .to eq("千百十一兆千百十一億千百十一万千百十一")
      expect(3_333_333_333_333_333.to_kanji)
        .to eq("三千三百三十三兆三千三百三十三億三千三百三十三万三千三百三十三")
      expect(6_666_666_666_666_666.to_kanji)
        .to eq("六千六百六十六兆六千六百六十六億六千六百六十六万六千六百六十六")
      expect(8_888_888_888_888_888.to_kanji)
        .to eq("八千八百八十八兆八千八百八十八億八千八百八十八万八千八百八十八")
    end

    it "17 or more digits" do
      expect(100_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000.to_kanji)
        .to eq("一無量大数")
      expect(100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001.to_kanji)
        .to eq("一無量大数一不可思議一那由他一阿僧祇一恒河沙一極一載一正一澗一溝一穰一秭一垓一京一兆一億一万一")
      expect(200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002_000_200_020_002.to_kanji)
        .to eq("二無量大数二不可思議二那由他二阿僧祇二恒河沙二極二載二正二澗二溝二穰二秭二垓二京二兆二億二万二")
      expect(600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006_000_600_060_006.to_kanji)
        .to eq("六無量大数六不可思議六那由他六阿僧祇六恒河沙六極六載六正六澗六溝六穰六秭六垓六京六兆六億六万六")
      expect(800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008_000_800_080_008.to_kanji)
        .to eq("八無量大数八不可思議八那由他八阿僧祇八恒河沙八極八載八正八澗八溝八穰八秭八垓八京八兆八億八万八")
      expect(1_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010_001_000_100_010.to_kanji)
        .to eq("十無量大数十不可思議十那由他十阿僧祇十恒河沙十極十載十正十澗十溝十穰十秭十垓十京十兆十億十万十")
      expect(999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999.to_kanji)
        .to eq("九千九百九十九無量大数九千九百九十九不可思議九千九百九十九那由他九千九百九十九阿僧祇九千九百九十九恒河沙九千九百九十九極九千九百九十九載九千九百九十九正九千九百九十九澗九千九百九十九溝九千九百九十九穰九千九百九十九秭九千九百九十九垓九千九百九十九京九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九")
    end

    it "over digits" do
      expect(1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000.to_kanji).to eq(nil)
    end

    it "negative numbers" do
      expect(-1.to_kanji).to eq("マイナス一")
      expect(-999999999999.to_kanji)
        .to eq("マイナス九千九百九十九億九千九百九十九万九千九百九十九")
    end
  end
end