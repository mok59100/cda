//  // Nous initialisons une liste de marqueurs
// var villes = {
//     "Panazol": {"latitude": 45.8363, "longitude": 1.3065},
//     "Feytiat": { "latitude": 45.8101, "longitude": 1.3309 },
//     "Condat-sur-Vienne": { "latitude": 45.7937, "longitude": 1.2308 },
//     "Landouge": { "latitude": 45.8435, "longitude": 1.1954 },
//     "Isle": { "latitude": 45.8052, "longitude": 1.2239 }
//    };
   
//  /* On initialise la latitude et la longitude de dunkerque (centre de la carte) */
//  var latitude = 51.0523;
// var longitude = 2.3186;
// var macarte = null;


//  /* Fonction d'initialisation de la carte */
//  /* Créer l'objet "macarte" et l'insèrer dans l'élément HTML qui a l'ID 
// "carte"*/


// var macarte = L.map('carte').setView([latitude, longitude], 13);


// // L.tileLayer('https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png', {
// //  attribution: 'Map data &copy; <a
// // href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a
// // href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery
// // © <a href="https://www.mapbox.com/">Mapbox</a>'
// //  maxZoom: 20,
// // }).addTo(macarte);
// var marqueur = L.marker([latitude, longitude]).addTo(macarte);
// // Nous parcourons la liste des villes
// var marqueurs = {};


// for (var ville in villes) {
//  marqueurs[ville] = L.marker([villes[ville].latitude,
// villes[ville].longitude]).addTo(macarte);
// // création d'une variable popup vide
// var popup = L.popup();
// function onMapClick(e) {
//  // la variable e contient les informations sur l'événement
//  // positionner le popup au coordonnées du clic
//  popup.setLatLng(e.latlng)
//  // définir le contenu du popup
//  popup.setContent("Vous avez cliqué sur la carte aux coordonnées " +
// e.latlng.toString())
//  //ouvrir le popup sur la carte
//  popup.openOn(macarte);
//  // faire exécuter la fonction lors du clic sur la carte
// macarte.on('click', onMapClick);

// }
// }