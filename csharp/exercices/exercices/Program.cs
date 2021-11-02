using System;

namespace exercices
{
    class Program
    {
        static void Main(string[] args)
        {
            /*  1 Variables*/
            /*Exercice 1 - Saisie d’une chaîne
            Ecrire un programme demandant à l’utilisateur de saisir son nom, puis affichant le nom saisi.
            Console.WriteLine("Entre ton nom!");
            String nom = Console.ReadLine();
            Console.WriteLine("bienvenue à toi " + nom);*/


            /* Exercice 2 - Saisie d’un entier
             Ecrire un programme demandant à l’utilisateur de saisir une valeur numérique entière puis affichant cette valeur.*/
            /* string chiffre;

             Console.WriteLine("veuillez saisir une valeur numerique");
             chiffre= Console.ReadLine();
             Console.WriteLine(" bien joué " + chiffre);

 */
            /*1.2 Entiers
          Exercice 3 - Opération sur les entiers
          Saisir deux variables entières, afficher leur somme et leur quotient.*/


            /*int a = 5;
            int b = 1;
            Console.WriteLine("La somme de a et b est :" + (a + b));
            Console.WriteLine("La division de a et b est:" + (a / b));*/

            /*1.3  Exercice 4 - Saisie et affichage
             Saisir une variable de type float, afficher sa valeur.
             Console.WriteLine("veuillez saisir une valeur numerique");
             Console.WriteLine("Saisir un premier nombre !");
             a = Console.ReadLine();
             Console.WriteLine("Saisir un deuxième nombre !");
             b = Console.ReadLine();
             c = Convert.ToInt32(a) + Convert.ToInt32(b);
             d = Convert.ToInt32(a) / Convert.ToInt32(b);
             Console.WriteLine("La somme des deux nombres est égal a " + c);
             Console.WriteLine("Le quotient des deux nombres est égal a " + d);
 */

            /*Exercice 4 - Saisie et affichage
             Saisir une variable de type float, afficher sa valeur*/

            /*String A;
            Console.WriteLine("veuillez saisir un chiffre à virgule");
            A = Console.ReadLine();
            Console.WriteLine("voici votre chiffre " + A);
*/

            /*Exercice 5 - Moyenne arithmétique
           *//* Saisir 3 valeurs, afficher leur moyenne*//*
            string a, b, c;
            double d;

            Console.WriteLine("veuillez saisir une valeur numerique");
            Console.WriteLine("Saisir un premier nombre !");
            a = Console.ReadLine();

            Console.WriteLine("Saisir un deuxième nombre !");
            b = Console.ReadLine();
            Console.WriteLine("Saisir un troisieme nombre !");
            c = Console.ReadLine();

            d = (Convert.ToDouble(a) + Convert.ToDouble(b) + Convert.ToDouble(c))/3;
            Console.WriteLine("La somme des deux nombres est égal a " + d);
*/

            /* Exercice 6 - Surface du rectangle
              Demander à l’utilisateur de saisir les longueurs et largeurs d’un rectangle, afficher sa surface.*/

            /*string saisie1;
            string saisie2;
            double longueur;
            double largeur;
            double surface;

            Console.WriteLine("Entrez une longueur : ");
            saisie1 = Console.ReadLine()
Console.WriteLine("Entrez une largeur : ");
            saisie2 = Console.ReadLine()
longueur = Convert.ToDouble(saisie1)
largeur = Convert.ToDouble(saisie2)
surface = longueur * largeur;
            Console.Write("Le rectangle de " + longueur + "et de largeur" + largeur);
            Console.Write("a pour surface : " + surface);
            Console.WriteLine();
            Console.ReadLine();*/

            /*1.4 1.4 Caractères
                        Exercice 7 - Prise en main
                        Affectez le caractère ’a’ à une variable de type char, affichez ce caractère ainsi que son code
                        UNICODE.
           char a='B';
            Console.WriteLine("Le code ascii de "+a+" est : " + (int)a);
            Console.ReadLine();



            /*Exercice 8 - Casse
            *//*Ecrivez un programme qui saisit un caractère minuscule et qui l’affiche en majuscule*/
            /*Console.WriteLine("lettre en minuscule : ");
            string lettre = Console.ReadLine();
            Console.WriteLine("Lettre en majuscule : " + lettre.ToUpper());*/



            /*2 Opérateurs Conversions
            Exercice 1 - Successeur
            Ecrivez un programme qui saisit un caractère et qui affiche son successeur dans la table des
            codes UNICODE.*/
            /*string var;
            int varInt;
            Console.Write("Saisissez un caractère : ");
            var = Console.ReadLine();
            varInt = (int)char.Parse(var);
            Console.WriteLine("Son successeur dans la table UNICODE est : " + (char)(varInt + 1) + " soit le code : " + (varInt + 1));*/
            /*
                        Exercice 2 - Codes UNICODE
            Quels sont les codes UNICODE des caractères ’0’, ’1’, . . ., ’9

                            char val1 = '0';
                        char val2 = '1';
                        char val3 = '2';
                        char val4 = '3';
                        char val5 = '4';
                        char val6 = '5';
                        char val7 = '6';
                        char val8 = '7';
                        char val9 = '8';
                        char val10 = '9';

                        Console.WriteLine((int)val1);
                        Console.WriteLine((int)val2);
                        Console.WriteLine((int)val3);
                        Console.WriteLine((int)val4);
                        Console.WriteLine((int)val5);
                        Console.WriteLine((int)val6);
                        Console.WriteLine((int)val7);
                        Console.WriteLine((int)val8);
                        Console.WriteLine((int)val9);
                        Console.WriteLine((int)val10);*/


            /*Exercice 3 - Cartons et camions
            Nous souhaitons ranger des cartons pesant chacun k kilos dans un camion pouvant transporter
             M kilos de marchandises. Ecrire un programme C demandant à l’utilisateur de saisir M et k,
            que vous représenterez avec des nombres flottants, et affichant le nombre(entier) de cartons
            qu’il est possible de placer dans le camion.
    */
            /*Console.WriteLine("Saisissez le poids d'un carton : ");
            float poidsUnitaire = float.Parse(Console.ReadLine());
            Console.WriteLine("Saisissez la capacité du camion : ");
            float poidsTotal = float.Parse(Console.ReadLine());
            int nombreDeCartons = (int)(poidsTotal / poidsUnitaire);
            Console.WriteLine("Vous pourrez placer " + nombreDeCartons + " cartons.");*/
            /*
                        Exercice 4 - Pièces de monnaie
             Nous disposons d’un nombre illimité de pièces de 0.5, 0.2, 0.1, 0.05, 0.02 et 0.01 euros.Nous
             souhaitons, étant donné une somme S, savoir avec quelles pièces la payer de sorte que le
             nombre de pièces utilisée soit minimal.Par exemple, la somme de 0.96 euros se paie avec une
             pièce de 0.5 euros, deux pièces de 0.2 euros, une pièce de 0.05 euros et une pièce de 0.01
             euros.
             Ecrire un programme demandant à l’utilisateur de saisir une valeur comprise entre 0 et 0.99.
             Ensuite, affichez le détail des pièces à utiliser pour constituer la somme saisie avec un nombre
             minimal de pièces.
            */
            /*  3 Traitements conditionnels*/


            /*3.1 Prise en main
            Exercice 1 - Majorité
            Saisir l’âge de l’utilisateur et lui dire s’il est majeur ou s’il est mineur.*/


            /*      int age;
                    Console.WriteLine("veuillez saisir votre age");
                    age = Convert.ToInt32(Console.ReadLine());
                    if (age>=18)
                    {
                        Console.WriteLine("l'utilisateur est majeur");
                    }
                    else
                        Console.WriteLine("desolé vous etes mineur");
                    */

            /*
                        Exercice 2 - Valeur Absolue
                            Saisir une valeur, afficher sa valeur absolue.

            Console.WriteLine("Donnez une valeur");
            int nb = int.Parse(Console.ReadLine());
            if (nb<0)
            {
                nb = nb * -1;
            }
            Console.WriteLine(nb);

              Exercice 3 - Admissions
              Saisir une note, afficher ”ajourné” si la note est inférieure à 8, ”rattrapage” entre 8 et 10,
              ”admis” dessus de 10.*/
            /*double note;
            Console.WriteLine("veuillez saisir une note");
            note = Convert.ToDouble(Console.ReadLine());
            if (note<20 && note>10)
            {
                Console.WriteLine("vous etes admis");
            }
            else if (note<10 && note>8)
             {
                Console.WriteLine("rattrapage");
            }
             else {
                Console.WriteLine("ajourne");

            };*/
            //    string note;
            //    double n;

            //    Console.Write("Saisissez votre note : \n");
            //    note = Console.ReadLine();
            //    n = double.Parse(note);

            //    if (n < 8)
            //    {

            //        Console.WriteLine(" Votre note de " + n + " vous ajourne , triste nouvelle !");
            //    }
            //    else if(n > 10)
            //        {
            //        Console.WriteLine(" Votre note de " + n + " vous permet d'etre admis , Félicitation !");
            //    }

            //        else
            //    {
            //        Console.WriteLine(" Votre note de " + n + " vous propulse directement en rattrappage !");
            //    }
            //}
            /*
                        Exercice 4 - Assurances
                                     Une compagnie d’assurance effectue des remboursements sur lesquels est ponctionnée une
                                     franchise correspondant à 10 % du montant à rembourser.Cependant, cette franchise ne doit
                                     pas excéder 4000 euros.Demander à l’utilisateur de saisir le montant des dommages, afficher
                                     ensuite le montant qui sera remboursé ainsi que la franchise.
                 double franchise = 0;
                Console.WriteLine("Montant des dommages : ");
                franchise = (10 * double.Parse(Console.ReadLine()) / 100);
                if (franchise > 4000)
                {
                    Console.WriteLine("Votre franchise est de 4000Euros");
                }
                else
                {
                    Console.WriteLine("Votre franchise est de " + franchise + "Euro(s)");
                }




                                     Exercice 5 - Valeurs distinctes parmi 2
                                     Afficher sur deux valeurs saisies le nombre de valeurs distinctes.*/
            /*
                        int a;
                        int b;
                        Console.WriteLine("veuillez saisir la 1re valeur");
                        a = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("veuillez saisir la 2eme valeur");
                        b = Convert.ToInt32(Console.ReadLine());
                        if(a==b)
                        {
                            Console.WriteLine("1 seul valeur distinct");
                        }
                        else
                        {
                            Console.WriteLine("2 valeurs separes");
                        };

            */
            /*Exercice 6 - Plus petite valeur parmi 3 Afficher sur trois valeurs saisies la plus petite.

            int a;
            int b;
            int c;
            int min;
            Console.Write("Entrez la première valeur : ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write("Entrez la deuxième valeur : ");
            b = Convert.ToInt32(Console.ReadLine());
            Console.Write("Entrez la troisième valeur : ");
            c = Convert.ToInt32(Console.ReadLine());
            if (a<=b)
            {
                min = a;
            }
            else
            {
                min = b;
            }
            if(c<=min)
            {
                min = c;
            }
            Console.Write("La plus petite valeur est : " + min);

                         3.2 Switch

                         Exercice 7 - Calculatrice
                         Ecrire un programme demandant à l’utilisateur de saisir
                         — deux valeurs a et b, de type int ;
                         — un opérateur op de type char, vérifiez qu’il s’agit de l’une des valeurs suivantes : +, - , *, /
                          Puis affichez le résultat de l’opération a op b.*/
            /*
                        int saisiea;
                        int saisieb;
                        string op;
                        Console.WriteLine("veuillez saisir une valeur");
                        saisiea = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("veuillez saisir un operateur  +, - , *, /");
                        op = Console.ReadLine();
                        Console.WriteLine("veuillez saisir une valeur ");
                        saisieb = Convert.ToInt32(Console.ReadLine());

                        switch (op)
                        {
                            case "+":
                                Console.WriteLine(saisiea + op + saisieb + " = " + (saisiea + saisieb));
                                break;
                            case "-":
                                Console.WriteLine(saisiea + op + saisieb + " = " + (saisiea - saisieb));
                                break;
                            case "/":
                                Console.WriteLine(saisiea + op + saisieb + " = " + (saisiea / saisieb));
                                break;
                            case "*":
                                Console.WriteLine(saisiea + op + saisieb + " = " + (saisiea * saisieb));
                                break;
                            default:
                                Console.WriteLine("operateur non valide");
                                break;*/
            /*}*/

            //int a, b;
            //char op;
            //Console.WriteLine("valeur a : ");
            //a = int.Parse(Console.ReadLine());
            //Console.WriteLine("valeur b : ");
            //b = int.Parse(Console.ReadLine());
            //Console.WriteLine("opérateur de calcul");
            //op = char.Parse(Console.ReadLine());
            //switch (op)
            //{
            //    case '-':
            //        Console.WriteLine(a - b);
            //        break;
            //    case '+':
            //        Console.WriteLine(a + b);
            //        break;
            //    case '*':
            //        Console.WriteLine(a * b);
            //        break;
            //    case '/':
            //        if (b == 0)
            //        {
            //            Console.WriteLine("Division impossible par 0");
            //        }
            //        else
            //        {
            //            Console.WriteLine(a / b);
            //        }
            //        break;
            //    default;
            //console.WriteLine("Operateur invalide");
            //break;
            //}




            //            3.3 L’échiquier
            //            On indice les cases d’un échiquier avec deux indices i et j variant tous deux de 1 à 8.La case (i,
            //            j) est sur la ligne i et la colonne j. Par convention, la case (1, 1) est noire.
            //                                    Exercice 8 - Couleurs
            //                                    Ecrire un programme demandant à l’utilisateur de saisir les deux coordonnées i et j d’une case,
            //                                    et lui disant s’il s’agit d’une case blanche ou noire.


            //  int i;
            //  int j;
            //  Console.WriteLine("saisir la 1ere coordonnees");
            // i = Convert.ToInt32(Console.ReadLine());
            // Console.WriteLine("saisir la 2eme coordonnees");
            // j = Convert.ToInt32(Console.ReadLine());
            //if ((i + j) % 2 == 0)
            // {

            //     Console.WriteLine("case noire");
            // }
            // else
            // {
            //     Console.WriteLine("case blanche");
            // }

            //Exercice 9 - Cavaliers
            //                        Ecrire un programme demandant à l’utilisateur de saisir les coordonnées(i, j) d’une première 
            //                        case et les coordonnées(i′, j′) d’une deuxième case. Dites - lui ensuite s’il est possible de
            //                        déplacer un cavalier de(i, j) à(i′, j′).

            //int dl;
            //int al;
            //int dc;
            //int ac;

            //Console.WriteLine("saisir la position depart ligne");
            //dl = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("saisir la position depart colonne");
            //dc = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("saisir la position arrive ligne");
            //al = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("saisir la position arrive colonne");
            //ac = Convert.ToInt32(Console.ReadLine());

            //if ((dl + 2 == al && dc + 1 == ac) || (dl - 2 == al && dc - 1 == ac) || (dl + 2 == al && dc - 1 == ac) || (dl - 2 == al && dc + 1 == ac) || (dl + 1 == al && dc + 2 == ac) || (dl - 1 == al && dc - 2 == ac) || (dl + 1 == al && dc - 2 == ac) || (dl - 1 == al && dc + 2 == ac))
            //{
            //    Console.WriteLine("deplacement du cavalier autorisé");
            //}
            //else
            //{
            //    Console.WriteLine("deplacement impossible");
            //}
            //ou
            //int i1, j1, i2, j2;
            //Console.Write("Saisissez la valeur pour i1 puis j1 : ");
            //i1 = int.Parse(Console.ReadLine());
            //j1 = int.Parse(Console.ReadLine());
            //Console.Write("Saisissez la valeur pour i2 puis j2 : ");
            //i2 = int.Parse(Console.ReadLine());
            //j2 = int.Parse(Console.ReadLine());

            //if (Math.Abs(i1 - i2) == 2 && Math.Abs(j1 - j2) == 1 || Math.Abs(i1 - i2) == 1 && Math.Abs(j1 - j2) == 2)
            //{
            //    Console.WriteLine("Peut ce déplacer");
            //}
            //else
            //{
            //    Console.WriteLine("Peut pas");
            //}
            //Exercice 10 - Autres pièces
            //Même exercice avec la tour, le fou, la dame et le roi.Utilisez un switch et présentez le
            //                        programme de la sorte :
            //                        Quelle pièce souhaitez - vous déplacer ?
            //                          0 = cavalier
            //                          1 = Tour
            //                        2 = Fou
            //                        3 = Dame
            //                        4 = Roi 4
            //                        Coordonnées(i, j) de la position de départ:
            //                        i = 5
            //                        j = 6
            //                        Coordonnées(i’, j’) de la position d’arrivée:
            //                        i’ = 6
            //                        j’ = 7
            //                        Déplacement du roi de(5, 6) vers(6, 7) correct.

            //int piece, i1, i2, j1, j2;
            //bool boolean = false;
            //Console.WriteLine("Quelle piece souhaitez-vous deplacer ? :" +
            //                  "\n**************************************" +
            //                  "\n0 = Cavalier " +
            //                  "\n1 = Tour" +
            //                  "\n2 = Fou" +
            //                  "\n3 = Dame" +
            //                  "\n4 = Roi" +
            //                  "\n**************************************");
            //piece = int.Parse(Console.ReadLine());
            //Console.WriteLine("Coordonnées (i,j) de la position de départ :");
            //Console.Write("i = ");
            //i1 = int.Parse(Console.ReadLine());
            //Console.Write("j = ");
            //j1 = int.Parse(Console.ReadLine());
            //Console.WriteLine("Coordonnées (i',j') de la position d'arrivée :");
            //Console.Write("i' = ");
            //i2 = int.Parse(Console.ReadLine());
            //Console.Write("j' = ");
            //j2 = int.Parse(Console.ReadLine());

            //switch (piece)
            //{

            //    case 0: // Cavalier
            //        boolean = Math.Abs(i1 - i2) == 2 && Math.Abs(j1 - j2) == 1 || Math.Abs(i1 - i2) == 1 && Math.Abs(j1 - j2) == 2 ? true : false;




            //        break;
            //    case 1: // Tour
            //        boolean = i1 == i2 || j1 == j2 ? true : false;

            //        break;
            //    case 2: // Fou
            //        boolean = Math.Abs(i1 - i2) == Math.Abs(j1 - j2) ? true : false;


            //        break;
            //    case 3: // Dame
            //        boolean = i1 == i2 || j1 == j2 || Math.Abs(i1 - i2) == Math.Abs(j1 - j2) ? true : false;

            //        break;
            //    case 4: // Roi
            //        boolean = Math.Abs(i1 - i2) < 2 && Math.Abs(j1 - j2) < 2 ? true : false;

            //        break;
            //    default:
            //        break;

            //}
            //Console.WriteLine(" Déplacement " + (boolean ? "correct" : "incorrect"));


            //                        3.4 Heures et dates
            //                        Exercice 11 - Opérations sur les heures
            //                        Ecrire un programme qui demande à l’utilisateur de saisir une heure de début(heures +
            //                        minutes) et une heure de fin(heures + minutes aussi).Ce programme doit ensuite calculer en
            //                        heures + minutes le temps écoulé entre l’heure de début et l’heure de fin.Si l’utilisateur saisit
            //                        10h30 et 12h15, le programme doit lui afficher que le temps écoulé entre l’heure de début et
            //                        celle de fin est 1h45.On suppose que les deux heures se trouvent dans la même journée, si
            //                        celle de début se trouve après celle de fin, un message d’erreur doit s’afficher.Lors la saisie
            //                        des heures, séparez les heures des minutes en demandant à l’utilisateur de saisir:
            //                        — heures de début
            //                        — minutes de début
            //                        — heures de fin
            //                        — minutes de fin
            int hd;
            int md;
            int hf;
            int mf;

            Console.WriteLine("veuillez saisir une heure debut");
            hd = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("veuillez saisir les minutes de debut");
            md = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("veuillez saisir une heure fin");
            hf = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("veuillez saisir les minutes de fin");
            mf = Convert.ToInt32(Console.ReadLine());


            if (hf - hd < 0)
            {
                Console.WriteLine("l'heure depart est apres l'heure d'arrive");

            }
            else
            {
                     Console.WriteLine("il y a" + (hf -  hd) + "minute" + (mf - md) 
            }



            //                        Exercice 12 - Le jour d’après
            //                        Ecrire un programme permettant de saisir une date(jour, mois, année), et affichant la date du
            //                        lendemain.Saisissez les trois données séparément(comme dans l’exercice précédent).Prenez
            //                        garde aux nombre de jours que comporte chaque mois, et au fait que le mois de février
            //                        comporte 29 jours les années bissextiles.
            //                        Allez sur http://fr.wikipedia.org/wiki/Ann\%C3\%A9e_bissextilepourconnatrelesrglesexactes, 
            //                        je vous avais dit que les années étaient bissextiles si et seulement si elles étaient divisibles par
            //                        4, après vérification, j’ai constaté que c’était légèrement plus complexe. Je vous laisse vous
            //                        documenter et retranscrire ces règles de la façon la plus simple possible.
            //int jour;
            //int mois;
            //int annee;

            //Console.WriteLine("veuillez saisir le jour");
            //jour = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("veuillez saisir le mois");
            //mois= Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("veuillez saisir l'année");
            //annee = Convert.ToInt32(Console.ReadLine());
            //if (a % 4 == 0)
            //{
            //    if (a % 100 != 0)
            //    {
            //        bissextile = true;
            //    }
            //    else
            //    {
            //        if (a % 400 == 0)
            //        {
            //            bissextile = true;
            //        }
            //        else
            //        {
            //            bissextile = false;
            //        }
            //    }
            //}
            //else
            //{
            //    bissextile = false;
            //}

            //
            //
            //                        3.5 Intervalles et rectangles




            //                        Exercice 13 - Intervalles bien formés
            //                        Demandez à l’utilisateur de saisir les deux bornes a et b d’un intervalle[a, b]. Contrôler les
            //                        valeurs saisies.



            //                        Exercice 14 - Appartenance
            //                        Demandez - lui ensuite de saisir une valeur x, dites-lui si x ∈ [a, b]


            //                        Exercice 15 - Rectangles
            //                        Nous représenterons un rectangle R aux cotés parallèles aux axes des abscisses et ordonnées
            //                        à l’aide des coordonnées de deux points diamétralement opposés, le point en haut à gauche,
            //                        de coordonnées(xHautGauche, yHautGauche), et le point en bas à droite, de coordonnées
            //                        (xBasDroite, yBasDroite). Demander à l’utilisateur de saisir ces 4 valeurs, contrôlez la saisie.


            //                        Exercice 16 - Appartenance
            //                        Demandez à l’utilisateur de saisir les 2 coordonnées d’un point(x, y) et dites à l’utilisateur si
            //                        ce point se trouve dans le rectangle R*/






            //                       4 Boucles
            //                       4.1 Compréhension
            //                         Exercice 1
            //                      Qu’affiche le programme suivant ?
            //using System;




            //            int a = 1, b = 0, n = 5;
            //            while (a <= n)
            //                b += a++;
            //            Console.WriteLine(a + " , " + b);
            //        }
            //    }
            //}
            //    Exercice 2
            //Qu’affiche le programme suivant ?
            //using System;
            //namespace tests
            //    {
            //        class MainClass
            //        {
            //            public static void Main(string[]
            //            args)
            //            {
            //                int a = 0, b = 0, c = 0, d = 3, m = 3, n = 4;
            //                for (a = 0; a < m; a++)
            //                {
            //                    d = 0;
            //                    for (b = 0; b < n; b++)
            //                        d += b;
            //                    c += d;
            //                }
            //                Console.WriteLine(a + " , " + b + " , " + c + " , " + d + " . ");
            //            }
            //        }
            //    }
            //    Exercice 3
            //Qu’affiche le programme suivant ?
            //using System;
            //namespace tests
            //    {
            //        class MainClass
            //        {
            //            public static void Main(string[] args)
            //            {
            //                int a, b, c, d;
            //                a = 1; b = 2;
            //                c = a / b;
            //                d = (a == b) ? 3 : 4;
            //                Console.WriteLine(c + " , " + d + " . ");
            //                a = ++b;
            //                b %= 3;
            //                Console.WriteLine(a + " , " + b + " . ");
            //                b = 1;
            //                for (a = 0; a <= 10; a++)
            //                    c = ++b;
            //                Console.WriteLine(a + " , " + b + " , " + c + " , " + d + " . ");
            //            }
            //        }
            //    }
            //4.2 Utilisation de toutes les boucles
            //Les exercices suivants seront rédigés avec les trois types de boucle : tant que, répéter jusqu’à
            //et pour.
            //Exercice 4 - Compte à rebours
            //Ecrire un programme demandant à l’utilisateur de saisir une valeur numérique positive n et
            //affichant toutes les valeurs n, n − 1, . . . , 2, 1, 0.
            //Exercice 5 - Factorielle
            //Ecrire un programme calculant la factorielle(factorielle n = n! = 1 2 . . . n et 0! = 1)
            //d’un nombre saisi par l’utilisateur.
            //4.3 Choix de la boucle la plus appropriée
            //Pour les exercices suivants, vous choisirez la boucle la plus simple et la plus lisible.
            //Exercice 6 - Table de multiplication
            //Ecrire un programme affichant la table de multiplication d’un nombre saisi par l’utilisateur.
            //Exercice 7 - Tables de multiplications
            //Ecrire un programme affichant les tables de multiplications des nombres de 1 à 10 dans un
            //tableau à deux entrées.
            //Exercice 8 - Puissance
            //Ecrire un programme demandant à l’utilisateur de saisir deux valeurs numériques b et n
            //(vérifier que n est positif) et affichant la valeur bn
            //.
            //Exercice 9 - Joli carré
            //Ecrire un programme qui saisit une valeur n et qui affiche le carré suivant(n = 5 dans
            //l’exemple) :
            //n = 5
            //X X X X X
            //X X X X X
            //X X X X X
            //X X X X X
            //X X X X X
            //4.4 Extension de la calculatrice
            //Une calculatrice de poche prend de façon alternée la saisie d’un opérateur et d’un opérande.
            //Si l’utilisateur saisit 3, + et 2, cette calculatrice affiche 5, l’utilisateur a ensuite la possibilité de
            //se servir de 5 comme d’un opérande gauche dans un calcul ultérieur.Si l’utilisateur saisit par
            //la suite et 4, la calculatrice affiche 20. La saisie de la touche = met fin au calcul et affiche un
            //résultat final.
            //Exercice 10 - Calculatrice de poche
            //Implémentez le comportement décrit ci-dessus.
            //Exercice 11 - Puissance
            //Ajoutez l’opérateur $ qui calcule ab, vous vous restreindrez à des valeurs de b entières et
            //positives.
            //Exercice 12 - Opérations unaires
            //Ajoutez les opérations unaires racine carrée et factorielle

        }
    
}

}


   