module ApplicationHelper

  def nearby(lng1, lat1, lng2, lat2)
    if (lng1-lng2).abs <= 0.01 && (lat1-lat2).abs <= 0.01
      return true
    else
      return false
    end
  end

  def valid_location(location)
    if location.latitude == nil || location.longitude == nil
      return false
    else
      return true
    end
  end

end
