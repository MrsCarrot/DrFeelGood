class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :date
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
