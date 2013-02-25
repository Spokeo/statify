# require 'spec_helper'

# describe DummyController do
#   # Note the controller is empty so we are assured that the statsd this is calling is indeed the controller ones
#   it "should receive timing" do
#     Statify.statsd.should_receive(:timing).with(any_args()).at_least(3).times
#     get :index
#   end
# end