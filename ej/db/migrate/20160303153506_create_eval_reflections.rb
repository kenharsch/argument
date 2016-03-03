class CreateEvalReflections < ActiveRecord::Migration
  def change
    create_table :eval_reflections do |t|
      t.integer :user_id
      t.integer :assignment_id
      t.text    :content
      t.timestamps null: false
    end
  end
end
