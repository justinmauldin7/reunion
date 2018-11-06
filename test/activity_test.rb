require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  def test_an_activity_exist
    activity = Activity.new("Brunch")
    assert_instance_of Activity, activity
  end

  def test_an_activity_has_a_name
    activity = Activity.new("Brunch")
    assert_equal "Brunch", activity.name
  end
end
