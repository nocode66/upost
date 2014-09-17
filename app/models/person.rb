class Person < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false }
  validates_confirmation_of :email, message: 'should match confirmation'

  belongs_to :country
  belongs_to :city
end
