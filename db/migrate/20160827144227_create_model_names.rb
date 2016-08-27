class CreateModelNames < ActiveRecord::Migration
  def change
    create_table :model_names do |t|
      t.TYPE :COLUMN_NAME
      t.TYPE :COLUMN_NAME
      t.TYPE :COLUMN_NAME

      t.timestamps null: false
    end
  end
end
