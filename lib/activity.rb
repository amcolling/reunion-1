require 'pry'
class Activity
  attr_reader :name,
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




end
