class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false, limit: 20

      t.timestamps
    end
    add_index :tags, :name, unique: true
  end
end
