class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :body
      t.references :activity, index: true, foreign_key: true
    end
  end
end
