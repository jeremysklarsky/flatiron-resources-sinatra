class AddPicToStudents < ActiveRecord::Migration
  def change
    add_column :students, :pic_link, :string
  end
end
