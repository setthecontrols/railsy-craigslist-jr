class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :location
      t.integer :category_id

      t.timestamps
    end
  end
end
