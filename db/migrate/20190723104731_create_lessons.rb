class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :max_person
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
