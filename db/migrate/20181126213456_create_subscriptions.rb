class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :literary_habilitation
      t.string :address
      t.references :user, foreign_key: true
      t.references :classcourse, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
