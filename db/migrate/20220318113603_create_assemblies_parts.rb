class CreateAssembliesParts < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly
      t.belongs_to :part
    end
  end
end
