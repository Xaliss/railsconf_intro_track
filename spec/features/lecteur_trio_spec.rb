require 'spec_helper'
 
feature 'Recherche du nom de station' do
  scenario 'Consultation minimum 3 caracteres' do
     visit horaires_trio_path
     
     click_button "Recherche"
     expect(page).to have_content("Trio") 
    
  end
end




