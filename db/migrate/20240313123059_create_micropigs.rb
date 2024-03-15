class CreateMicropigs < ActiveRecord::Migration[7.1]
  def change
    create_table :micropigs do |t|
      t.string :name
      t.integer :age
      t.text :notes

      t.timestamps
    end
  end
end
