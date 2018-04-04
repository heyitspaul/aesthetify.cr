require "./spec_helper"

DATA1 = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
DATA2 = "The quick brown fox jumps over the lazy dog."

AESTHETIFY1 = " ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［］＾＿｀ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ｛｜｝～"
AESTHETIFY2 = "ＴＨＥ ＱＵＩＣＫ ＢＲＯＷＮ ＦＯＸ ＪＵＭＰＳ ＯＶＥＲ ＴＨＥ ＬＡＺＹ ＤＯＧ．"

FULLWIDTH1 = " ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［］＾＿｀ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝～"
FULLWIDTH2 = "Ｔｈｅ ｑｕｉｃｋ ｂｒｏｗｎ ｆｏｘ ｊｕｍｐｓ ｏｖｅｒ ｔｈｅ ｌａｚｙ ｄｏｇ．"

describe "String" do

  describe "#aesthetify" do
    it "mutates the string" do
      AESTHETIFY1.should eq DATA1.aesthetify
      AESTHETIFY2.should eq DATA2.aesthetify
    end
  end

  describe "#fullwidth" do
    it "mutates the string" do
      FULLWIDTH1.should eq DATA1.fullwidth
      FULLWIDTH2.should eq DATA2.fullwidth
    end
  end
end
