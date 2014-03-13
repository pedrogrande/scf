class User < ActiveRecord::Base
  rolify
  has_many :consultations
  has_many :enquiries
  has_many :event_registrations
  has_many :events, through: :event_registrations
  has_many :posts
  has_many :testimonials
  has_one :user_profile
  has_many :event_registrations
  has_many :events, through: :event_registrations
  has_many :interactions
  has_many :programmes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
