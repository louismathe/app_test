class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :authors

      t.timestamps
    end
  end
end
