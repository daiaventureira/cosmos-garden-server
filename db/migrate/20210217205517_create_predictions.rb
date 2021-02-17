class CreatePredictions < ActiveRecord::Migration[6.1]
  def change
    create_table :predictions do |t|
      t.text :message
      t.integer :sign
      t.datetime :date

      t.timestamps
    end
  end
end
