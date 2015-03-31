class AddAddressToViolations < ActiveRecord::Migration
  def change
    add_column :violations, :address, :string
  end
end
