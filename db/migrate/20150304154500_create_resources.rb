class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.string :link
      t.integer :student_id
    end
  end
end
