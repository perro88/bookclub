class DropAddressesAndMembers < ActiveRecord::Migration[6.1]
  def change
    drop_table :addresses
    drop_table :members
  end
end
