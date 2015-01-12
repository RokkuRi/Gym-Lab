class Product < ActiveRecord::Base
  brothers = ["dario", "damjan"]

#  has_one :manufacturer
  has_many :suppliers

#  validates_associated :manufacturer
  validates :name, confirmation: true,
                   presence:true
  validates :name_confirmation, presence: true
  validates :price, presence: true
  validates :terms_of_service, acceptance: true
  validates :in_store, acceptance: { accept: true }

  # Exclusion
  validates :name, exclusion: { within: brothers,
                                message: " can't be a product." }

  # Format
  # created using RegExp
  
  # Inclusion
  validates :price, inclusion: { in: (1..10),
                                 message: " is not in a price range." }

  # Length
  validates :name, length: { minimum: 5 }
end
