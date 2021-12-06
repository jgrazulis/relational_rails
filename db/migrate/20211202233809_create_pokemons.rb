class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.integer :hp
      t.boolean :fainted
      t.datetime :created_at
      t.datetime :updated_at
      t.references :trainers, foreign_key: true
    end
  end
end
