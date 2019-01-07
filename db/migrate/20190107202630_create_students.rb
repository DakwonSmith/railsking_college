class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
