library principa ;

import 'dart:math';

part 'exercice_2.dart';
void main()
{
  print("\nQuestion_1:\n");
List lesphrases = new List();
lesphrases.add("Prudence est mère de sûreté");
lesphrases.add("Vaut mieux tard que jamais");
lesphrases.add("Qui est riche a beaucoup de parents");
lesphrases.add("Qui veut aller loin ménage sa monture");
exo2_1(lesphrases);


print("\nQuestion_2:\n");
exo2_2("Qui veut aller loin ménage sa monture");

//var rng = new Random();

print("\nQuestion_3:\n");
List liste_enOrdre = [1, 2, 3, 4, 5, 6, 7, 8 , 9];
exo2_3(liste_enOrdre);



print("\nQuestion_4:\n");

print("La liste triée des membres:\n");
afficheMembreTri();
print("\nLa liste des membres dont le nom commmence par le caractere J:");
afficheMembAvecCarspec('J');

print("\nQuestion_5:\n");
displayClubs();
print("club 4 ajouté");
addNewClub('Club 4');
print("\naffichage des clubs apres ajout du club 4\n");
displayClubs();
print("Membre Peter ajouté dans le club 3  et club 4\n");
addNewMember('Peter', 'Club 3');
addNewMember('Peter', 'Club 4');
print("afficher des membres apres ajout du membre Peter dans Club 3\n");
displayMembers();
print("changer les attributs de Gagnon \n");
changeMemberAttr('Club 2', 'Gagnon', 'Prenom', 'Sarita');
print("Afficher Tout apres Traitement:");
displayAll();

 
}
