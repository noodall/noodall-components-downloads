Given /^attach files a want to make available to download$/ do
  2.times do |i|
    Factory(:txt_asset, :title => "Text Asset #{i}")
  end
  3.times do |i|
    Factory(:zip_asset, :title => "Zip Asset #{i}")
  end
  page.find(:css, 'span.add-multi-asset').click
  sleep 1
  within "#asset-browser" do
    within "#browser-list li[title='Text Asset 0']" do
      click_link "Add"
    end
    within "#browser-list li[title='Zip Asset 1']" do
      click_link "Add"
    end
    within "#browser-list li[title='Zip Asset 2']" do
      click_link "Add"
    end
  end
  page.find(:css, 'li.action a').click
  sleep 1
  within "#fancybox-content" do
    click_button 'Save'
  end
  sleep 1
  click_button 'Publish'
end

Then /^I should see a list of the files in the slot$/ do
  assert page.has_css?(".downloads li a", :count => 3)
  assert page.has_css?(".downloads li a[href$='.txt']", :count => 1)
  assert page.has_css?(".downloads li a[href$='.zip']", :count => 2)
end

