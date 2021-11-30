class CreateSuscribers < ActiveRecord::Migration[6.1]
  def change
    create_table :suscribers do |t|
      t.string :email
      t.boolean :preference1
      t.boolean :preference2
      t.boolean :preference3

      t.timestamps
    end
  end
end
