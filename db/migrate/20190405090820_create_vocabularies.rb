class CreateVocabularies < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabularies do |t|
      t.string :content
      t.string :kind
      t.string :soundmark

      t.timestamps
    end
  end
end
