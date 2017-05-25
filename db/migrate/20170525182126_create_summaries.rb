class CreateSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.string :heading
      t.string :subheading
      t.text :body
      t.string :image_url
      t.timestamps
    end
  end
end
