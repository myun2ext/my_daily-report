class CreateReportContents < ActiveRecord::Migration
  def change
    create_table :report_contents do |t|
      t.text :content

      t.timestamps
    end
  end
end
