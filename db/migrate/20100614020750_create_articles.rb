class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :user_id
      t.integer :viewed, :default => 0
      t.boolean :readable, :default => true
      t.boolean :writable, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
