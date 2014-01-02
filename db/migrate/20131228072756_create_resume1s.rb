class CreateResume1s < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :attachment
	  t.string :col_sept
      t.timestamps
    end
  end
end

