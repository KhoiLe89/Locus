class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :type
      t.string :description
      t.integer :price
      t.references :destination, index: true, foreign_key: true
    end
  end
end
