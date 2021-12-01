class CreateVineyard < ActiveRecord::Migration[5.2]
  def change
    create_table :vineyards do |t|
      t.string :name
      t.boolean :organic
      t.integer :years_established
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
