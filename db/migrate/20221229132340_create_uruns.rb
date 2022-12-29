class CreateUruns < ActiveRecord::Migration[7.0]
  def change
    create_table :uruns do |t|
      t.string :name
      t.integer :marka_id

      t.timestamps
    end
  end
end
