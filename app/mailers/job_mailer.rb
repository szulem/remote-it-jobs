class JobMailer < ApplicationMailer
  def new_job_send(job)
    @job = job
    mail to: @job.user.email, subject: "Your job offer for #{@job.title} has been activated!", from: "REMOJOBS <hello@remojobs.com>"
  end
end
