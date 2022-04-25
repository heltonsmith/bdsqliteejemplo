class CreateProducto1s < ActiveRecord::Migration[7.0]
  def change
    create_table :producto1s do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
