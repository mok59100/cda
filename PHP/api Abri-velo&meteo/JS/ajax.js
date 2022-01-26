// Utilisation de l'Ajax pour appeler l'API et récuperer les enregistrements
var section = document.getElementById("section");
console.log(section);

// var contenu = document.getElementById("contenu");
var enregs; // contient la reponse de l'API
// on définit une requete
const req = new XMLHttpRequest();
const req2 = new XMLHttpRequest();
//on envoi la requête
reqText = "https://opendata.lillemetropole.fr/api/records/1.0/search/?dataset=ilevia-abrisvelos&facet=nom&facet=codepostal&facet=commune&facet=modeabri&q=commune%3D";
reqMeteo = "https://api.meteo-concept.com/api/forecast/daily?token=a0e80a0a0f183332187b4450450c6040400c77537a2cfc241305b16ceb01a953&insee=35238&search=";
// req.send(null);
document.getElementById("villeCherchee").addEventListener("change", function () {
    // console.log(reqText+this.value);
    req.open('GET', reqText + this.value, true);
    req.send(null);
})

//on vérifie les changements d'états de la requête
req.onreadystatechange = function (event) {
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            // la requete a abouti et a fournit une reponse
            //on décode la réponse, pour obtenir un objet
            reponse = JSON.parse(this.responseText).records;
            console.log(this.responseText);
            // la requete a abouti et a fournit une reponse
            //on décode la réponse, pour obtenir un objet
            // reponse = JSON.parse(this.responseText);

            for (let i = 0; i < reponse.length; i++) {

                
                console.log(reponse[i].typeabri);

                ligne = document.createElement("div");
                console.log(ligne);
                ligne.setAttribute("class", "grid");
                console.log(ligne);
                console.log(reponse[i]);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = "Type  d'abris :";
                ligne.appendChild(elm);


                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = reponse[i].fields.typeabri;
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = "Nombre de places :";
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = reponse[i].fields.nbplaces;
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = "Nom :";
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = reponse[i].fields.nom;
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = "Adresse :";
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = reponse[i].fields.adresse;
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = "Commune :";
                ligne.appendChild(elm);

                elm = document.createElement("div");
                elm.setAttribute("class", "elm");
                elm.innerHTML = reponse[i].fields.commune;
                ligne.appendChild(elm);

                section.appendChild(ligne);
            }

        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
}

document.getElementById("Meteo").addEventListener("change", function () {
    // console.log(reqText+this.value);
    req2.open('GET', reqMeteo+ this.value, true);
    req2.send(null);
})
    //on vérifie les changements d'états de la requête
req2.onreadystatechange = function (event) {
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            // la requete a abouti et a fournit une reponse
            //on décode la réponse, pour obtenir un objet
            reponseMeteo = JSON.parse(this.responseText);
            console.log(this.responseText);
            document.getElementById("name").textContent = reponseMeteo.city.name;
            document.getElementById("latitude").textContent = reponseMeteo.city.latitude;
            document.getElementById("longitude").textContent=reponseMeteo.city.altitude;
    } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }

};
// Gestion OpenStreetMap.
let map = document.querySelector('#maps');
let latMoins = reponse.coord.lat - 0.005;
let latPlus = reponse.coord.lat + 0.005;
let lonMoins = reponse.coord.lon - 0.005;
let lonPlus = reponse.coord.lon + 0.005;
map.setAttribute('src', 'https://www.openstreetmap.org/export/embed.html?bbox='+lonMoins+'%2C'+latMoins+'%2C'+lonPlus+'%2C'+latPlus+'&amp;layer=mapnik');