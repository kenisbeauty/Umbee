class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.date :availability_from, :null=>false
      t.date :availability_to, :null=>false
      t.string :home_type, :null=>false, :default=>'house'
      t.string :room_type, :null=>false, :default=>'entire home'
      t.string :description
      t.string :amenites
      t.string :maximum_guest, :null=>false, :default=>1

      t.timestamps
    end
  end
end
