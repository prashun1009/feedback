class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
	create_table :feedbacks do |t|
		t.string :name
		t.string :surname
		t.string :hobby
		t.text :description
		t.references :user, foreign_key: true

		t.timestamps
	end
	add_index :feedbacks, [:user_id, :created_at]
  end
end
