class EventException < ActiveRecord::Migration
  def change
    create_table :event_exceptions do |t|
      t.references :event, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
