class AddRandomUrlToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :random_url, :string
  end
end
