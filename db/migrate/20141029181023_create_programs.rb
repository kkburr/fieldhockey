class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :grade
      t.string :type
      t.string :dates
      t.string :times
      t.string :venue
      t.string :county
      t.string :coach

      t.timestamps
    end
  end
end
