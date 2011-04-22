class CreateUsers < ActiveRecord::Migration
  def self.up

   create_table :users, :primary_key => :id, :options => "auto_increment = 1" do |t|
      t.integer :id
      t.text :nick
      t.text :name
      t.text :email
      t.boolean :blocked
      t.integer :role
      t.timestamps
  end
end
  def self.down
    drop_table :users
  end
end
