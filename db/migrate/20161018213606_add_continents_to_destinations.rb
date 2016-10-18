class AddContinentsToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_reference :destinations, :continent, foreign_key: true
  end
end
