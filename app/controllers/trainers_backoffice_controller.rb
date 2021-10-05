class TrainersBackofficeController < ApplicationController
  before_action :authenticate_trainer!
  before_action :build_profile
  layout 'trainers_backoffice'

  private

  def build_profile
    current_trainer.build_trainer_profile if current_trainer.trainer_profile.blank?
  end
end
