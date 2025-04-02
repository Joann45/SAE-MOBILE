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

  // Getters et Setters pour Restaurant
  int? get getId => id;
  set setId(int? value) => id = value;

  dynamic get getGeoPoint2d => geoPoint2d;
  set setGeoPoint2d(dynamic value) => geoPoint2d = value;

  dynamic get getGeoShape => geoShape;
  set setGeoShape(dynamic value) => geoShape = value;

  int? get getOsmId => osmId;
  set setOsmId(int? value) => osmId = value;

  String? get getType => type;
  set setType(String? value) => type = value;

  String? get getName => name;
  set setName(String? value) => name = value;

  String? get getOperatorName => operatorName;
  set setOperatorName(String? value) => operatorName = value;

  String? get getBrand => brand;
  set setBrand(String? value) => brand = value;

  String? get getOpeningHours => openingHours;
  set setOpeningHours(String? value) => openingHours = value;

  String? get getWheelchair => wheelchair;
  set setWheelchair(String? value) => wheelchair = value;

  List<dynamic>? get getCuisine => cuisine;
  set setCuisine(List<dynamic>? value) => cuisine = value;

  bool? get getVegetarian => vegetarian;
  set setVegetarian(bool? value) => vegetarian = value;

  bool? get getVegan => vegan;
  set setVegan(bool? value) => vegan = value;

  bool? get getDelivery => delivery;
  set setDelivery(bool? value) => delivery = value;

  bool? get getTakeaway => takeaway;
  set setTakeaway(bool? value) => takeaway = value;

  List<dynamic>? get getInternetAccess => internetAccess;
  set setInternetAccess(List<dynamic>? value) => internetAccess = value;

  double? get getStars => stars;
  set setStars(double? value) => stars = value;

  int? get getCapacity => capacity;
  set setCapacity(int? value) => capacity = value;

  bool? get getDriveThrough => driveThrough;
  set setDriveThrough(bool? value) => driveThrough = value;

  String? get getWikidata => wikidata;
  set setWikidata(String? value) => wikidata = value;

  String? get getBrandWikidata => brandWikidata;
  set setBrandWikidata(String? value) => brandWikidata = value;

  String? get getSiret => siret;
  set setSiret(String? value) => siret = value;

  String? get getPhone => phone;
  set setPhone(String? value) => phone = value;

  String? get getWebsite => website;
  set setWebsite(String? value) => website = value;

  String? get getFacebook => facebook;
  set setFacebook(String? value) => facebook = value;

  String? get getSmoking => smoking;
  set setSmoking(String? value) => smoking = value;

  String? get getComInsee => comInsee;
  set setComInsee(String? value) => comInsee = value;

  String? get getComNom => comNom;
  set setComNom(String? value) => comNom = value;

  String? get getRegion => region;
  set setRegion(String? value) => region = value;

  String? get getCodeRegion => codeRegion;
  set setCodeRegion(String? value) => codeRegion = value;

  String? get getDepartement => departement;
  set setDepartement(String? value) => departement = value;

  String? get getCodeDepartement => codeDepartement;
  set setCodeDepartement(String? value) => codeDepartement = value;

  String? get getCommune => commune;
  set setCommune(String? value) => commune = value;

  String? get getCodeCommune => codeCommune;
  set setCodeCommune(String? value) => codeCommune = value;

  String? get getOsmEdit => osmEdit;
  set setOsmEdit(String? value) => osmEdit = value;

  // Méthode CRUD : Create
  static Future<int?> create(Map<String, dynamic> data) async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').insert(data);
    //final err = (response as dynamic).error;
    //if (err != null) throw Exception(err.message);
    return response;
  }

  // Méthode CRUD : Read (getById)
  static Future<Map<String, dynamic>?> getById(int id) async {
    final client = SupabaseConnection.getClient();
    final response =
        await client.from('restaurant').select().eq('id', id).single();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
  }

  // Méthode CRUD : Read (getAll)
  static Future<List<dynamic>> getAll() async {
    final client = SupabaseConnection.getClient();
    final response = await client.from('restaurant').select();
    final err = (response as dynamic).error;
    if (err != null) throw Exception(err.message);
    return response;
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
