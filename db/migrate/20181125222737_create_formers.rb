class CreateFormers < ActiveRecord::Migration[5.2]
  def change
    create_table :formers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
