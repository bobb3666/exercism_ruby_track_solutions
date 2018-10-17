class Year
	attr_reader :year

	def initialize(year)
		@year = year
	end

	def r.self.leap?(year)
		year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
	end
end
