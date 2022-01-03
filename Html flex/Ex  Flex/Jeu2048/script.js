function compareDiv(){
    var divClick1 = document.getElementsByClassName("case1").value;
    var divClick2 = document.getElementsByClassName("case2").value;

    if (divClick1==divClick2){
        document.getElementsByClassName("case2").textContent =(divClick1+divClick2);
    }
    else{}
}
function aleatoire(){
    return Math.random() * (4 - 2) * 2;
    var case1 = document.getElementsByClassName("case1");
    document.getElementsByClassName("case1").textContent =chiffreAleatoire;
}