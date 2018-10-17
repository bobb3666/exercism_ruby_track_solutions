class Complement

  def self.of_dna(seq)
    seq.tr('GCTA', 'CGAU')
  end
end