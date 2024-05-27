class CreateRecruiterJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :recruiter_jobs do |t|
      t.string :title
      t.string :description
      
      t.text :skills, array: true, default: []

      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status
      t.integer :recruiter_id

      t.timestamps
    end

    add_index(:recruiter_jobs, :skills, using: 'btree')
    add_index(:recruiter_jobs, :status, using: 'btree')

  end
end
