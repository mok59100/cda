<body class="colonne">
    
    <header>
     
        <div class="demi"></div>
        <div><img src="./IMG/logo.jpg" alt=""></div>
        <div class="titre"><?php echo $titre; ?></div>
        <div class="colonne">
        </div>
            <?php

            if (isset($_SESSION['utilisateur'])) {
                echo '<div class="center">'. texte('Bonjour') ." ". $_SESSION['utilisateur']->getNom() . '</div>';
                echo '<div><a href="index.php?page=ActionDeconnexion" class="center">'. texte("Deconnexion") .'</a></div>';
            } else {
                echo '<a href="index.php?page=FormConnexion" class="center">'. texte("Connexion") .'</a>';// moktar je change la routepour la connexion 
            }
            ?>

        </div>

        <div class="demi"></div>
        
    </header>