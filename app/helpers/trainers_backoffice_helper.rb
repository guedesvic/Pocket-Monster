module TrainersBackofficeHelper
  
  def avatar_url
    avatar = current_trainer.trainer_profile.avatar
    avatar.attached? ? avatar : 'img.jpg'
  end
end
