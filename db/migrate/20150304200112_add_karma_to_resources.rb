class AddKarmaToResources < ActiveRecord::Migration
  def change
    add_column :resources, :karma, :integer
  end
end
