class Customer < ApplicationRecord
  # this was before Part 3
  # validates :full_name, presence: true

  validates_presence_of :full_name, :phone_number

  # validates_length_of :phone_number, :is => 12

  validates_uniqueness_of :email, :case_sensitive => false, :allow_blank => true

  belongs_to :province
end
