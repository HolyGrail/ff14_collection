class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.references :user
      t.uuid :uuid, null: false

      t.timestamps
    end
  end
end
