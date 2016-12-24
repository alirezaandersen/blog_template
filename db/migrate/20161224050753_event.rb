class Event < ActiveRecord::Migration
  def change
     create_table :events do |t|
       t.string :name
       t.string :link
       t.datetime :start_time
       t.text :recurring

       t.timestamps
     end
   end
 end
