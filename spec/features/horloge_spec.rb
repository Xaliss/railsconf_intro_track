require 'spec_helper'

feature "Compare deux horaires " do 
	scenario "Le second horaire est ote du premier" do
	stubz
	visit horaires_trio_path
	expect(page).to have_content "Trio"
	fill_in 'Zom', :with => 'Jean'
	stubz
	expect(page).to have_content "Jean Moulin"
	stubz
	click_link 'Jean Moulin (CASTANET-TOLOSAN)'

	#stubz
	
		
	end
	
end
