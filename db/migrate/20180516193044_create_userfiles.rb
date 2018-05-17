class CreateUserfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :userfiles do |t|
      t.string :filename
      t.string :date_created
      t.string :owner
      t.integer :size

      t.timestamps
    end
  end
end
