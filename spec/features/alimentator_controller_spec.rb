require 'spec_helper'

 	feature "Doit lire les flats files dans la db" do
 	scenario "consulte la presence de la liste des fichiers fournis" do
 		visit trips_index_path
 		expect(page).to have_content "stops.txt"
 	end	
 	describe "Charge la DB apres avoir presse le bouton" do
 		it "Ouvre la directory app/assets/alim" do
 		visit trips_index_path
 		#click_button 'Charge'
 		expect(page).to have_content "Trip"
 		end
 
 	end
 

end
 