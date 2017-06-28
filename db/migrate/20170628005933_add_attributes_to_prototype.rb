class AddAttributesToPrototype < ActiveRecord::Migration
  def change
    add_column :prototypes, :PMV, :string
    add_column :prototypes, :resumen2, :string
  end
end
