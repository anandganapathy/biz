class AddColSeptColumnToResume1s < ActiveRecord::Migration
  def change
    add_column :resume1s, :col_sept, :string
  end
end
