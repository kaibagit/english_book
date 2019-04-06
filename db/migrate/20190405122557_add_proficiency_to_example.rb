class AddProficiencyToExample < ActiveRecord::Migration[5.2]
  def change
    add_column :examples, :proficiency, :integer
  end
end
