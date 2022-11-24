require 'test_helper'

class UserTest < ActiveSupport::TestCase

    test "should not save Category without name" do
        category = Category.new
        category.type = "Random Category"
        assert_not category.save, "Saved the Category without a name"
    end

    test "should not save Task with less than 5 characters" do
        category = Category.new
        category.name = "Werns"
        assert_not category.save, "Saved the task with less than 5 characters"
    end
end

