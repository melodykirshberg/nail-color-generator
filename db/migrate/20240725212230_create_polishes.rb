class CreatePolishes < ActiveRecord::Migration[6.1]
  def change
    create_table :polishes do |t|
      t.string  :name
      t.string  :brand
      t.integer :color
      t.integer :polish_type

      t.timestamps
    end
  end
end
