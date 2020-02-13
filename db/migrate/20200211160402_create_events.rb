class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :image_url
      t.string :title
      t.datetime :date_of_event
      t.string :location
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
