class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :corp_number, null: false
      t.string :name, null: false
      t.string :prefecture, null: false

      t.timestamps
    end

    add_index :companies, [:corp_number], unique: true
  end
end
