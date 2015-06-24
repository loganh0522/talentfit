json.array!(@job_templates) do |job_template|
  json.extract! job_template, :id, :template_name, :job_description, :job_type
  json.url job_template_url(job_template, format: :json)
end
