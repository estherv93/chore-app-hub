class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
        t.string :kidname
        t.string :email
        t.timestamps
    end
  end
end
