class DeleteAddressDetailsFromViolations < ActiveRecord::Migration
  def change
    remove_column :violations, :street_num
    remove_column :violations, :street_name
  end
end