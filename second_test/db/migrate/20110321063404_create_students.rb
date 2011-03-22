class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :sex
      t.string :num
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
