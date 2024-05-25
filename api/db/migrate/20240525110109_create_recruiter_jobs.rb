class CreateRecruiterJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :recruiter_jobs do |t|
      t.string :title
      t.string :description
      t.integer :recruiter_id

      t.timestamps
    end
  end
end
