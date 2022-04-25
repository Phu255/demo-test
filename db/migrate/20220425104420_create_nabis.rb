class CreateNabis < ActiveRecord::Migration[6.0]
  def change
    create_table :nabis do |t|
      t.text :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
