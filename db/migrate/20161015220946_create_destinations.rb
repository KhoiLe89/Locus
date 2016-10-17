class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :description
      t.string :img_url
    end
  end
end
