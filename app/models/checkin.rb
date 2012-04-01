class Checkin < ActiveRecord::Base
  attr_accessible :member, :checkinable
  belongs_to :member
  belongs_to :checkinable, polymorphic: true
end
