class AddUniqueIndexFamilyIdVersionToTemplate < ActiveRecord::Migration
  def change
    add_index(:templates, [:family_id, :version], unique: true) unless index_exists?(:templates, [:family_id, :version])
  end
end
