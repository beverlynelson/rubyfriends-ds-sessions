class PhoneNumber < ActiveRecord::Base
  belongs_to :person

  validates :number, :person_id, presence: true
end
