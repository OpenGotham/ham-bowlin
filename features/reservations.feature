Feature: Manage Reservation
In order to drink  I want to make my test pass

Scenario: All lanes are available
  Given there are lanes
  And there are not outstanding reservations
  When a Patron makes a reservation
  Then there is one reservation

  