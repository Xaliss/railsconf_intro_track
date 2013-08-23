require 'spec_helper'

feature "Verifie un echange de donnees avec le serveur " do

	scenario "Consulte la liste des perturbations du réseau" do
	visit horaires_index_path
	stub_perturbs
	click_link 'Perturbations du reseau'

	expect(page).to have_content 'La métropole toulousaine'
	 
end


	scenario "On passe les differentes etapes qui menent a un horaire" do
	stubz
	visit horaires_trio_path
	expect(page).to have_content "Trio"
	fill_in 'Zom', :with => 'Jean'
	stubz
	expect(page).to have_content "Jean Moulin"
	stubH
	click_link 'Jean Moulin (CASTANET-TOLOSAN)'
	expect(page).to have_content 'Reseau 109 Malepère '
	
		
	end
	
end



