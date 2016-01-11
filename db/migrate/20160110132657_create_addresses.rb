class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :street_name
      t.string :extra_info
      t.references :addressable, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
