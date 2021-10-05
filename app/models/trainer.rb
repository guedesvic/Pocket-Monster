class Trainer < ApplicationRecord 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_one :trainer_profile
accepts_nested_attributes_for :trainer_profile, reject_if: :all_blank
has_many :teams
  
end
