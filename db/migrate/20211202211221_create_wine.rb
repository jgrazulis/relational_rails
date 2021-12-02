class CreateWine < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.boolean :sulfates
      t.integer :years_aged
      t.string :type
      t.datetime :created_at
      t.datetime :updated_at
      t.references :vineyard, foreign_key: true
    end
  end
end
