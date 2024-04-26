class AddTagIdToPostTagsTable < ActiveRecord::Migration[7.1]
  def change
    change_table :post_tags do |t|
      t.belongs_to :tag
    end
  end
end
