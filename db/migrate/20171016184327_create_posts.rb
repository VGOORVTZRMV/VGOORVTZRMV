class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published, default: false
      t.string :slug, uniq: true

      t.timestamps
    end
  end
end
