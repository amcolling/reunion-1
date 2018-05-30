require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new({activity_name: 'noodling', base_cost: 10, cost_per_participant: 20, participants:{name: 'Angi',cost: '20'} })
    assert_instance_of Activity, activity
  end

  def test_participants
    activity = Activity.new({activity_name: 'noodling', base_cost: 10, cost_per_participant: 20, participants:{name: 'Angi',cost: '20'} })
    assert_equal ({:name=>"Angi", :cost=>"20"}), activity.participants
  end

  def test_add_participants
    activity = Activity.new({activity_name: 'noodling', base_cost: 10, cost_per_participant: 20, participants:{name: 'Angi',cost: '20'} })
    expected = activity.add_participants({name: 'Angi',cost: '20'})
    assert_equal ({:name=>"Angi", :cost=>"20"}), expected
  end

  def test_total_cost_of_activity
    activity = Activity.new({activity_name: 'noodling', base_cost: 10, cost_per_participant: 20, participants:{name: 'Angi',cost: '20'} })
    expected = activity.total_cost_of_activity
    assert_equal 30, expected
  end




end
