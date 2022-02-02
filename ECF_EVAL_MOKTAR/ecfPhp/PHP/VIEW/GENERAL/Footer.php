
<footer>
  <div class= "colonne center"> <!-- div parents les autre suive -->
    <div>contact</div>
    <div>contact</div>
    <div>contact</div>
    </div>
    <div class= "colonne center"> 
    <div>contact</div>
    <div>contact</div>
    <div>contact</div>
    </div>
    <div class= "colonne center"><!-- pour lmettre les div en colonne et une en dessous de l'autre-->
    <div>contact</div>
    <div>contact</div>
    <div>contact</div>
</div>
 </div>
</footer>
<?php
 if (substr($page[1],0,4)=="Form"){
    echo ' <script src="./JS/VerifForm.js"></script>';
 }
 echo ' <script src="./JS/script.js"></script>';
echo '</body>
</html>';