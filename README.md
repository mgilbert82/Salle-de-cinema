# Création d'un modèle de base de données pour une application de réservation de cinéma

## Besoin Clients:

Le client souhaite une application de réservation de place de cinéma.

Le client possède plusieurs complexes ayant chacune une ou plusieurs salle de projection et pouvant projeter un ou plusieurs films sur des créneaux horaires différents.

Le client souhaite avoir la possibilité de vendre des places sur l'application directement mais également sur place.

En terme d'administration, le client souhaite 2 types de profils :

- Edition, modification et suppression de films/horaires par complexe (accès LOCAL).
- Edition, modification et suppression de films/horaires pour tous les complexes (accès ADMIN).

Le client propose 3 tarifs différents :

- Plein tarif: 9.20€
- Etudiant: 7.60€
- Moins de 14 ans: 5.90€

## Architecture de la base de données :

Identification du besoin de 11 tables comme ci-dessous:

1. Employé:

   - Clé primaire auto-incrémenté
   - Nom
   - Prénom
   - Email
   - Mot de passe

2. Droit employé:

   - Clé primaire auto-incrémenté
   - Rôle employé (ADMIN ou LOCAL)
   - Clé étrangère lié à la clé primaire de la table cinéma
   - Clé étrangère lié à la clé primaire de la table employé

3. Client:

   - Clé primaire auto-incrémenté
   - Nom
   - Prénom
   - Email
   - Mot de passe

4. Cinéma:

   - Clé primaire auto-incrémenté
   - Nom
   - Adresse

5. Salle de cinéma:

   - Clé primaire auto-incrémenté
   - Numéro de la salle
   - Clé étrangère lié à la clé primaire de la table cinéma

6. Film:

   - Clé primaire auto-incrémenté
   - Nom du film

7. Séance:

   - Clé primaire auto-incrémenté
   - Horaire du film (date et heure)
   - Clé étrangère lié à la clé primaire de la table cinéma
   - Clé étrangère lié à la clé primaire de la table film
   - Clé étrangère lié à la clé primaire de la table salle de cinéma

8. Mode de paiement

   - Clé primaire auto-incrémenté
   - Type (sur place ou en ligne)

9. Tarif:

   - Clé primaire auto-incrémenté
   - Nom
   - Prix

10. Réservation:

    - Clé primaire auto-incrémenté
    - Clé étrangère lié à la clé primaire de la table client
    - Clé étrangère lié à la clé primaire de la tables séance

11. Détail de la réservation:
    - Clé primaire auto-incrémenté
    - Clé étrangère lié à la clé primaire de la table réservation
    - Clé étrangère lié à la clé primaire de la table tarif
    - Clé étrangère lié à la clé primaire de la table mode de paiement
    - Nombre de place
    - Montant à la ligne

## Contraintes du projets: utilisation du terminal pour réaliser les requêtes sql.

Création des requêtes :

- Création d'une base de donnée
- Création des tables, des relations et des contraintes
- Intégration de données factices via des requêtes INSERT

## Réalisation d'un diagramme MCD

[Voir le diagramme](https://github.com/mgilbert82/salle-de-cinema/blob/main/Diag%20MCD.jpg)

## Installation de mysql avec Homebrew sur Mac M1 (OS MONTEREY)

Pré-requis: installer homebrew -> se rendre sur le site d'[Homebrew](https://docs.brew.sh/Installation)

Installer mysql via le terminal de commande

```bash
brew install mysql
```

Afin de pouvoir modifier le mot de passe admin de votre mysql, voici quelques étapes à réaliser :

1. Ouvrez et modifiez le fichier (/etc/my.cnf) ou (/etc/mysql/my.cnf), selon votre distribution.
2. Ajouter skip-grant-tables au fichier [mysqld]
3. Redémarrez MySQL avec la commande

```bash
brew services restart mysql
```

4. Pour vous connecter à MySQL, utiliser la commande ci-dessous :

```bash
 mysql -u root -p
```

5. Lancer la commade

```bash
mysql> flush privileges;
```

6. Définissez un nouveau mot de passe avec la commande :

```bash
> mysql ALTER USER 'root'@'localhost' IDENTIFIED BY 'NewPassword';
```

7. Retourner sur le fichier de départ (/etc/my.cnf) et supprimer ou commentez la ligne (avec un #)

```sql
skip-grant-tables
```

8. Redémarrez MySQL avec la commande

```bash
brew services restart mysql
```

9. Vous pourrez maintenant vous connecter avec le nouveau mot de passe

```bash
mysql -u root -p
```

## Sécurité

Création d'un user pour accéder à la base de donnée

```sql
mysql > create user « username »@localhost identified by « password »;
mysql > grant all privileges on « dbname » .\* to « username »@localhost;
mysql > flush privileges;
```

## Sauvegarde complète de sa base de donnée

1. Télécharger l’installateur sur le site de mysql en fonction de votre environnement de travail (windows, macos, linux,...)
2. Installer l’outil sur votre ordinateur
3. Lancer l’application et paramétrer l’environnement mysql avec comme identifiant et mot de passe :

```
User: vscode
Mot de passe : VSCODEmdp78%
```

4. Se rendre sur “Server” puis sur “Data Export”.
5. Sélectionner la base de données à sauvegarder. !Choisir “Dump Structure and Data".
6. Choisir le dossier de destination et cliquer sur Export.

Votre fichier contenant la structure de la base de données ainsi que les données sont maintenant disponibles dans le répertoire choisi au préalable.
