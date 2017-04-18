class Scrabble
  def score_word(word)
    word.split('').map do |char|
      score = {
        ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"] => 1,
        ['D', 'G'] => 2,
        ['B', 'C', 'M', 'P'] => 3,
        ['F', 'H', 'V', 'W', 'Y'] => 4,
        ['K'] => 5,
        ['J', 'X'] => 8,
        ['Q', 'Z'] => 10
      }
      score.select {|key| key.include?(char.upcase)}.values[0]
    end.reduce(&:+)
  end
end
