class ResourceSubjects < ActiveRecord::Migration
  def change
    create_table :resource_subjects do |t|
      t.integer :resource_id
      t.integer :subject_id
    end
  end
end
