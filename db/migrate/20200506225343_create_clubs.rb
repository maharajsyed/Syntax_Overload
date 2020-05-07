class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.references :user, polymorphic: { default: 'Photo' }
      t.string :name
      t.string :url
      t.text :regulations
      t.integer :total_members
      t.timestamps
    end
  end
end
