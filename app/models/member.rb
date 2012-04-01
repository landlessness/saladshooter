class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :status, :photo
  has_many :checkins
  has_attached_file :photo,
                    styles: {large: '600x600>', medium: '300x300>', small: '150x150>', thumb: '50x50>'}

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
