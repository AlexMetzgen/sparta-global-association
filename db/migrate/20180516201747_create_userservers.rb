class CreateUserservers < ActiveRecord::Migration[5.2]
  def change
    create_table :userservers do |t|
      t.boolean :online
      t.string :owner
      t.references :user, foreign_key: true
      t.references :userfile, foreign_key: true

      t.timestamps
    end
  end
end
