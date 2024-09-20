class CreateContentBlocks < ActiveRecord::Migration[7.2]
  def change
    create_table :content_blocks do |t|
      t.references :content_blockable, polymorphic: true, null: false
      t.string :title

      t.timestamps
    end
  end
end
