json.array! @recruiter_jobs do |recruiter_job|
  json.id recruiter_job.id
  json.name recruiter_job.name
  json.email recruiter_job.email
  json.start_date recruiter_job.start_date
  json.end_date recruiter_job.end_date
  json.status recruiter_job.status
  json.skills recruiter_job.skills
end