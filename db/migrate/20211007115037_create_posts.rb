class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :views
      t.references :user

      t.timestamps
    end
  end
end
