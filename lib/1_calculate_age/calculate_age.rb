class CalculateAge
  def self.calculate(age_at_birth, age_at_death)
    # Write your code here
    return unless age_at_birth && age_at_death

    day_diff = age_at_death.day - age_at_birth.day
    month_diff = age_at_death.month - age_at_birth.month - (day_diff < 0 ? 1 : 0)
    age = age_at_death.year - age_at_birth.year - (month_diff < 0 ? 1 : 0)

    age
  end
end
