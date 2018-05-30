require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants:{'Angi' => 10, 'John' => 30} })
    assert_instance_of Activity, activity
  end

  def test_participants
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants: {'Angi' => 10, 'John' => 30} })
    assert_equal ({'Angi' => 10, 'John' => 30}), activity.participants
  end

  def test_add_participants
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants:{'Angi' => 10, 'John' => 30} })
    expected = activity.add_participants({'Angi' => 10, 'John' => 30})
    assert_equal ({'Angi' => 10, 'John' => 30}), expected
  end

  def test_total_cost_of_activity
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants:{'Angi' => 10, 'John' => 30} })
    expected = activity.total_cost_of_activity
    assert_equal 30, expected
  end

  def test_total_owed
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants:{'Angi' => 10, 'John' => 30} })
    expected = activity.total_owed
    assert_equal [20, 0], expected
  end




end
