class Activity
  attr_reader :activity_name,
              :base_cost,
              :cost_per_participant,
              :participants


  def initialize(attributes)
    @activity_name = attributes[:activity_name]
    @base_cost = attributes[:base_cost]
    @cost_per_participant = attributes[:cost_per_participant]
    @participants = attributes[:participants]
  end

  def add_participants(customers)
    customers
  end

  def total_cost_of_activity
    @base_cost + @cost_per_participant
  end

  def total_owed
    owed = @participants.map do |participant|
      total_cost_of_activity - participant[1]
    end
    owed
  end





end
