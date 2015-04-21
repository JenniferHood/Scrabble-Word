class String
  define_method(:scrabble) do
    scrabble_dict = {['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'] => 1,
      ['d', 'g'] => 2, ['b','c','m','p'] => 3, ['f','h','v','w','y'] => 4,
      ['k'] => 5, ['j', 'x'] => 8, ['q','z'] =>10}
    total_score = 0
    self.split('').each() do |letter|
      scrabble_dict.each() do |letters, score|
        if letters.include?(letter)
          total_score = total_score + score
        end
      end
    end
    total_score
  end
end
