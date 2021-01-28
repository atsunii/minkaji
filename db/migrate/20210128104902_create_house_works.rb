class CreateHouseWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :house_works do |t|
      t.integer :clean_id, null: false
      t.integer :towel_id, null: false
      t.integer :garbage_id, null: false
      t.integer :date_id, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
