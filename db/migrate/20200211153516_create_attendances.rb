class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendance do |t|
      t.boolean :attendance_confirm
      t.integer :user_id
      t.integer :event_id

      t.timestamps

    end
  end
end
