// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'dart:convert';

Food foodFromJson(String str) => Food.fromJson(json.decode(str));

String foodToJson(Food data) => json.encode(data.toJson());

class Food {
  Food({
    required this.id,
    required this.category,
    required this.description,
    required this.energy,
    required this.protein,
    required this.carbohydrate,
    required this.sugars,
    required this.fiber,
    required this.totalFat,
    required this.fattyAcidsSaturated,
    required this.fattyAcidsMonounsaturated,
    required this.fattyAcidsPolyunsaturated,
    required this.cholesterol,
    required this.water,
    required this.retinol,
    required this.vitaminA,
    required this.caroteneAlpha,
    required this.caroteneBeta,
    required this.cryptoxanthinBeta,
    required this.lycopene,
    required this.luteinZeaxanthin,
    required this.thiamin,
    required this.riboflavin,
    required this.niacin,
    required this.vitaminB6,
    required this.folicAcid,
    required this.folateFood,
    required this.folateDfe,
    required this.folateTotal,
    required this.cholineTotal,
    required this.vitaminB12,
    required this.vitaminB12Added,
    required this.vitaminC,
    required this.vitaminDD2D3,
    required this.vitaminEAlphaTocopherol,
    required this.vitaminEAdded,
    required this.vitaminKPhylloquinone,
    required this.calcium,
    required this.phosphorus,
    required this.magnesium,
    required this.iron,
    required this.zinc,
    required this.copper,
    required this.selenium,
    required this.potassium,
    required this.sodium,
    required this.caffeine,
    required this.theobromine,
    required this.alcohol,
    required this.acid40,
    required this.acid60,
    required this.acid80,
    required this.acid100,
    required this.acid120,
    required this.acid140,
    required this.acid160,
    required this.acid180,
    required this.acid161,
    required this.acid181,
    required this.acid201,
    required this.acid221,
    required this.acid182,
    required this.acid183,
    required this.acid184,
    required this.acid204,
    required this.acid205N3,
    required this.acid225N3,
    required this.acid226N3,
    this.weight = 100,
  });

  final String id;
  final String category;
  final String description;
  final double energy;
  final double protein;
  final double carbohydrate;
  final double sugars;
  final double fiber;
  final double totalFat;
  final double fattyAcidsSaturated;
  final double fattyAcidsMonounsaturated;
  final double fattyAcidsPolyunsaturated;
  final double cholesterol;
  final double water;
  final double retinol;
  final double vitaminA;
  final double caroteneAlpha;
  final double caroteneBeta;
  final double cryptoxanthinBeta;
  final double lycopene;
  final double luteinZeaxanthin;
  final double thiamin;
  final double riboflavin;
  final double niacin;
  final double vitaminB6;
  final double folicAcid;
  final double folateFood;
  final double folateDfe;
  final double folateTotal;
  final double cholineTotal;
  final double vitaminB12;
  final double vitaminB12Added;
  final double vitaminC;
  final double vitaminDD2D3;
  final double vitaminEAlphaTocopherol;
  final double vitaminEAdded;
  final double vitaminKPhylloquinone;
  final double calcium;
  final double phosphorus;
  final double magnesium;
  final double iron;
  final double zinc;
  final double copper;
  final double selenium;
  final double potassium;
  final double sodium;
  final double caffeine;
  final double theobromine;
  final double alcohol;
  final double acid40;
  final double acid60;
  final double acid80;
  final double acid100;
  final double acid120;
  final double acid140;
  final double acid160;
  final double acid180;
  final double acid161;
  final double acid181;
  final double acid201;
  final double acid221;
  final double acid182;
  final double acid183;
  final double acid184;
  final double acid204;
  final double acid205N3;
  final double acid225N3;
  final double acid226N3;
  final double weight;

  Food multiplyByWeight() => Food(
        id: id,
        category: category,
        description: description,
        energy: energy * 0.01 * weight,
        protein: protein * 0.01 * weight,
        carbohydrate: carbohydrate * 0.01 * weight,
        sugars: sugars * 0.01 * weight,
        fiber: fiber * 0.01 * weight,
        totalFat: totalFat * 0.01 * weight,
        fattyAcidsSaturated: fattyAcidsSaturated * 0.01 * weight,
        fattyAcidsMonounsaturated: fattyAcidsMonounsaturated * 0.01 * weight,
        fattyAcidsPolyunsaturated: fattyAcidsPolyunsaturated * 0.01 * weight,
        cholesterol: cholesterol * 0.01 * weight,
        water: water * 0.01 * weight,
        retinol: retinol * 0.01 * weight,
        vitaminA: vitaminA * 0.01 * weight,
        caroteneAlpha: caroteneAlpha * 0.01 * weight,
        caroteneBeta: caroteneBeta * 0.01 * weight,
        cryptoxanthinBeta: cryptoxanthinBeta * 0.01 * weight,
        lycopene: lycopene * 0.01 * weight,
        luteinZeaxanthin: luteinZeaxanthin * 0.01 * weight,
        thiamin: thiamin * 0.01 * weight,
        riboflavin: riboflavin * 0.01 * weight,
        niacin: niacin * 0.01 * weight,
        vitaminB6: vitaminB6 * 0.01 * weight,
        folicAcid: folicAcid * 0.01 * weight,
        folateFood: folateFood * 0.01 * weight,
        folateDfe: folateDfe * 0.01 * weight,
        folateTotal: folateTotal * 0.01 * weight,
        cholineTotal: cholineTotal * 0.01 * weight,
        vitaminB12: vitaminB12 * 0.01 * weight,
        vitaminB12Added: vitaminB12Added * 0.01 * weight,
        vitaminC: vitaminC * 0.01 * weight,
        vitaminDD2D3: vitaminDD2D3 * 0.01 * weight,
        vitaminEAlphaTocopherol: vitaminEAlphaTocopherol * 0.01 * weight,
        vitaminEAdded: vitaminEAdded * 0.01 * weight,
        vitaminKPhylloquinone: vitaminKPhylloquinone * 0.01 * weight,
        calcium: calcium * 0.01 * weight,
        phosphorus: phosphorus * 0.01 * weight,
        magnesium: magnesium * 0.01 * weight,
        iron: iron * 0.01 * weight,
        zinc: zinc * 0.01 * weight,
        copper: copper * 0.01 * weight,
        selenium: selenium * 0.01 * weight,
        potassium: potassium * 0.01 * weight,
        sodium: sodium * 0.01 * weight,
        caffeine: caffeine * 0.01 * weight,
        theobromine: theobromine * 0.01 * weight,
        alcohol: alcohol * 0.01 * weight,
        acid40: acid40 * 0.01 * weight,
        acid60: acid60 * 0.01 * weight,
        acid80: acid80 * 0.01 * weight,
        acid100: acid100 * 0.01 * weight,
        acid120: acid120 * 0.01 * weight,
        acid140: acid140 * 0.01 * weight,
        acid160: acid160 * 0.01 * weight,
        acid180: acid180 * 0.01 * weight,
        acid161: acid161 * 0.01 * weight,
        acid181: acid181 * 0.01 * weight,
        acid201: acid201 * 0.01 * weight,
        acid221: acid221 * 0.01 * weight,
        acid182: acid182 * 0.01 * weight,
        acid183: acid183 * 0.01 * weight,
        acid184: acid184 * 0.01 * weight,
        acid204: acid204 * 0.01 * weight,
        acid205N3: acid205N3 * 0.01 * weight,
        acid225N3: acid225N3 * 0.01 * weight,
        acid226N3: acid226N3 * 0.01 * weight,
        weight: weight,
      );

  Food addWith({required Food food}) => Food(
        id: id,
        category: category,
        description: description,
        energy: energy + food.energy,
        protein: protein + food.protein,
        carbohydrate: carbohydrate + food.carbohydrate,
        sugars: sugars + food.sugars,
        fiber: fiber + food.fiber,
        totalFat: totalFat + food.totalFat,
        fattyAcidsSaturated: fattyAcidsSaturated + food.fattyAcidsSaturated,
        fattyAcidsMonounsaturated:
            fattyAcidsMonounsaturated + food.fattyAcidsMonounsaturated,
        fattyAcidsPolyunsaturated:
            fattyAcidsPolyunsaturated + food.fattyAcidsPolyunsaturated,
        cholesterol: cholesterol + food.cholesterol,
        water: water + food.water,
        retinol: retinol + food.retinol,
        vitaminA: vitaminA + food.vitaminA,
        caroteneAlpha: caroteneAlpha + food.caroteneAlpha,
        caroteneBeta: caroteneBeta + food.caroteneBeta,
        cryptoxanthinBeta: cryptoxanthinBeta + food.cryptoxanthinBeta,
        lycopene: lycopene + food.lycopene,
        luteinZeaxanthin: luteinZeaxanthin + food.luteinZeaxanthin,
        thiamin: thiamin + food.thiamin,
        riboflavin: riboflavin + food.riboflavin,
        niacin: niacin + food.niacin,
        vitaminB6: vitaminB6 + food.vitaminB6,
        folicAcid: folicAcid + food.folicAcid,
        folateFood: folateFood + food.folateFood,
        folateDfe: folateDfe + food.folateDfe,
        folateTotal: folateTotal + food.folateTotal,
        cholineTotal: cholineTotal + food.cholineTotal,
        vitaminB12: vitaminB12 + food.vitaminB12,
        vitaminB12Added: vitaminB12Added + food.vitaminB12Added,
        vitaminC: vitaminC + food.vitaminC,
        vitaminDD2D3: vitaminDD2D3 + food.vitaminDD2D3,
        vitaminEAlphaTocopherol:
            vitaminEAlphaTocopherol + food.vitaminEAlphaTocopherol,
        vitaminEAdded: vitaminEAdded + food.vitaminEAdded,
        vitaminKPhylloquinone:
            vitaminKPhylloquinone + food.vitaminKPhylloquinone,
        calcium: calcium + food.calcium,
        phosphorus: phosphorus + food.phosphorus,
        magnesium: magnesium + food.magnesium,
        iron: iron + food.iron,
        zinc: zinc + food.zinc,
        copper: copper + food.copper,
        selenium: selenium + food.selenium,
        potassium: potassium + food.potassium,
        sodium: sodium + food.sodium,
        caffeine: caffeine + food.caffeine,
        theobromine: theobromine + food.theobromine,
        alcohol: alcohol + food.alcohol,
        acid40: acid40 + food.acid40,
        acid60: acid60 + food.acid60,
        acid80: acid80 + food.acid80,
        acid100: acid100 + food.acid100,
        acid120: acid120 + food.acid120,
        acid140: acid140 + food.acid140,
        acid160: acid160 + food.acid160,
        acid180: acid180 + food.acid180,
        acid161: acid161 + food.acid161,
        acid181: acid181 + food.acid181,
        acid201: acid201 + food.acid201,
        acid221: acid221 + food.acid221,
        acid182: acid182 + food.acid182,
        acid183: acid183 + food.acid183,
        acid184: acid184 + food.acid184,
        acid204: acid204 + food.acid204,
        acid205N3: acid205N3 + food.acid205N3,
        acid225N3: acid225N3 + food.acid225N3,
        acid226N3: acid226N3 + food.acid226N3,
        weight: weight + food.weight,
      );

  Food copyWith({
    String? id,
    String? category,
    String? description,
    double? energy,
    double? protein,
    double? carbohydrate,
    double? sugars,
    double? fiber,
    double? totalFat,
    double? fattyAcidsSaturated,
    double? fattyAcidsMonounsaturated,
    double? fattyAcidsPolyunsaturated,
    double? cholesterol,
    double? water,
    double? retinol,
    double? vitaminA,
    double? caroteneAlpha,
    double? caroteneBeta,
    double? cryptoxanthinBeta,
    double? lycopene,
    double? luteinZeaxanthin,
    double? thiamin,
    double? riboflavin,
    double? niacin,
    double? vitaminB6,
    double? folicAcid,
    double? folateFood,
    double? folateDfe,
    double? folateTotal,
    double? cholineTotal,
    double? vitaminB12,
    double? vitaminB12Added,
    double? vitaminC,
    double? vitaminDD2D3,
    double? vitaminEAlphaTocopherol,
    double? vitaminEAdded,
    double? vitaminKPhylloquinone,
    double? calcium,
    double? phosphorus,
    double? magnesium,
    double? iron,
    double? zinc,
    double? copper,
    double? selenium,
    double? potassium,
    double? sodium,
    double? caffeine,
    double? theobromine,
    double? alcohol,
    double? acid40,
    double? acid60,
    double? acid80,
    double? acid100,
    double? acid120,
    double? acid140,
    double? acid160,
    double? acid180,
    double? acid161,
    double? acid181,
    double? acid201,
    double? acid221,
    double? acid182,
    double? acid183,
    double? acid184,
    double? acid204,
    double? acid205N3,
    double? acid225N3,
    double? acid226N3,
    double? weight,
  }) =>
      Food(
        id: id ?? this.id,
        category: category ?? this.category,
        description: description ?? this.description,
        energy: energy ?? this.energy,
        protein: protein ?? this.protein,
        carbohydrate: carbohydrate ?? this.carbohydrate,
        sugars: sugars ?? this.sugars,
        fiber: fiber ?? this.fiber,
        totalFat: totalFat ?? this.totalFat,
        fattyAcidsSaturated: fattyAcidsSaturated ?? this.fattyAcidsSaturated,
        fattyAcidsMonounsaturated:
            fattyAcidsMonounsaturated ?? this.fattyAcidsMonounsaturated,
        fattyAcidsPolyunsaturated:
            fattyAcidsPolyunsaturated ?? this.fattyAcidsPolyunsaturated,
        cholesterol: cholesterol ?? this.cholesterol,
        water: water ?? this.water,
        retinol: retinol ?? this.retinol,
        vitaminA: vitaminA ?? this.vitaminA,
        caroteneAlpha: caroteneAlpha ?? this.caroteneAlpha,
        caroteneBeta: caroteneBeta ?? this.caroteneBeta,
        cryptoxanthinBeta: cryptoxanthinBeta ?? this.cryptoxanthinBeta,
        lycopene: lycopene ?? this.lycopene,
        luteinZeaxanthin: luteinZeaxanthin ?? this.luteinZeaxanthin,
        thiamin: thiamin ?? this.thiamin,
        riboflavin: riboflavin ?? this.riboflavin,
        niacin: niacin ?? this.niacin,
        vitaminB6: vitaminB6 ?? this.vitaminB6,
        folicAcid: folicAcid ?? this.folicAcid,
        folateFood: folateFood ?? this.folateFood,
        folateDfe: folateDfe ?? this.folateDfe,
        folateTotal: folateTotal ?? this.folateTotal,
        cholineTotal: cholineTotal ?? this.cholineTotal,
        vitaminB12: vitaminB12 ?? this.vitaminB12,
        vitaminB12Added: vitaminB12Added ?? this.vitaminB12Added,
        vitaminC: vitaminC ?? this.vitaminC,
        vitaminDD2D3: vitaminDD2D3 ?? this.vitaminDD2D3,
        vitaminEAlphaTocopherol:
            vitaminEAlphaTocopherol ?? this.vitaminEAlphaTocopherol,
        vitaminEAdded: vitaminEAdded ?? this.vitaminEAdded,
        vitaminKPhylloquinone:
            vitaminKPhylloquinone ?? this.vitaminKPhylloquinone,
        calcium: calcium ?? this.calcium,
        phosphorus: phosphorus ?? this.phosphorus,
        magnesium: magnesium ?? this.magnesium,
        iron: iron ?? this.iron,
        zinc: zinc ?? this.zinc,
        copper: copper ?? this.copper,
        selenium: selenium ?? this.selenium,
        potassium: potassium ?? this.potassium,
        sodium: sodium ?? this.sodium,
        caffeine: caffeine ?? this.caffeine,
        theobromine: theobromine ?? this.theobromine,
        alcohol: alcohol ?? this.alcohol,
        acid40: acid40 ?? this.acid40,
        acid60: acid60 ?? this.acid60,
        acid80: acid80 ?? this.acid80,
        acid100: acid100 ?? this.acid100,
        acid120: acid120 ?? this.acid120,
        acid140: acid140 ?? this.acid140,
        acid160: acid160 ?? this.acid160,
        acid180: acid180 ?? this.acid180,
        acid161: acid161 ?? this.acid161,
        acid181: acid181 ?? this.acid181,
        acid201: acid201 ?? this.acid201,
        acid221: acid221 ?? this.acid221,
        acid182: acid182 ?? this.acid182,
        acid183: acid183 ?? this.acid183,
        acid184: acid184 ?? this.acid184,
        acid204: acid204 ?? this.acid204,
        acid205N3: acid205N3 ?? this.acid205N3,
        acid225N3: acid225N3 ?? this.acid225N3,
        acid226N3: acid226N3 ?? this.acid226N3,
        weight: weight ?? this.weight,
      );

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["_id"].toString(),
        category: json["category"].toString(),
        description: json["description"].toString(),
        energy: json["energy"].toDouble(),
        protein: json["protein"].toDouble(),
        carbohydrate: json["carbohydrate"].toDouble(),
        sugars: json["sugars"].toDouble(),
        fiber: json["fiber"].toDouble(),
        totalFat: json["total_fat"].toDouble(),
        fattyAcidsSaturated: json["fatty_acids_saturated"].toDouble(),
        fattyAcidsMonounsaturated:
            json["fatty_acids_monounsaturated"].toDouble(),
        fattyAcidsPolyunsaturated:
            json["fatty_acids_polyunsaturated"].toDouble(),
        cholesterol: json["cholesterol"].toDouble(),
        water: json["water"].toDouble(),
        retinol: json["retinol"].toDouble(),
        vitaminA: json["vitamin_a"].toDouble(),
        caroteneAlpha: json["carotene_alpha"].toDouble(),
        caroteneBeta: json["carotene_beta"].toDouble(),
        cryptoxanthinBeta: json["cryptoxanthin_beta"].toDouble(),
        lycopene: json["lycopene"].toDouble(),
        luteinZeaxanthin: json["lutein_zeaxanthin"].toDouble(),
        thiamin: json["thiamin"].toDouble(),
        riboflavin: json["riboflavin"].toDouble(),
        niacin: json["niacin"].toDouble(),
        vitaminB6: json["vitamin_b_6"].toDouble(),
        folicAcid: json["folic_acid"].toDouble(),
        folateFood: json["folate_food"].toDouble(),
        folateDfe: json["folate_dfe"].toDouble(),
        folateTotal: json["folate_total"].toDouble(),
        cholineTotal: json["choline_total"].toDouble(),
        vitaminB12: json["vitamin_b_12"].toDouble(),
        vitaminB12Added: json["vitamin_b_12_added"].toDouble(),
        vitaminC: json["vitamin_c"].toDouble(),
        vitaminDD2D3: json["vitamin_d_d2_d3"].toDouble(),
        vitaminEAlphaTocopherol: json["vitamin_e_alpha_tocopherol"].toDouble(),
        vitaminEAdded: json["vitamin_e_added"].toDouble(),
        vitaminKPhylloquinone: json["vitamin_k_phylloquinone"].toDouble(),
        calcium: json["calcium"].toDouble(),
        phosphorus: json["phosphorus"].toDouble(),
        magnesium: json["magnesium"].toDouble(),
        iron: json["iron"].toDouble(),
        zinc: json["zinc"].toDouble(),
        copper: json["copper"].toDouble(),
        selenium: json["selenium"].toDouble(),
        potassium: json["potassium"].toDouble(),
        sodium: json["sodium"].toDouble(),
        caffeine: json["caffeine"].toDouble(),
        theobromine: json["theobromine"].toDouble(),
        alcohol: json["alcohol"].toDouble(),
        acid40: json["acid_4_0"].toDouble(),
        acid60: json["acid_6_0"].toDouble(),
        acid80: json["acid_8_0"].toDouble(),
        acid100: json["acid_10_0"].toDouble(),
        acid120: json["acid_12_0"].toDouble(),
        acid140: json["acid_14_0"].toDouble(),
        acid160: json["acid_16_0"].toDouble(),
        acid180: json["acid_18_0"].toDouble(),
        acid161: json["acid_16_1"].toDouble(),
        acid181: json["acid_18_1"].toDouble(),
        acid201: json["acid_20_1"].toDouble(),
        acid221: json["acid_22_1"].toDouble(),
        acid182: json["acid_18_2"].toDouble(),
        acid183: json["acid_18_3"].toDouble(),
        acid184: json["acid_18_4"].toDouble(),
        acid204: json["acid_20_4"].toDouble(),
        acid205N3: json["acid_20_5_n_3"].toDouble(),
        acid225N3: json["acid_22_5_n_3"].toDouble(),
        acid226N3: json["acid_22_6_n_3"].toDouble(),
        weight:
            json["weight"] != null ? json['weight'].toDouble() : 100.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "category": category,
        "description": description,
        "energy": energy,
        "protein": protein,
        "carbohydrate": carbohydrate,
        "sugars": sugars,
        "fiber": fiber,
        "total_fat": totalFat,
        "fatty_acids_saturated": fattyAcidsSaturated,
        "fatty_acids_monounsaturated": fattyAcidsMonounsaturated,
        "fatty_acids_polyunsaturated": fattyAcidsPolyunsaturated,
        "cholesterol": cholesterol,
        "water": water,
        "retinol": retinol,
        "vitamin_a": vitaminA,
        "carotene_alpha": caroteneAlpha,
        "carotene_beta": caroteneBeta,
        "cryptoxanthin_beta": cryptoxanthinBeta,
        "lycopene": lycopene,
        "lutein_zeaxanthin": luteinZeaxanthin,
        "thiamin": thiamin,
        "riboflavin": riboflavin,
        "niacin": niacin,
        "vitamin_b_6": vitaminB6,
        "folic_acid": folicAcid,
        "folate_food": folateFood,
        "folate_dfe": folateDfe,
        "folate_total": folateTotal,
        "choline_total": cholineTotal,
        "vitamin_b_12": vitaminB12,
        "vitamin_b_12_added": vitaminB12Added,
        "vitamin_c": vitaminC,
        "vitamin_d_d2_d3": vitaminDD2D3,
        "vitamin_e_alpha_tocopherol": vitaminEAlphaTocopherol,
        "vitamin_e_added": vitaminEAdded,
        "vitamin_k_phylloquinone": vitaminKPhylloquinone,
        "calcium": calcium,
        "phosphorus": phosphorus,
        "magnesium": magnesium,
        "iron": iron,
        "zinc": zinc,
        "copper": copper,
        "selenium": selenium,
        "potassium": potassium,
        "sodium": sodium,
        "caffeine": caffeine,
        "theobromine": theobromine,
        "alcohol": alcohol,
        "acid_4_0": acid40,
        "acid_6_0": acid60,
        "acid_8_0": acid80,
        "acid_10_0": acid100,
        "acid_12_0": acid120,
        "acid_14_0": acid140,
        "acid_16_0": acid160,
        "acid_18_0": acid180,
        "acid_16_1": acid161,
        "acid_18_1": acid181,
        "acid_20_1": acid201,
        "acid_22_1": acid221,
        "acid_18_2": acid182,
        "acid_18_3": acid183,
        "acid_18_4": acid184,
        "acid_20_4": acid204,
        "acid_20_5_n_3": acid205N3,
        "acid_22_5_n_3": acid225N3,
        "acid_22_6_n_3": acid226N3,
        "weight": weight,
      };
}
