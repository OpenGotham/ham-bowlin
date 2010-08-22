Given /^there are lanes$/ do
   lane1 = Lane.new
end

Given /^there are( not)? outstanding reservations$/ do |negation|
  Reservation.count == 0
end

When /^a Patron makes a reservation$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^there is one reservation$/ do
  pending # express the regexp above with the code you wish you had
end
