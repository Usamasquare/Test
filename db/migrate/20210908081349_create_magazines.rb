class CreateMagazines < ActiveRecord::Migration[6.1]
  def change
    create_table :magazines do |t|
      t.references :article, null: false, foreign_key: true
      t.references :reader, null: false, foreign_key: true

      t.timestamps
    end
  end
end
