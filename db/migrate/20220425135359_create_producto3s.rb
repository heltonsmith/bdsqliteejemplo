class CreateProducto3s < ActiveRecord::Migration[7.0]
  def change
    create_table :producto3s do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
