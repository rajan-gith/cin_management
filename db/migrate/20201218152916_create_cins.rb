class CreateCins < ActiveRecord::Migration[5.2]
  def change
    create_table :cins do |t|
      t.string :number

      t.timestamps
    end
  end
end
