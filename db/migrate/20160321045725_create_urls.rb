class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :key
      t.text   :url
    end
    add_index :urls, [:key, :url], unique: true
  end
end
