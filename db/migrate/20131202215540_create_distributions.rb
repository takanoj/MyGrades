class CreateDistributions < ActiveRecord::Migration
  def up
    create_table :distributions do |t|
      t.string :dist_type
      t.integer :weight
      t.references :course
      t.timestamps
      end
      add_index :distributions, :course_id
  end

  def down
    drop_table :distributions
  end



end
