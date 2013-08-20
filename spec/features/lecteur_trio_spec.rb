require 'spec_helper'
 
feature 'Recherche du nom de station' do
  scenario 'Consultation minimum 3 caracteres' do
  	 stubz
     visit horaires_trio_path
     fill_in "Zom", with: "Jean"
 #stubk
  #   click_button "Recherche"

   #  expect(page).to have_content( "Jean") 
    #Todo nouvelle page
  end
end




