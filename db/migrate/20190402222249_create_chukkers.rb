class CreateChukkers < ActiveRecord::Migration[5.2]
  def change
    create_table :chukkers do |t|
      t.integer :number
      t.string :team
      t.boolean :renting
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.references :horse, foreign_key: true

      t.timestamps
    end
  end
end
