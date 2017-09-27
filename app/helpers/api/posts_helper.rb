module Api::PostsHelper
  def pretty_date(latest_updated_date)
    ActiveSupport::TimeZone["Central Time (US & Canada)"].parse(latest_updated_date.to_s).utc.to_date.strftime('%A, %d %b %Y %l:%M %p')
  end
end
