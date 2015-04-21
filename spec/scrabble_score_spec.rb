require('rspec')
require('scrabble_score')


describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a two letter word") do
    expect("be".scrabble()).to(eq(4))
  end

  it("returns a scrabble score for a word of any length") do
    expect("spring".scrabble()).to(eq(9))
  end

  it("returns a scrabble score for a word containing uppercase letters") do
    expect("SPring".scrabble()).to(eq(9))
  end
end
