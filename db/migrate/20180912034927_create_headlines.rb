class CreateHeadlines < ActiveRecord::Migration[5.1]
  def change
    create_table :headlines do |t|
      t.string :title
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
