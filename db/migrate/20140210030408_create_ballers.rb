class CreateBallers < ActiveRecord::Migration
  def change
    create_table :ballers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.boolean :active

      t.timestamps
    end
  end
end
