require 'test_helper'

class TruckTest < ActiveSupport::TestCase

test "can save without a gps point" do 
t=Truck.new
t.identifier="testtrucvk"
assert t.save, "the truck don't need a gps to can save"

end
test "can't save a truck without a identifier" do
t=Truck.new
assert_not t.save, "you can't save a truck without a identifier"
end


  end
