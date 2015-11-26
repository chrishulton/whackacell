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
