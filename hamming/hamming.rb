class Hamming

	def self.compute(seq1, seq2)
    raise ArgumentError.new("Sequences are not of equal length.") unless seq1.length == seq2.length
       
    differences = 0    
    seq1.length.times do |i|
      if seq1[i] != seq2[i]
        differences += 1
      end
    end

    return differences
	end
end


