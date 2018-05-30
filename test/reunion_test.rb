require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'

class ReunionTest < Minitest::Test
  def test_it_exists
    reunion = Reunion.new("Stonehedge")
    assert_instance_of Reunion, reunion
  end

  def test_has_activities
    reunion = Reunion.new("Stonehedge")
    activity = Activity.new({activity_name: 'snake_hunting', base_cost: 10, cost_per_participant: 20, participants:{'Angi' => 10, 'John' => 30} })
    expected = reunion.has_activities('snake_hunting')
    assert_equal ('snake_hunting'), expected
    expected = reunion.adds_activities('glass_blowing')
    assert_equal ['glass_blowing'], expected
  end

end
