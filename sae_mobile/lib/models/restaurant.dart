import 'supabase_connection.dart';

class Restaurant {
  int? id;
  dynamic geoPoint2d;
  dynamic geoShape;
  int? osmId;
  String? type;
  String? name;
  String? operatorName;
  String? brand;
  String? openingHours;
  String? wheelchair;
  List<dynamic>? cuisine;
  bool? vegetarian;
  bool? vegan;
  bool? delivery;
  bool? takeaway;
  List<dynamic>? internetAccess;
  double? stars;
  int? capacity;
  bool? driveThrough;
  String? wikidata;
  String? brandWikidata;
  String? siret;
  String? phone;
  String? website;
  String? facebook;
  String? smoking;
  String? comInsee;
  String? comNom;
  String? region;
  String? codeRegion;
  String? departement;
  String? codeDepartement;
  String? commune;
  String? codeCommune;
  String? osmEdit;

  Restaurant({
    this.id,
    this.geoPoint2d,
    this.geoShape,
    this.osmId,
    this.type,
    this.name,
    this.operatorName,
    this.brand,
    this.openingHours,
    this.wheelchair,
    this.cuisine,
    this.vegetarian,
    this.vegan,
    this.delivery,
    this.takeaway,
    this.internetAccess,
    this.stars,
    this.capacity,
    this.driveThrough,
    this.wikidata,
    this.brandWikidata,
    this.siret,
    this.phone,
    this.website,
    this.facebook,
    this.smoking,
    this.comInsee,
    this.comNom,
    this.region,
    this.codeRegion,
    this.departement,
    this.codeDepartement,
    this.commune,
    this.codeCommune,
    this.osmEdit,
  });

  // Exemple de getter & setter
  int? get getId => id;
  set setId(int? valeur) => id = valeur;
  // ...existing code for other getters/setters...

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').insert(data);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data[0]['id'];
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response =
        await client.from('restaurant').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.data;
  }

  // Méthode CRUD : Update
  static Future<int> update(int id, Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').update(data).eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }

  // Méthode CRUD : Delete
  static Future<int> delete(int id) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').delete().eq('id', id);
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response.count ?? 0;
  }
}
