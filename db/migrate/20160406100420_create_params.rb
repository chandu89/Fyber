class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.string :uid
      t.string :pub
      t.integer :page

      t.timestamps null: false
    end
  end
end
