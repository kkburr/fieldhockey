class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :usfha_number
      t.string :school
      t.integer :grade
      t.datetime :birthday
      t.string :allergies

      t.timestamps
    end
  end
end
