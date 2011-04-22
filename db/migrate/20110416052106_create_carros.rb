class CreateCarros < ActiveRecord::Migration
  def self.up
    create_table :carros, :primary_key => :id, :options => "auto_increment =1" do |t|
      t.integer :id
      t.text :marca
      t.integer :modelo
      t.text :categoria
      t.text :linea
      t.text :descripcion
      t.boolean :selected
      t.timestamps
    end
  end

  def self.down
    drop_table :carros
  end
end
