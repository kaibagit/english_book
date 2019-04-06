class CreateMeanings < ActiveRecord::Migration[5.2]
  def change
    create_table :meanings do |t|
      t.string :kind
      t.string :zh_meaning
      t.string :en_meaning

      t.timestamps
    end
  end
end
