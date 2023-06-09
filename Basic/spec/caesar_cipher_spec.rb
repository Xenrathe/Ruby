require './lib/Caesar_cipher'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it "Encodes a phrase 3 to the right" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("I have the enemy spy!", 3)).to eql("L kdyh wkh hqhpb vsb!")
    end

    it "Encodes a phrase 3 to the left" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("Tell me, fool, art thou but a creature of the mind?", -3)).to eql("Qbii jb, clli, xoq qelr yrq x zobxqrob lc qeb jfka?")
    end

    it "Encodes a phrase 376 to the right, properly wrapping around" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("Is LEGEND the DOG of DOGS?!", 376)).to eql("Ue XQSQZP ftq PAS ar PASE?!")
    end

    it "Encodes a phrase 152 to the left and does not change numbers" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("Legend is a top 10 dog. In fact, he is #1.", -152)).to eql("Pikirh mw e xst 10 hsk. Mr jegx, li mw #1.")
    end
  end
end
