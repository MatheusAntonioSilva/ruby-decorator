require_relative "basic_cannon"
require_relative "laser_cannon"
require_relative "plasma_cannon"
class WeaponDecoration


  def initialize
    @basic_cannon = BasicCannon.new(0)
    @laser_cannon = LaserCannon.new(0)
    @plasma_cannon = PlasmaCannon.new(0)
    @array_decoration = [basic_cannon: 0, laser_cannon: 0, plasma_cannon: 0]
  end

  def newLevel(cont)
    if cont <= 3
      @basic_cannon.setLevel(cont)
      setWeaponDecoration('basic_cannon', @basic_cannon.getLevel)
      else if cont <= 6
        @basic_cannon.setLevel(cont)
        setWeaponDecoration('laser_cannon', @laser_cannon.getLevel)
      else
        @basic_cannon.setLevel(cont)
        setWeaponDecoration('plasma_cannon', @plasma_cannon.getLevel)
      end
    end
  end

  def setArrayDecoration(array_decoration)
    @array_decoration = array_decoration
  end

  def setWeaponDecoration(wapon, level)
    @array_decoration[0][wapon.to_sym] = level
  end

  def getWeaponDecoration
    @array_decoration
  end
end