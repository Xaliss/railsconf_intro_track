require 'spec_helper'

feature 'Gestion des Horaires' do
  scenario 'Consultation du serveur' do
     visit horaires_index_path
    consulte_page('Nouvelle Page','Liste des arrets en activite')
    consulte_page('arrets en activite','Retour')
    expect(page).to have_content('INDEX')
    
  end
  scenario ' La Nouvelle Page Arrive' do
      visit horaires_index_path
      expect(page).to have_content('Nouvelle Page')

      end

def consulte_page(page,contenu)
 expect(page).to have_content( "#{page}" )   
 click_link ("#{contenu}")
 @ff = ("#{contenu}"  "#{page}" ) 
end


end
