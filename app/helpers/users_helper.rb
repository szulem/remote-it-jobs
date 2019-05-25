module UsersHelper

  def days_from_start_rounded(start_date)
    ((Time.now - start_date)/60/60/24).round(0)
  end
  
end
