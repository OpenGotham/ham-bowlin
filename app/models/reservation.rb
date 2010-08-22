class Reservation < ActiveRecord::Base
  validates_presence_of :lane
  validates_presence_of :patron
  belongs_to :lane
  belongs_to :patron
end
