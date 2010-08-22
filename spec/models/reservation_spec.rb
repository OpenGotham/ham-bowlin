require 'spec_helper'

describe "reservation" do
  it "should have a lane" do
    r = Reservation.new
    r.should be_invalid
    r.should have_at_least(1).errors_on(:lane)
  end
  
  it "should have a patron" do
    r = Reservation.new
    r.should be_invalid
    r.should have_at_least(1).errors_on(:patron)
  end
end