class CreateRecruiterJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :recruiter_jobs do |t|
      t.string :title
      t.string :description

      t.datetime :start_date
      t.datetime :end_date

      t.boolean :status, default: true

      t.text :skills, array: true, default: []
      
      t.integer :recruiter_id
      t.timestamps
    end

    add_index(:recruiter_jobs, :skills, using: 'gin')
    add_index(:recruiter_jobs, :status, using: 'btree')

  end
end
