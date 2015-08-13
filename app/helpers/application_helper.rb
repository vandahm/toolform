module ApplicationHelper
  def zone_options
    options = Tool::ZONES
    options = [*options]
    options = options.map {|x| x.reverse}
    options_for_select(options)
  end
end
