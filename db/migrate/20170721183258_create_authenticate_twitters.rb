class CreateAuthenticateTwitters < ActiveRecord::Migration[5.1]
  def change
    create_table :authenticate_twitters do |t|
      t.references :user, null: false, unique: true
      t.bigserial :twitter_user_id, null: false, limit: 8

      t.string :access_token, null: false
      t.string :access_token_secret, null: false

      t.timestamps
    end

    add_index :authenticate_twitters, :twitter_user_id, unique: true
  end
end
