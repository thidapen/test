require 'spec_helper.rb'

feature "Form testing", js: true do 
	scenario "validate form" do 
		visit "/#/inbox/email/1/new"

		fill_in "Name", with: "Lakus"
		select(25, from: "age")
		click_button "Submit"

		expect(page).to have_text("Submitted")
		
	end 
end 