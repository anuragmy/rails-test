class CreateArtices < ActiveRecord::Migration[6.0]
  def change
    create_table :artices do |t|
      t.string :slug
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
