// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromMap(jsonString);

import 'dart:convert';

List<SearchResponse> searchResponseFromMap(String str) => List<SearchResponse>.from(json.decode(str).map((x) => SearchResponse.fromMap(x)));

String searchResponseToMap(List<SearchResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class SearchResponse {
    SearchResponse({
      required  this.weight,
      required  this.id,
      required  this.name,
      required  this.cfaUrl,
      required  this.vetstreetUrl,
      required  this.vcahospitalsUrl,
      required  this.temperament,
      required  this.origin,
      required  this.countryCodes,
      required  this.countryCode,
      required  this.description,
      required  this.lifeSpan,
      required  this.indoor,
      required  this.lap,
      required  this.altNames,
     required   this.adaptability,
     required   this.affectionLevel,
      required  this.childFriendly,
      required  this.dogFriendly,
      required  this.energyLevel,
      required  this.grooming,
      required  this.healthIssues,
      required  this.intelligence,
      required  this.sheddingLevel,
      required  this.socialNeeds,
     required   this.strangerFriendly,
      required  this.vocalisation,
      required  this.experimental,
      required  this.hairless,
      required  this.natural,
      required  this.rare,
      required  this.rex,
      required  this.suppressedTail,
      required  this.shortLegs,
      required  this.wikipediaUrl,
      required  this.hypoallergenic,
      required  this.referenceImageId,
      required  this.catFriendly,
      required  this.bidability,
      required  this.extinct,
    });

    Weight? weight;
    String? id;
    String name;
    String? cfaUrl;
    String? vetstreetUrl;
    String? vcahospitalsUrl;
    String? temperament;
    String? origin;
    String? countryCodes;
    String? countryCode;
    String? description;
    String? lifeSpan;
    int? indoor;
    int? lap;
    String? altNames;
    int? adaptability;
    int? affectionLevel;
    int? childFriendly;
    int? dogFriendly;
    int? energyLevel;
    int? grooming;
    int? healthIssues;
    int? intelligence;
    int? sheddingLevel;
    int? socialNeeds;
    int? strangerFriendly;
    int? vocalisation;
    int? experimental;
    int? hairless;
    int? natural;
    int? rare;
    int? rex;
    int? suppressedTail;
    int? shortLegs;
    String? wikipediaUrl;
    int? hypoallergenic;
    String? referenceImageId;
    int? catFriendly;
    int? bidability;
    int? extinct;

    factory SearchResponse.fromMap(Map<String, dynamic> json) => SearchResponse(
        weight: json["weight"] == null ? null : Weight.fromMap(json["weight"]),
        id: json["id"],
        name: json["name"],
        cfaUrl: json["cfa_url"] == null ? null : json["cfa_url"],
        vetstreetUrl: json["vetstreet_url"] == null ? null : json["vetstreet_url"],
        vcahospitalsUrl: json["vcahospitals_url"] == null ? null : json["vcahospitals_url"],
        temperament: json["temperament"] == null ? null : json["temperament"],
        origin: json["origin"] == null ? null : json["origin"],
        countryCodes: json["country_codes"] == null ? null : json["country_codes"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        description: json["description"] == null ? null : json["description"],
        lifeSpan: json["life_span"] == null ? null : json["life_span"],
        indoor: json["indoor"],
        lap: json["lap"] == null ? null : json["lap"],
        altNames: json["alt_names"] == null ? null : json["alt_names"],
        adaptability: json["adaptability"] == null ? null : json["adaptability"],
        affectionLevel: json["affection_level"] == null ? null : json["affection_level"],
        childFriendly: json["child_friendly"] == null ? null : json["child_friendly"],
        dogFriendly: json["dog_friendly"] == null ? null : json["dog_friendly"],
        energyLevel: json["energy_level"] == null ? null : json["energy_level"],
        grooming: json["grooming"] == null ? null : json["grooming"],
        healthIssues: json["health_issues"] == null ? null : json["health_issues"],
        intelligence: json["intelligence"] == null ? null : json["intelligence"],
        sheddingLevel: json["shedding_level"] == null ? null : json["shedding_level"],
        socialNeeds: json["social_needs"] == null ? null : json["social_needs"],
        strangerFriendly: json["stranger_friendly"] == null ? null : json["stranger_friendly"],
        vocalisation: json["vocalisation"] == null ? null : json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"] == null ? null : json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"] == null ? null : json["reference_image_id"],
        catFriendly: json["cat_friendly"] == null ? null : json["cat_friendly"],
        bidability: json["bidability"] == null ? null : json["bidability"],
        extinct: json["extinct"] == null ? null : json["extinct"],
    );

    Map<String, dynamic> toMap() => {
        "weight": weight == null ? null : weight!.toMap(),
        "id": id,
        "name": name,
        "cfa_url": cfaUrl == null ? null : cfaUrl,
        "vetstreet_url": vetstreetUrl == null ? null : vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl == null ? null : vcahospitalsUrl,
        "temperament": temperament == null ? null : temperament,
        "origin": origin == null ? null : origin,
        "country_codes": countryCodes == null ? null : countryCodes,
        "country_code": countryCode == null ? null : countryCode,
        "description": description == null ? null : description,
        "life_span": lifeSpan == null ? null : lifeSpan,
        "indoor": indoor,
        "lap": lap == null ? null : lap,
        "alt_names": altNames == null ? null : altNames,
        "adaptability": adaptability == null ? null : adaptability,
        "affection_level": affectionLevel == null ? null : affectionLevel,
        "child_friendly": childFriendly == null ? null : childFriendly,
        "dog_friendly": dogFriendly == null ? null : dogFriendly,
        "energy_level": energyLevel == null ? null : energyLevel,
        "grooming": grooming == null ? null : grooming,
        "health_issues": healthIssues == null ? null : healthIssues,
        "intelligence": intelligence == null ? null : intelligence,
        "shedding_level": sheddingLevel == null ? null : sheddingLevel,
        "social_needs": socialNeeds == null ? null : socialNeeds,
        "stranger_friendly": strangerFriendly == null ? null : strangerFriendly,
        "vocalisation": vocalisation == null ? null : vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl == null ? null : wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId == null ? null : referenceImageId,
        "cat_friendly": catFriendly == null ? null : catFriendly,
        "bidability": bidability == null ? null : bidability,
        "extinct": extinct == null ? null : extinct,
    };
}

class Weight {
    Weight({
       required this.imperial,
        required this.metric,
    });

    String imperial;
    String metric;

    factory Weight.fromMap(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
    );

    Map<String, dynamic> toMap() => {
        "imperial": imperial,
        "metric": metric,
    };
}
