# frozen_string_literal: true

class DeviseCreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name,               null: false
    end
  end
end