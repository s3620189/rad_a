class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :username
      t.string :phone
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
