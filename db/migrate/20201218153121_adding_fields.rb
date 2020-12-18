class AddingFields < ActiveRecord::Migration[5.2]
  def change
    add_index :cins, :number, unique: true
    add_reference :histories, :user
    add_reference :histories, :cin
  end
end
