class CreateDistributions < ActiveRecord::Migration
  def up
    create_table :distributions do |t|
      t.string :type
      t.integer :weight
      t.integer :distribution_location
      t.timestamps
      end
  end

  def down
    drop_table :distributions
  end



end
