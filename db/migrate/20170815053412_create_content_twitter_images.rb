class CreateContentTwitterImages < ActiveRecord::Migration[5.1]
  def change
    create_table :content_twitter_images do |t|
      t.references :content, null: false
      t.string :image_key, null: false

      t.timestamps
    end
  end
end
