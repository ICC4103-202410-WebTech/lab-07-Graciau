class AddTablePostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.timestamps
    end
  end
end
