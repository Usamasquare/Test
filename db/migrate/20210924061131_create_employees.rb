class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :title
      t.references :manager, foreign_key: { to_table: :employees}
      t.timestamps
    end
  end
end
