class BeerSong

  def self.pluralize(n, singular)
    if n == 1
      "1 #{singular}"
    else
      "#{n} #{singular}s"
    end
  end
  
  def self.recite(num_beers, verses)
    bottles = num_beers
    str = ""
    verses.times do
      if bottles == 0
        str += "0 bottles of beer on the wall. 0 bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
      else
        str += "#{pluralize(bottles, "bottle")} of beer on the wall. #{pluralize(bottles, "bottle")} of beer.\nTake one down and pass it around, #{pluralize((bottles-1), "bottle")} of beer on the wall.\n\n" 
      end
      bottles = (bottles -1)
    end
    return str
  end
end