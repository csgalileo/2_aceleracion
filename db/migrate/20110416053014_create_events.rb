class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events, :primary_key => :id, :options => "auto_increment =1" do |t|
      t.integer :id
      t.text :lugar
      t.datetime :fecha
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
