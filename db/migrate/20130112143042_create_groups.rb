class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :owner

      t.timestamps
    end
    add_index :groups, :owner_id
  end
end
