class CreateTrainerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.date :birthdate
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end
