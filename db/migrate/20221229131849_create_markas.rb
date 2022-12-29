class CreateMarkas < ActiveRecord::Migration[7.0]
  def change
    create_table :markas do |t|
      t.string :name

      t.timestamps
    end
  end
end
