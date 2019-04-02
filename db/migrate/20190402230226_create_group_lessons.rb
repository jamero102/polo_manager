class CreateGroupLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :group_lessons do |t|
      t.references :lesson, foreign_key: true
      t.datetime :time
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
