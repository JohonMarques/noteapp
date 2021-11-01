class CreateAnotations < ActiveRecord::Migration[6.1]
  def change
    create_table :anotations do |t|
      t.string :title
      t.text :note
      t.datetime :date
      t.string :priority

      t.timestamps
    end
  end
end
