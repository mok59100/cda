
var contenu = document.querySelector(".contenu");
const requ = new XMLHttpRequest();

// /**** GET */
requ.open('GET', 'https://localhost:44336/api/Produits', true);
 requ.send();

/**** GET by ID  */
// requ.open('GET', 'https://localhost:44336/api/Produits/2', true);
// requ.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
// requ.send();


// /**** POST */
// requ.open('POST', 'https://localhost:44336/api/Produits', true);
// requ.setRequestHeader("Content-Type", "application/json");
// var args={
//     "idDepartement": 0,
//     "libelle": "nouveau"
//   }
//   requ.send(JSON.stringify(args));

//   /**** PUT */
//   requ.open('PUT', 'https://localhost:44336/api/Produits/1', true);
//   requ.setRequestHeader("Content-Type", "application/json");
//   var args={
//       "idDepartement": 1,
//       "libelle": "test"
//     }
//     requ.send(JSON.stringify(args));


// /**** Delete  */
// requ.open('DELETE', 'https://localhost:44336/api/Produits/4', true);
// requ.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
// requ.send();


requ.onreadystatechange = function(event) {
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            console.log("Réponse reçue: %s", this.responseText);;
            console.log(this.responseText);
            reponse=JSON.parse(this.responseText);
            
            
        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};
