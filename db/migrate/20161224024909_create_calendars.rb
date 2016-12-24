class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.text :event_name
      t.text :event_link
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
