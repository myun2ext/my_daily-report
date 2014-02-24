class CreateReportDates < ActiveRecord::Migration
  def change
    create_table :report_dates do |t|
      t.date :date

      t.timestamps
    end
  end
end
