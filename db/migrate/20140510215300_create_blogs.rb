class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :author_id
      t.string :url

      t.timestamps
    end
  end
end
