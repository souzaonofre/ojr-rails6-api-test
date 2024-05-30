json.array! @recruiter_submissions do |recruiter_submission|
  json.id recruiter_submission.id
  json.name recruiter_submission.name
  json.email recruiter_submission.email
  json.mobile_phone recruiter_submission.mobile_phone
  json.resume recruiter_submission.resume
end