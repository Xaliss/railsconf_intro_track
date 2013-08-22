require 'spec_helper'

feature "Verifie un echange de donnees avec le serveur " do 
	scenario "On passe les differntes etapes qui menent a un horaire" do
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



