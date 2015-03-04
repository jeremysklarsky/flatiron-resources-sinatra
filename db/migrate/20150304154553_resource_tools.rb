class ResourceTools < ActiveRecord::Migration
  def change
    create_table :resource_tools do |t|
      t.integer :resource_id
      t.integer :tool_id
    end
  end
end
