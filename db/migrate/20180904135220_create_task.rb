require_relative '../../config/application'

class CreateTask < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
        t.string :description
        t.string :status

        t.timestamps
    end
  end
end
