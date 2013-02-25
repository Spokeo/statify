require 'spec_helper'
describe 'cache notification' do
  before :each do
    ActiveSupport::Cache::Store.instrument = true
    ActiveSupport::Cache::NullStore.instrument = true
  end

  it "should call cache miss" do
    Statify.statsd.should_receive(:increment).with('cache_miss', 1).once()

    Rails.cache.fetch("austin_lives_in_yo_specs") do
      "YOLO"
    end
  end

  it "should call cache hit" do
    Rails.cache.write("austin_lives_in_yo_specs", 'YOLO')
    Statify.statsd.should_receive(:increment).with('cache_hit', 1).once()

    Rails.cache.fetch("austin_lives_in_yo_specs") do
      "YOLO"
    end
  end
end