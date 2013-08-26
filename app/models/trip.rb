class Trip < ActiveRecord::Base
  attr_accessible :direction_id, :route_id, :service_id, :shape_id, :trip_headsign, :trip_id




#-------------------------------------------------------
# Va lire une flatFile en csv contenant la liste des 
# lignes actives du reseau

def self.arretsCsv
  asset_f1 = "app/assets/alim/stops.txt"
      ll = []
      enreg = Stops.new

      @retourCsv=CSV.parse(File.read(asset_f1),:headers => false)
      compte=0
      @retourCsv.each  do |rangee|
       	 
      enreg.stop_id=rangee[0]
      enreg.stop_code=rangee[1]
      enreg.stop_name=rangee[2]
      enreg.stop_lat=rangee[3] 
      enreg.stop_lon=rangee[4]
      enreg.location_type=rangee[5]
      enreg.parent_station=rangee[6]

	      if success = enreg.save
	      		 ll <<  [enreg.stop_id,enreg.service_id, enreg.stop_name, enreg.stop_lat, enreg.stop_lon, enreg.location_type,enreg.parent_station ]
	     			compte +=1
	     			@chargement=compte
	      end
     
   	end
      
     @li = ll
     flash.now[:message]=" Import CSV reussie,  #{compte} enregistrements"
 
end

#-------------------------------------------------------
#-------------------------------------------------------
# Va lire une flatFile en csv contenant la liste des 
# parcours actives du reseau

def self.parcoursCsv
	puts "oooooooooooooooooooooooooooooooooooooooo"
  asset_f1 = "app/assets/alim/trips.csv"
      ll = []
      enreg = Trip.new
      compte = 0
      @retourCsv=CSV.parse(File.read(asset_f1),:headers => true)
      @retourCsv.each  do |rangee|
      	parcours = find_by_id(rangee["id"]) || new
      	parcours.attributes = rangee.to_hash.slice(*accessible_attributes)
        parcours.save!  
 		    compte +=1
		    @chargement=compte
		    @compte = compte
		    puts   compte
	 
	 end
      
     @li = ll

     redirect_to trips_charge_path , notice:  " Import CSV reussie,  #{compte} enregistrements"
 
end

#-------------------------------------------------------

end
