require 'pry'
require 'scrabble'

describe ("Scrabble#score") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns 1 for the letters A, E, I, O, U, L, N, R, S, T") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns 2 for the letters D and G") do
    expect("d".scrabble()).to(eq(2))
  end
  it("returns 3 for the letters B, C, M, and P") do
    expect("b".scrabble()).to(eq(3))
  end
  it("returns 4 for the letters F, H, V, W, Y") do
    expect("f".scrabble()).to(eq(4))
  end
  it("returns 5 for the letter K") do
    expect("k".scrabble()).to(eq(5))
  end
  it("returns 8 for the letters J and X") do
    expect("j".scrabble()).to(eq(8))
  end
  it("returns 10 for the letters Q and Z") do
    expect("q".scrabble()).to(eq(10))
  end
