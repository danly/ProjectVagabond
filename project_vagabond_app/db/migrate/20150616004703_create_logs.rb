class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
