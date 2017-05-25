class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :text
      t.integer :summary_id

      t.timestamps
    end
  end
end
