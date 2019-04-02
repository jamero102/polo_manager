class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :type
      t.datetime :time
      t.references :horse, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
