class FlattenArray

	def self.flatten(array)
		array.each do |e|
			unless e.nil?
				if e.is_a?(Array)
					a.concat(flatten(e))
				else
					a.push(e)
				end
			end
		end
	end

end
