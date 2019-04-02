class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :level
      t.boolean :in_work

      t.timestamps
    end
  end
end
