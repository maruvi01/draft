class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.text :body
      t.string :tag
      t.integer :tag_id
      t.integer :user_id

      t.timestamps
    end
  end
end
