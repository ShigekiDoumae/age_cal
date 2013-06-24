require "age_cal/version"
require "age_cal/age.rb"

module AgeCal
  # Your code goes here...
  def age(standard_date=DateTime.now)
    self.to_age.age
  end

  def to_age(standard_date=DateTime.now)
    Age.new(:target_date=>self, :standard_date=>standard_date)
  end
end

class DateTime; include AgeCal; end
class Date; include AgeCal; end
class Time; include AgeCal; end
class String; include AgeCal; end

