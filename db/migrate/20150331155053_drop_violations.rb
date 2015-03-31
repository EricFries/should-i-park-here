class DropViolations < ActiveRecord::Migration
  def change
    drop_table :violations
  end
end
