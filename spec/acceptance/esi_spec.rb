require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'Rack::Esi', %q{
  In order to test edge side includes
  As a develper
  I want to see my tags work
} do

  scenario "Esi error" do
    visit '/'    
    page.should have_content('http://localhost:8000/no-esi-include')
    page.should have_content('Connection refused - connect(2)')
  end

  scenario "Esi success" do
    FakeWeb.register_uri(:any, "http://esi-include.com", :body => "Content from esi-include")
    visit '/'
    page.should have_content('Content from esi-include')
  end

end
