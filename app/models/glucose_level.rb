class GlucoseLevel < ApplicationRecord
  belongs_to :user
  validates_presence_of :g_level, message:'Level is Mandatory'
  validate :levels_quota, :on => :create

  def self.today
    where(:created_at => (Time.zone.now.beginning_of_day..Time.zone.now))
  end


  private
  def levels_quota

    if user
      if user.glucose_levels.today.count >= 4
        errors.add(:base, "Exceeds daily limit")
      end
    end
  end
end
