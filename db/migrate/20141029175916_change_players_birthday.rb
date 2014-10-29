class ChangePlayersBirthday < ActiveRecord::Migration
  def up
  	change_table :players do |t|
  	  t.change :birthday, :date
  	end
  end

  def down
  	change_table :players do |t|
  	  t.change :birthday, :datetime
  	end
  end
end
