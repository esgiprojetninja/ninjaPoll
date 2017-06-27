require 'test_helper'

class PollQuestionTest < ActiveSupport::TestCase
    def setup
        @pq = PollQuestion.new()
    end

    test "should set type" do
        @pq.text!
        assert @pq.text?
        assert_not @pq.int?
        assert_not @pq.range?

        @pq.int!
        assert @pq.int?
        assert_not @pq.text?
        assert_not @pq.range?
    end

    test "should not be valid" do
        assert_not @pq.valid?
    end

    test "should be valid" do
        @pq.text!
        assert @pq.valid?
    end
end
