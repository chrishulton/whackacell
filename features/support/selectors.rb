def selector_for(named_element)
  case named_element
  when /^the page$/ then
    "body"
  when /^the (.*) element$/ then
    "##{$1.gsub(' ', '-')}"
  when /^the (.*) section$/ then
    ".#{$1.gsub(' ', '-')}"
  when /^the tile in row (.*) and column (.*)$/ then
    ".cellGrid tr:nth-child(#{$1}) > td:nth-child(#{$2})"
  when /^(.*) within (.*)$/ then
    "#{selector_for($1)} #{selector_for($2)}"
  end
end

def path_to(page_name)
  case page_name
  when /^the homepage$/
    root_path
  end
end
