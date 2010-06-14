class CreateTextblocks < ActiveRecord::Migration
  def self.up
    create_table :textblocks do |t|
      t.string :title
      t.integer :article_id
      t.text :content
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :textblocks
  end
end
