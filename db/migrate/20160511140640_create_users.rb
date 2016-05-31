class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :date_of_birth
      t.string :place_of_birth
      t.string :favorite_sport
      t.string :favorite_music

      t.timestamps null: false
    end
  end
end
