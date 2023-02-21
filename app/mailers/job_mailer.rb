class JobMailer < ApplicationMailer
  def new_job_send(job)
    @job = job
    @url = "https://remojobs.com"
    mail to: @job.user.email, subject: "Your job offer has been activated!", from: "hello@remojobs.com"
  end
end
