class CreateProducts < ActiveRecord::Migration
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :products do |t|
      t.string :name, null: false
      t.string :sku, null: false
      t.string :img, null: false, default: ''
      t.text :description, null: false, default: 'No description provided'
      t.decimal :price, null: false, default: 0.0, precision: 8, scale: 2
      t.decimal :sale_price, null: false, default: 0.0, precision: 8, scale: 2
      t.integer :discount, null: false, default: 0
      t.hstore :specs
      t.boolean :active, null: false, default: true
      t.string :category, null: false, default: 'none'
      t.text :tag, array:true, default: []

      t.timestamps null: false
    end
  end
end
