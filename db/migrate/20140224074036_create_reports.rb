class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
