class CreateRums < ActiveRecord::Migration
  def change
    create_table :rums do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
