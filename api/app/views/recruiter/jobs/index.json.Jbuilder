json.array! @recruiter_jobs do |recruiter_job|
  json.id recruiter_job.id
  json.name recruiter_job.name
  json.email recruiter_job.email
end