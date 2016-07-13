class CreateChoreItems < ActiveRecord::Migration
  def change
    create_table :chore_items do |t|
      t.string :content
      t.references :chore_list, index: true, foreign_key: true

      t.timestamps
    end
  end
end
