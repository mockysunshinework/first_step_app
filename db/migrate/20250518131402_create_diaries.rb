class CreateDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :diaries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.date :written_on
      t.boolean :public
      t.boolean :locked

      t.timestamps
    end
  end
end
