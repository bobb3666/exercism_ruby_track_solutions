# class Alphametics
#   puzzle = "L + BB == LKK"
#   def self.solve(puzzle)
#     puzzle = puzzle.gsub(/\s+/, "") #strip all spaces
#     puzzle_array = puzzle.split("==")
#     puzzle_adds = puzzle_array[0].split("+")
#     puzzle_solution = puzzle_array[1]
#     letters_used = puzzle.scan(/[a-z]/i).uniq
#     my_dict = {}
#     try = rand(10)

#     #create translation iteration
#     my_loop = Proc.new { 
#       letters_used.each do |letter|
#         if my_dict.has_value?(try)
#           my_dict[letter] = rand(10)
#         else
#           my_dict[letter] = try
#         end
#       end
#     }
   
#     my_loop.call
    
#     answered = false
#     temp_str = ""
#     number_adds = []
#     number_solution = []
#     while answered == false
#       puzzle_adds.each do |x|
#         x.each_char do |char|
#           temp_str += my_dict[x].to_s
#           number_adds.append(temp_str.to_i)
#           temp_str = ""
#         end
#       end
#       puzzle_solution.each_char do |char|
#         temp_str += my_dict[char].to_s
#         number_solution.append(temp_str.to_i)
#         temp_str = ""
#       end

#       if number_adds.inject(0, &:+) == number_solution
#         answered = true
#       else
#         my_loop.call
#       end
    
      
#     end
#     return my_dict
#   end
# end