class CreateParents < ActiveRecord::Migration
  def self.up
    create_table :parents do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end
