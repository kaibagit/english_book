class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.integer :meaning_id
      t.string :original
      t.string :zh_meaning

      t.timestamps
    end
  end
end
