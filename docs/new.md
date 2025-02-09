```mermaid
graph TD;
flowchart LR
  classDef actor fill:#f9f,stroke:#333,stroke-width:2px
  classDef usecase fill:# pastelYellow,stroke:#333,stroke-width:2px

  %% Actors
  Etudiant((Étudiant)):::actor
  Visiteur((Visiteur)):::actor
  Professeur((Professeur)):::actor
  Administrateur((Administrateur)):::actor

  %% Use Cases
  ParcourirLesCours([Parcourir les cours]):::usecase
  CreerCompte([Créer un compte]):::usecase
  RechercherCours([Rechercher des cours]):::usecase
  InscrireCours([S'inscrire à un cours]):::usecase
  Det#ailsCours([Afficher les détails du cours]):::usecase
  AccederMesCours([Accéder à mes cours]):::usecase
  CreerCoursProf([Créer un cours]):::usecase
  ModifierCours([Modifier un cours]):::usecase
  SupprimerCours([Supprimer un cours]):::usecase
  StatsCours([Afficher les statistiques du cours]):::usecase
  GérerUtilisateurs([Gérer les utilisateurs]):::usecase
  ValiderComptes([Valider les comptes des professeurs]):::usecase
  GererContenu([Gérer le contenu]):::usecase
  StatsPlateforme([Afficher les statistiques de la plateforme]):::usecase
  SeDeconnecter([Se deconnecter]):::usecase
  Authentification([l'authentification]):::usecase

  %% Relationships
  Etudiant --> ParcourirLesCours
  Etudiant --> AccederMesCours
  Etudiant --> InscrireCours
  Etudiant --> Det#ailsCours
  Etudiant --> CreerCompte
  Etudiant --> RechercherCours
  Visiteur --> ParcourirLesCours
  Visiteur --> CreerCompte
  Visiteur --> RechercherCours
  Professeur --> CreerCoursProf
  Professeur --> ModifierCours
  Professeur --> SupprimerCours
  Professeur --> StatsCours
  Administrateur --> GérerUtilisateurs
  Administrateur --> ValiderComptes
  Administrateur --> GererContenu
  Administrateur --> StatsPlateforme

  %% Authentication includes
  ParcourirLesCours --> Authentification
  CreerCompte --> Authentification
  RechercherCours --> Authentification
  InscrireCours --> Authentification
  AccederMesCours --> Authentification
  Det#ailsCours --> Authentification
  CreerCoursProf --> Authentification
  ModifierCours --> Authentification
  SupprimerCours --> Authentification
  StatsCours --> Authentification
  GérerUtilisateurs --> Authentification
  ValiderComptes --> Authentification
  GererContenu --> Authentification
  StatsPlateforme --> Authentification