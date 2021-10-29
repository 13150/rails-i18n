class CreateTiltes < ActiveRecord::Migration[6.1]
  def change
    create_table :tiltes do |t|
      t.text :body

      t.timestamps
    end
  end
end
