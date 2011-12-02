Given /^I am editing content$/ do
  @_content = Factory(:content_page)
  visit noodall_admin_node_path(@_content)
end

Given /^place a "([^"]*)" component in a slot$/ do |component_name|
  slot_name = case component_name
  when 'Carousel'
    'Carousel Slot'
  else
    'Large Slot'
  end
  within('ol#slot-list') do
    click_link slot_name
  end
  within "#fancybox-content" do
    select component_name, :from => 'Select the type of component'
  end
end

When /^I view the content$/ do
  # If we haven't saved the component yet do so
  if page.find('#fancybox-content').visible?
    within "#fancybox-content" do
      click_button 'Save'
    end
    sleep 2
    click_button 'Publish'
  end
  visit node_path(@_content)
end
