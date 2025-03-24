# IUTables'O - Documentation

## Table des matières
1. [Introduction](#introduction)
2. [Installation et lancement](#installation-et-lancement)
3. [Fonctionnalités implémentées](#fonctionnalités-implémentées)
4. [Utilisation](#utilisation)
5. [Structure du projet](#structure-du-projet)
6. [API](#api)

---

## Introduction

IUTables'O est une application web permettant de découvrir, noter et commenter des restaurants à Orléans. Elle s'adresse à deux types d'utilisateurs :
- **Visiteurs** : peuvent consulter les restaurants, leurs détails et les avis.
- **Utilisateurs authentifiés** : peuvent ajouter des restaurants à leurs favoris, laisser des avis et gérer leur profil.

L'application utilise une base de données PostgreSQL hébergée sur Supabase, et les données initiales sont chargées à partir d'un fichier JSON (`restaurants_orleans.json`).

---

## Installation et lancement

### Prérequis
- PHP 8.0 ou supérieur
- Composer (pour l'autoloading des classes)
- Un navigateur web moderne

### Étapes d'installation
1. **Cloner le dépôt** :
   ```bash
   git clone https://github.com/votre-repo/joann45-sae_php.git
   cd joann45-sae_php
   ```

2. **Charger les données initiales** :
   - Assurez-vous que le fichier `restaurants_orleans.json` est présent dans le dossier `loadjson/`.
   - Exécutez le script de chargement :
     ```bash
     php provider.php
     ```

3. **Lancer le serveur PHP** :
   ```bash
   php -S localhost:8000
   ```

4. **Accéder à l'application** :
   Ouvrez votre navigateur et accédez à :
   ```
   http://localhost:8000/front-end/index.html
   ```

---

## Fonctionnalités implémentées (mais une partie des fonctionnalités sont seulement implémentées en back-end)

### Pour les visiteurs
- **Visualisation des détails** : Informations détaillées, avis et localisation sur une carte OpenStreetMap.
- **Inscription et connexion** : Formulaire d'inscription et de connexion pour accéder aux fonctionnalités avancées.

### Pour les utilisateurs authentifiés
- **Ajout aux favoris** : Bouton "Cœur" pour ajouter/supprimer un restaurant des favoris.
- **Dépôt d'avis** : Notation (1 à 5 étoiles) et commentaires sur les restaurants.
- **Gestion du profil** : Mise à jour des informations personnelles et mot de passe.
- **Liste des favoris** : Accès rapide aux restaurants marqués comme favoris.

### Fonctionnalités supplémentaires
- **Pagination infinie** : Chargement progressif des restaurants lors du défilement.
- **Carte interactive** : Affichage de la localisation des restaurants avec OpenStreetMap.
- **Tags de cuisine** : Affichage des types de cuisine sous forme de badges.

---

## Utilisation

### Connexion
- Pour accéder aux fonctionnalités avancées, créez un compte via la page **Inscription**.
- Une fois inscrit, connectez-vous via la page **Connexion**.

### Favoris
- Cliquez sur l'icône "Cœur" sur la carte d'un restaurant pour l'ajouter à vos favoris.

### Avis
- Sur la page des détails d'un restaurant, connectez-vous pour laisser un avis ou une note.

---

## Structure du projet

```
joann45-sae_php/
├── README.md
├── AutoLoader.php
├── provider.php
├── api/
│   ├── aime.php
│   ├── auth.php
│   ├── avis.php
│   ├── restaurant.php
│   └── user.php
├── class/
│   └── db/
│       ├── Aime.php
│       ├── Avis.php
│       ├── Restaurant.php
│       ├── SupabaseLoader.php
│       └── User.php
├── front-end/
│   ├── index.html
│   ├── login.html
│   ├── profile.html
│   ├── register.html
│   ├── restaurant-details.html
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── app.js
└── loadjson/
    └── restaurants_orleans.json
```

---

## API

L'application expose plusieurs endpoints pour interagir avec la base de données :

### 1. **Restaurants**
- **GET** `/api/restaurant.php` : Récupère tous les restaurants.
- **GET** `/api/restaurant.php?id={id}` : Récupère un restaurant par son ID.
- **POST** `/api/restaurant.php` : Crée un nouveau restaurant.
- **PUT** `/api/restaurant.php?id={id}` : Met à jour un restaurant.
- **DELETE** `/api/restaurant.php?id={id}` : Supprime un restaurant.

### 2. **Utilisateurs**
- **GET** `/api/user.php` : Récupère tous les utilisateurs.
- **GET** `/api/user.php?id={id}` : Récupère un utilisateur par son ID.
- **POST** `/api/user.php` : Crée un nouvel utilisateur.
- **PUT** `/api/user.php?id={id}` : Met à jour un utilisateur.
- **DELETE** `/api/user.php?id={id}` : Supprime un utilisateur.

### 3. **Avis**
- **GET** `/api/avis.php` : Récupère tous les avis.
- **GET** `/api/avis.php?idR={id}` : Récupère les avis d'un restaurant.
- **POST** `/api/avis.php` : Crée un nouvel avis.
- **PUT** `/api/avis.php?id={id}` : Met à jour un avis.
- **DELETE** `/api/avis.php?id={id}` : Supprime un avis.

### 4. **Favoris**
- **GET** `/api/aime.php` : Récupère tous les favoris.
- **POST** `/api/aime.php` : Ajoute un restaurant aux favoris.
- **DELETE** `/api/aime.php` : Supprime un restaurant des favoris.

### 5. **Authentification**
- **POST** `/api/auth.php?action=register` : Inscription d'un utilisateur.
- **POST** `/api/auth.php?action=login` : Connexion d'un utilisateur.
- **POST** `/api/auth.php?action=logout` : Déconnexion.
- **GET** `/api/auth.php?action=isConnected` : Vérifie si l'utilisateur est connecté.

---

## Equipe
- Fournier Yael
- Ribatchenko Carel
- Raignault Joann
- Dimba-Lau Rocma

---


N'hésitez pas à contribuer ou à signaler des problèmes via les issues du dépôt. Bonne utilisation de IUTables'O ! 🍴🗺️
