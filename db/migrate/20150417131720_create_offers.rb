class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :job_title
      t.string :organisation_name
      t.string :agency_sub_element
      t.string :min_salary
      t.string :max_salary
      t.string :salary_basis
      t.string :start_date
      t.string :end_date
      t.string :who_may_apply
      t.string :pay_plan
      t.string :series
      t.string :grade
      t.string :work_schedule
      t.string :work_type
      t.string :locations
      t.string :announcement_number
      t.text :job_summary
      t.string :apply_online_url

      t.timestamps null: false
    end
  end
end
