class TrainerProfile < ApplicationRecord
  belongs_to :trainer
  has_one_attached :avatar

  
  # Virtual attributes
  def full_name
    [self.first_name, self.last_name].join(' ')
  end
  
end
