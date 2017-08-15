class CreateTaggees < ActiveRecord::Migration[5.1]
  def change
    create_table :taggees do |t|
      t.references :content_twitter_images, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
