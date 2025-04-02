import 'supabase_connection.dart';

class User {
  int? id;
  String? nom;
  String? prenom;
  String? mail;
  String? mdp;
  String? telephone;

  User({this.id, this.nom, this.prenom, this.mail, this.mdp, this.telephone});

  // Getters et Setters pour User
  int? get getId => id;
  set setId(int? value) => id = value;

  String? get getNom => nom;
  set setNom(String? value) => nom = value;

  String? get getPrenom => prenom;
  set setPrenom(String? value) => prenom = value;

  String? get getMail => mail;
  set setMail(String? value) => mail = value;

  String? get getMdp => mdp;
  set setMdp(String? value) => mdp = value;

  String? get getTelephone => telephone;
  set setTelephone(String? value) => telephone = value;

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response =
        await client.from('utilisateur').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
  }

  // Méthode CRUD : Update
  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  // Méthode CRUD : Delete
  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('utilisateur').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
