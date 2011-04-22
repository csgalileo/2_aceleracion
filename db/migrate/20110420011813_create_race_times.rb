class CreateRaceTimes < ActiveRecord::Migration
  def self.up
    create_table :race_times, :primary_key => :id, :options => "auto_increment =1" do |t|
      t.integer :id
      t.integer :user_id , :null => false
      t.integer :car_id , :null => false
      t.float :time , :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :race_times
  end
end
