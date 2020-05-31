class AddCardTypeToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :cardtype, :string
  end
end
