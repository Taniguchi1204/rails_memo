class CreateQuesionFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :quesion_favorites do |t|
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
