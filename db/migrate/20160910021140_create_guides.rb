class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
