class CreateSPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :s_posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
