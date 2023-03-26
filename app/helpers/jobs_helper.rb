module JobsHelper

  def new_offer?(offer)
    if offer.created_at >= 14.day.ago
      "<span class='new-offer'>new</span>".html_safe
    end
  end

end
