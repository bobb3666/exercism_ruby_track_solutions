#someone elses solution, can't remember who
  def self.solve(puzzle)
    # change math sign ^ to ** for ruby
    puzzle.gsub!('^', '**')
    # get the unique letters used in puzzle
    letters = puzzle.scan(/[[:alpha:]]/).uniq

    #create permutations of digits for amount of unique letters
    (0..9).to_a.permutation(letters.count).each do |digits|
      #create hash of letter digit combinations and flattens into one array
      map = Hash[*(letters.zip(digits).flatten)]

      #substitute the given map permutation into the puzzle
      substituted = puzzle.gsub(/[A-Z]/, map)

      #skips to next iteration of loop if substituted
      #puzzle has whitespace or A? followed by a 0
      next if substituted.match(/(\s|\A)0/)

      # returns the map if the evalution of the string is true
      return map if class_eval(substituted)
    end
  end
end
