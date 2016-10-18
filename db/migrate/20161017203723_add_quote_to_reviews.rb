class AddQuoteToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :quote, :string
  end
end
