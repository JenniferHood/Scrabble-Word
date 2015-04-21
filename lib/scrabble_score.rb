class String
  define_method(:scrabble) do
    scrabble_dict = {['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'] => 1,
      ['d', 'g'] => 2, ['b','c','m','p'] => 3, ['f','h','v','w','y'] => 4,
      ['k'] => 5, ['j', 'x'] => 8, ['q','z'] =>10}
    total_score = 0
    first_letter = self[0]
    second_letter = self[1]
    scrabble_dict.each() do |letters, score|
        if letters.include?(first_letter)
          total_score = total_score + score
        end
    end
    scrabble_dict.each() do |letters, score|
      if letters.include?(second_letter)
        total_score = total_score + score
      end
    end
    total_score
  end
end
