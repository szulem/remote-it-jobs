module JobsHelper

  def new_offer?(offer)
    if offer.created_at >= 14.day.ago
      "<div class='new-offer'>new</div>".html_safe
    end
  end

end
