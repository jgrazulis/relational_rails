class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.boolean :awake
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
