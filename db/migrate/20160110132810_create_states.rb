class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :acronym
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
