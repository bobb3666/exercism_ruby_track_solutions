class Alphametics
  def self.solve(equation)
    equation.gsub!('^', '**')
    letters = equation.scan(/[A-Z]/).uniq

    (0..9).to_a.permutation(letters.count).each do |digits|
      map = Hash[*(letters.zip(digits).flatten)]

      substitued = equation.gsub(/[A-Z]/, map)
      next if substitued.match(/(\s|\A)0/)

      return map if class_eval(substitued)
    end
  end
end