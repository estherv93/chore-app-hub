class CreateChoreLists < ActiveRecord::Migration
  def change
    create_table :chore_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
