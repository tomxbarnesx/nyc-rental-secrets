class CreateViolations < ActiveRecord::Migration[5.2]
  def change
    create_table :violations do |t|
      t.string :code
      t.string :description
      t.string :priority

      t.timestamps
    end
  end
end
