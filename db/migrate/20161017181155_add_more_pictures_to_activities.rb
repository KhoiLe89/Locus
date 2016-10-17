class AddMorePicturesToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :img_url2, :string
    add_column :activities, :img_url3, :string
    add_column :activities, :img_url4, :string
  end
end
