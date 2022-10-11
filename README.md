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

(voir annexe)

## Sécurité

Création d'un user pour accéder à la base de donnée

```sql
mysql > create user « username »@localhost identified by « password »;
mysql > grant all privileges on « dbname » .\* to « username »@localhost;
mysql > flush privileges;
```
