class AddUniqueIndexCustomizationOfVersionOrgIdToTemplate < ActiveRecord::Migration
  def change
    add_index(:templates, [:customization_of, :version, :org_id], unique: true) unless index_exists?(:templates, [:customization_of, :version, :org_id])
  end
end
