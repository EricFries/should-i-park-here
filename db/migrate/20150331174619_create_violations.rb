class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :county
      t.string :address
      t.integer :total
      t.integer :risk
    end
  end
end
