class Person < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name, presence: true
  validates :country_id, presence: true
  validates :city_id, presence: true
  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false }
  validates_confirmation_of :email, message: 'Email should match confirmation'

  belongs_to :country
  belongs_to :city
end
