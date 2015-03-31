class AddTotalToViolations < ActiveRecord::Migration
  def change
    add_column :violations, :total, :integer
    add_column :violations, :risk, :integer
  end
end
