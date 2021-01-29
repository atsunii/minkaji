class CreateHouseWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :house_works do |t|
      t.integer :clean_id
      t.integer :towel_id
      t.integer :garbage_id
      t.date :date, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
