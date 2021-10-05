class TrainersBackoffice::ProfileController < TrainersBackofficeController
  before_action :verify_password, only: [:update]
  before_action :set_trainer
  
  def edit
    @trainer.build_trainer_profile if @trainer.trainer_profile.blank?
  end

  def update
    if @trainer.update(trainer_params)
      bypass_sign_in(@trainer)
      unless trainer_params[:trainer_profile_attributes][:avatar]
        redirect_to trainers_backoffice_profile_path, notice: 'Treinador atualizado com sucesso!'
      end
    else
      render :edit
    end
  end

  private

  def set_trainer
    @trainer = Trainer.find(current_trainer.id)
  end

  def trainer_params
    params.require(:trainer).permit(:email, :password, :password_confirmation, trainer_profile_attributes: [:id, :first_name, :last_name, :age, :gender, :birthdate, :avatar])
  end

  def verify_password
    if params[:trainer][:password].blank? && params[:trainer][:password_confirmation].blank?
      params[:trainer].extract!(:password, :password_confirmation)
    end
  end
end
