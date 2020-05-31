class AddCardNumberToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :cardnum, :string
  end
end
