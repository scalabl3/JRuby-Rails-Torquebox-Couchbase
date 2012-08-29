class CreateMainApps < ActiveRecord::Migration
  def change
    create_table :main_apps do |t|
      t.string :index

      t.timestamps
    end
  end
end
