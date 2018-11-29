class CreateClasscourses < ActiveRecord::Migration[5.2]
  def change
    create_table :classcourses do |t|
      t.string :name
      t.string :period
      t.boolean :available
      t.references :course, foreign_key: true
      t.references :former, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
