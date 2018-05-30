
require './lib/activity'
class Reunion

  def initialize(location)
    @location = location
    @reunion = []
  end

  def has_activities(activity_type)
    activity_type
  end

  def adds_activities(activity_type)
    @reunion << activity_type
  end


end
