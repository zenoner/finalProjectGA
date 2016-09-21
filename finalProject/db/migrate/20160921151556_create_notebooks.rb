class CreateNotebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.references :users

      t.timestamps
    end
  end
end
