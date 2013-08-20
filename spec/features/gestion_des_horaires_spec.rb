require 'spec_helper'

feature 'Gestion des Horaires' do
  scenario 'Consultation du serveur' do
      stubz
     visit horaires_trio_path
      expect(body).to have_content "Jean"

#      click_link "Rechercher le nom de votre arret"
#      expect(page).to have_content "Moulin"
  end
 

def consulte_page(pax,contenu)
 expect(page).to have_content( "#{pax}" )   
 click_link ("#{contenu}")
 @ff = ("#{contenu}"  "#{page}" ) 
end




end
