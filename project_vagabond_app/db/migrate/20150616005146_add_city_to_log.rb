class AddCityToLog < ActiveRecord::Migration
  def change
    add_column :logs, :city, :string
  end
end
