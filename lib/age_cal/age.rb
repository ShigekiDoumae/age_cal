class Age
  attr_accessor :age, :target_date, :standard_date
  def initialize(values = {})
    values.each do |k, v|
      self.send("#{k}=", v)
    end
    self.age = cal_age if self.target_date.present? && self.standard_date.present?
    return self
  end

  private
    def cal_age
      self.age = (self.standard_date.to_time.strftime("%Y%m%d").to_i - self.target_date.to_time.strftime("%Y%m%d").to_i) / 10000
    end
end
