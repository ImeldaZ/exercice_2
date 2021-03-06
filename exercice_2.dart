part of principa;

exo2_1(List maliste)
{
  int position_plus_long = 0;
  
  for (var i=0; i<maliste.length; i++)
  {
    if(maliste[i].length > maliste[position_plus_long].length)
    {
      position_plus_long =i;
    }   
  }
  print("la phrase la plus longue de la liste est :${maliste[position_plus_long]}");
}

exo2_2(String maphrase) {
 
  int pos_max=0;
  List listeMots =maphrase.split(" ");  //par hypothese que tous les separateurs de mots sont des espaces
 for (var i = 0; i<listeMots.length ; i++ ) 
  { 
    if(listeMots[i].length > listeMots[pos_max].length)
    {
      pos_max = i;
    }
  }
  print("""le mot le plus long dans la phrase est:"${listeMots[pos_max]}" """);
  
}

exo2_3(List uneliste) 
{
  int position_aleatoire = 0;
  List liste_aleatoire = new List();
  
  var rng = new Random();
  while ( liste_aleatoire.length < uneliste.length) 
  {
    position_aleatoire = rng.nextInt(uneliste.length);
    if(!liste_aleatoire.contains( uneliste[position_aleatoire]))
    {
      liste_aleatoire.add( uneliste[position_aleatoire] );
      
    }
  }
  print("liste initiale");
  print(uneliste);
  print("liste Aleatoire");
  print(liste_aleatoire);

}


Map getMembers() {
  Map members = {
    'john@email.com': 'John smith',
    'maximilian@email.com ': 'Maximilian gagnon',
    'brigitte@email.com': 'Brigitte  faye',
    'sara@email.com': 'Sara gagnon',
    'sandra@email.com': 'Sandra smith',
    'jeanpierre@email.com': 'Jean-Pierre Tramblay'
  };
  //print(members);
  return members;
}

Map getSortedMembers(Map members) {
  List membersList = [];
  Map sortedMembers = {};
  
  members.forEach((key, value) {
     membersList.add(value.concat(',${key}'));
  });
  
  membersList.sort(Comparable.compare);

  for (String member in membersList) {
    List memberParts = member.split(',');
    sortedMembers[memberParts[1]] = memberParts[0];
  }
  
  return sortedMembers;
}

Map getSpecificMembers(String letter, Map members) {
  Map specificMembers = {};
  
  members.forEach((key, value) {
     String valueToLower = value.toLowerCase();
     if (valueToLower.startsWith(letter.toLowerCase())) {
       specificMembers[key] = value;
     }
  });  
  
  specificMembers = getSortedMembers(specificMembers);
  
  return specificMembers;
}

afficheMembreTri()
{
Map members = getMembers();
Map sortedMembers = getSortedMembers(members);
print(sortedMembers );
}
afficheMembAvecCarspec(var car)
{
Map members = getMembers();
Map specificMembers = getSpecificMembers(car, members);

print(specificMembers);
}

//exercice 5

Map clubsWithMembers = {
  'Club 1': {
      'Roy': {
        'Prenom': 'john',
        'Email': 'john@email.com'
        
      },
      'Tremblay': {
        'Prenom': 'Maximilian',
        'Email': 'maximilian@email.com'
        
      }
  },
  'Club 2': {
    'Bedart': {
      'Prenom': 'Brigitte',
      'Email': 'brigitte@email.com'
      
    },
    'Gagnon': {
      'Prenom': 'Sara',
      'Email': 'sara@email.com'
      
    }
  },
  'Club 3': {
    'smith': {
      'Prenom':'Sandra',
      'Email': 'sandra@email.com'
      
    },
    'Godbout': {
      'Prenom':'Jean_Pierre',
      'Email': 'jeanpierre@email.com'
      
    }
  }
};

void displayAll() {
  print('Tous:');
  clubsWithMembers.forEach((key, value) {
    print(key.concat(':'));
    value.forEach((keyMember, valueMember) {
      print("   ${keyMember}:");
      valueMember.forEach((keyAttr, valueVal) {
        print("        ${keyAttr}: ${valueVal}");
      });
    });
  });
}

void displayClubs() {
  print('Tous les clubs:');
  clubsWithMembers.forEach((key, value) {
    print(key);
  });
}

void displayMembers() {
  print('Tous les membres:');
  clubsWithMembers.forEach((key, value) {
    print(key.concat(':'));
    value.forEach((keyMember, valueMember) {
      print("   ${keyMember}");   
    });
  });
}

void addNewClub(String clubName) {
  clubsWithMembers[clubName] = {};
}

void addNewMember(String member, String clubName) {
  clubsWithMembers[clubName][member] = {};
}

changeMemberAttr(String clubName, String member, String attr, value) {
  clubsWithMembers[clubName][member][attr] = value;
}

