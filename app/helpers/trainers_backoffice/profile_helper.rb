module TrainersBackoffice::ProfileHelper
  def gender_select(trainer, current_gender)
    trainer.trainer_profile.gender == 'M' ? 'btn-primary' : 'btn-default'
  end
end
