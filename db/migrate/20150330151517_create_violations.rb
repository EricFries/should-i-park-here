class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :street_num
      t.string :street_name
      t.string :county
    end
  end
end
