class ResourceTypes < ActiveRecord::Migration
  def change
    create_table :resource_types do |t|
      t.integer :resource_id
      t.integer :type_id
    end
  end
end
