class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
	create_table :feedbacks do |t|
		t.string :name
		t.string :surname
		t.string :hobby
		t.text :description

		t.timestamps
	end
  end
end
