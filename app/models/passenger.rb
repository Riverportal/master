class Passenger < ActiveRecord::Base
  validates :name, presence: {
                   message: 'is required' }
end
