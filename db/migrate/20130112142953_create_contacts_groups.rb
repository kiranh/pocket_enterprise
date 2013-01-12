class CreateContactsGroups < ActiveRecord::Migration
  def change
    create_table :contacts_groups do |t|
      t.references :contact
      t.references :group

      t.timestamps
    end
    add_index :contacts_groups, :contact_id
    add_index :contacts_groups, :group_id
  end
end
