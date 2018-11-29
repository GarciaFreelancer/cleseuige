class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :visible
      t.boolean :available
      t.references :category, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
