def check_for_element(page, negation, count_string, named_element)
  selector = selector_for(named_element)
  if negation
    expect(page).not_to have_css(selector)
  else
    if count_string
      expect(page.all(selector_for(named_element)).count).to == count_string.to_i
    else
      expect(page).to have_css(selector)
    end
  end
end

When /^I go to (.*)$/ do |named_path|
  visit path_to(named_path)
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^I should( not)? see "([^"]*)"(?: within (.*))?$/ do |negation, text, named_element|
  if named_element.present?
    selector = selector_for(named_element)
    within selector do
      if negation
        expect(page).not_to have_content(text)
      else
        expect(page).to have_content(text)
      end
    end
  else
    if negation
      expect(page).not_to have_content(text)
    else
      expect(page).to have_content(text)
    end
  end
end

Then /^I should( not)? see (\d+ )?([^"]*?)(?: within (.*))?$/ do |negation, count_string, named_element, page_scope|
  if page_scope
    scope = selector_for(page_scope)
    within(scope) { check_for_element(page, negation, count_string, named_element) }
  else
    check_for_element(page, negation, count_string, named_element)
  end
end

When /^I fill in (.*) with "([^"]*)" within (.+)$/ do |field, value, named_element|
  container = selector_for(named_element)
  within container do
    find(selector_for(field)).set(value)
  end
end

When /^I drag (.*) to the (left|right) (\d+) times$/ do |field, direction, times|
  slider = find(selector_for(field))
  times.to_i.times do
    slider.send_keys(direction.to_sym)
  end
end

When /^(?:|I )click ([^"].*)$/ do |named_element|
    find(selector_for(named_element)).click
end

Then /^([^"]*) should( not)? have the class "([^"]*)"$/ do |named_element, negation, value|
  selector = selector_for(named_element)
  if negation
    expect(page).not_to have_css("#{selector}.#{value}")
  else
    expect(page).to have_css("#{selector}.#{value}")
  end
end
