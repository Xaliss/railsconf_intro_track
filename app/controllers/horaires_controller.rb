class HorairesController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'open-uri'
  require 'csv'
  require 'xmlsimple' 
   
  
# -----------------------------------------------------------
#
# Connecteur: Parse une adresse produit une URI formattée
# et appelle le serveur avec la chaine de commande
# -----------------------------------------------------------
def connecte(req)
    uri = URI.parse(req)
    Net::HTTP.get(uri) #{ |http| http.request_head(uri.path)}
end
#------------------------------------------------------------
# Recoit au minimum, les trois premiers caractères d'un mot
# et fournit une liste de toute les stations qui 
# commencent par ces trois lettres ou plus.
# Retourne un tableau ordonnees

def recherche_de_nom(cas='nou',xml_voulue='trio.xml')
asset1 = "app/assets/xml/trio.xml"
req = "http://pt.data.tisseo.fr/placesList?term=#{cas}"
selecteur = "place"
  retourTrio = connecte(req)
  @retour = retourTrio # debug 
  xmlcompose  = compose(asset1,retourTrio)
  ll = liste_finale(xmlcompose,selecteur)
  @li = ll
end
#----------------------------------------------------------
# http://pt.data.tisseo.fr/messagesList?key=a11d95b1a1e8ff54095e3d368bc6bc6ba&stopPointId=3377699720883894
#Compose un hash decoupant la xml recue du serveur
def compose(nomDeXml,dataLue)
    file = File.new(nomDeXml,'w:ASCII-8BIT')
    file.print(dataLue)
    file.close
    @file = file
    
   
end

# -----------------------------------------------------------
# "xml_serve" est un fichier xml qui sera redecouppe par xml_simple en ash exploitable
# "selecteur" est le nom des nodes a explorer 
# Exemple de xml serve: 'C:/wamp/www/buseon/app/assets/xml/trio.xml'
# Exemple de selecteur: 'departure'

 def liste_finale(xml_serve,selecteur)
      xml = File.read(xml_serve)
      donnees = XmlSimple.xml_in(xml)
      toundra = []
      if donnees[selecteur] == nil
            @xmlret = "Pas de departs programmes"
            return nil
      end      
        donnees[selecteur].each do |maliste|
        toundra << maliste
      end
      return toundra
 end

#----------------------------------------------------------------
# Recoit un appel de la page trio avec comme argument le code de la station de depart et renvoie une liste d"horaires 
# avec une periode de validite Il compose une xml puis la filtre en hash pour en extraire les donnees.
def tonnerre 
   
  @rr =params['id']
  @arret = params['sobriquet']
  ll = []
  if @rr 
      repu = "http://pt.data.tisseo.fr/departureBoard?stopPointId="+@rr+"&key=a11d95b1a1e8ff54095e3d368bc6bc6ba"
      asset1 = "app/assets/xml/departs.xml"
      selecteur   = "departure"
      retourTrio  = connecte(repu)
      xmlcompose  = compose(asset1,retourTrio)
      ll = liste_finale(asset1,selecteur)
      @li = ll
      @xmlret = retard("19:12:03","15:07:01")
  else @xmlret = "Station non desservie"
    
  end      
end  
#-------------------------------------------------------

# "xml_serve" est un fichier xml qui sera redecouppe par xml_simple en ash exploitable
# "selecteur" est le nom des nodes a explorer 
# Exemple de xml serve: 'C:/wamp/www/buseon/app/assets/xml/trio.xml'
# Exemple de selecteur: 'departure'

 def liste_finale(xml_serve,selecteur)
      xml = File.read(xml_serve)
      donnees = XmlSimple.xml_in(xml)
      toundra = []
      if donnees[selecteur] == nil
            @xmlret = "Pas de departs programmes"
            return nil
      end      
        donnees[selecteur].each do |maliste|
        toundra << maliste
      end
      return toundra
 end

#-------------------------------------------------------

def perturbs
  ll = []
  @rr= "3377699720883894"
  repu = "http://pt.data.tisseo.fr/messagesList?stopPointId="+@rr+"&key=a11d95b1a1e8ff54095e3d368bc6bc6ba"
  #repu = "http://pt.data.tisseo.fr/linesDisrupted?key=a11d95b1a1e8ff54095e3d368bc6bc6ba"
  asset1 = "app/assets/xml/perturbs.xml"
  retourTrio  = connecte(repu)
  xmlcompose  = compose(asset1,retourTrio)
  ll = ll = liste_universelle_messages
  @li = ll
  @xmlret = "Pas de perturbations sur cette ligne"
 
end

#-------------------------------------------------------

 def liste_universelle_messages
      xml = File.read('app/assets/xml/perturbs.xml')
      @xmlextraits  = xml.match (/Date=(".*?")/ )
      @xmltdentif  = xml.match (/stop id=(".*?")/)  
      donnees = XmlSimple.xml_in(xml)
      toundra = []
      donnees["message"].each do |maliste|
      toundra << maliste
      end
           
      return toundra
       
       
 end

#-------------------------------------------------------

 def index
     @trio  
end

def trio
  @trio = params[:Zom] 
  recherche_de_nom(@trio)
   
end





 


end
