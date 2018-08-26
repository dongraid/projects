Rails.application.routes.draw do
  mount CrudJobs::Engine => "/crud_jobs"
end
