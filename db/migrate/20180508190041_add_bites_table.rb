class AddBitesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bites do |t|
      t.column :species, :string
      t.column :zip, :varchar
    end
  end
end
