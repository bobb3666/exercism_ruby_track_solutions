class SpaceAge

  earth_year = 31557600
  rob_age = 941107069

  def initialize(age)
    @age = age
  end

  def on_earth
    space_age = @age / 31557600.0
    return space_age.round(2)
  end

  def on_mercury
    space_age = on_earth / 0.2408467
    return space_age.round(2)
  end

  def on_venus
    space_age = on_earth / 0.61519726
    return space_age.round(2)
  end

  def on_mars
    space_age = on_earth / 1.8808158
    return space_age.round(2)
  end

  def on_jupiter
    space_age = on_earth / 11.862615
    return space_age.round(2)
  end

  def on_saturn
    space_age = on_earth / 29.447498
    return space_age.round(2)
  end

  def on_uranus
    space_age = on_earth / 84.016846
    return space_age.round(2)
  end

  def on_neptune
    space_age = on_earth / 164.79132
    return space_age.round(2)
  end
end