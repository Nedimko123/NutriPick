//Here we have the list of all the nutrients
import '../models/food_model.dart';
import '../models/nutrient.dart';

List<Nutrient> allNutrients({required Food food}) {
  return [
    Nutrient(
      nutrientValue: food.energy,
      nutrientName: "Energy",
      nutrientDescription:
          "Food energy is chemical energy that animals (including humans) derive from their food to sustain their metabolism, including their muscular activity.",
      nutrientMeasurementType: "kcal",
      nutrientLimit: 2000,
    ),
    Nutrient(
      nutrientValue: food.carbohydrate,
      nutrientName: "Carbohydrate",
      nutrientDescription:
          "In food science and in many informal contexts, the term carbohydrate often means any food that is particularly rich in the complex carbohydrate starch (such as cereals, bread and pasta) or simple carbohydrates, such as sugar (found in candy, jams, and desserts). Carbohydrates are found in wide variety of foods. The important sources are cereals (wheat, maize, rice), potatoes, sugarcane, fruits, table sugar(sucrose), bread, milk, etc. Starch and sugar are the important carbohydrates in our diet. Starch is abundant in potatoes, maize, rice and other cereals. Sugar appears in our diet mainly as sucrose(table sugar) which is added to drinks and many prepared foods such as jam, biscuits and cakes. Glucose and fructose are found naturally in many fruits and some vegetables. Glycogen is carbohydrate found in the liver and muscles (as animal source). Cellulose in the cell wall of all plant tissue is a carbohydrate. It is important in our diet as fibre which helps to maintain a healthy digestive system. Measured in grams (g) by difference.",
      nutrientMeasurementType: "g",
      nutrientLimit: 250,
    ),
    Nutrient(
      nutrientValue: food.sugars,
      nutrientName: "Sugars, total",
      nutrientDescription:
          "Sugar is the generalized name for sweet, short-chain, soluble carbohydrates, many of which are used in food. They are composed of carbon, hydrogen, and oxygen. There are various types of sugar derived from different sources. Simple sugars are called monosaccharides and include glucose (also known as dextrose), fructose, and galactose. The table or granulated sugar most customarily used as food is sucrose, a disaccharide. (In the body, sucrose hydrolyses into fructose and glucose.) Other disaccharides include maltose and lactose. Longer chains of sugars are called oligosaccharides. Chemically-different substances may also have a sweet taste, but are not classified as sugars. Some are used as lower-calorie food substitutes for sugar, described as artificial sweeteners. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 36,
      isReverseLimit: true,
    ),
    Nutrient(
      nutrientValue: food.fiber,
      nutrientName: "Fiber, total dietary",
      nutrientDescription:
          "Dietary fiber or roughage is the indigestible portion of food derived from plants. It has two main components: soluble fiber and insoluble fiber. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 25,
    ),
    Nutrient(
      nutrientValue: food.water,
      nutrientName: "Water",
      nutrientDescription:
          "The amount of water in the food. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 4000,
    ),
    Nutrient(
      nutrientValue: food.protein,
      nutrientName: "Protein",
      nutrientDescription:
          "Proteins are essential nutrients for the human body. They are one of the building blocks of body tissue, and can also serve as a fuel source. As a fuel, proteins provide as much energy density as carbohydrates: 4 kcal (17 kJ) per gram; in contrast, lipids provide 9 kcal (37 kJ) per gram. There are nine essential amino acids which humans must obtain from their diet in order to prevent protein-energy malnutrition and resulting death. Humans need the essential amino acids in certain ratios. Dietary sources of protein include both animals and plants: meats, dairy products, fish and eggs as well as grains, legumes and nuts. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 70,
    ),
    Nutrient(
      nutrientValue: food.totalFat,
      nutrientName: "Total Fat",
      nutrientDescription:
          "Lipids comprise a group of naturally occurring molecules that include fats, waxes, sterols, fat-soluble vitamins (such as vitamins A, D, E, and K), monoglycerides, diglycerides, triglycerides, phospholipids, and others. The main biological functions of lipids include storing energy, signaling, and acting as structural components of cell membranes. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 40,
    ),
    Nutrient(
      nutrientValue: food.fattyAcidsSaturated,
      nutrientName: "Fatty acids, total saturated",
      nutrientDescription:
          "A saturated fat is a type of fat in which the fatty acids all have single bonds. Measured in grams (g).",
      nutrientMeasurementType: "g",
      nutrientLimit: 10,
      isReverseLimit: true,
    ),
    Nutrient(
      nutrientValue: food.fattyAcidsMonounsaturated,
      nutrientName: "Fatty acids, total monounsaturated",
      nutrientDescription:
          "From a chemical standpoint, monounsaturated fats are simply fat molecules that have one unsaturated carbon bond in the molecule, this is also called a double bond. Oils that contain monounsaturated fats are typically liquid at room temperature but start to turn solid when chilled.",
      nutrientMeasurementType: "g",
      nutrientLimit: 20,
    ),
    Nutrient(
      nutrientValue: food.fattyAcidsPolyunsaturated,
      nutrientName: "Fatty acids, total polyunsaturated",
      nutrientDescription:
          "Polyunsaturated fat is a type of dietary fat. It is one of the healthy fats, along with monounsaturated fat.  Polyunsaturated fat is found in plant and animal foods, such as salmon, vegetable oils, and some nuts and seeds. Eating moderate amounts of polyunsaturated (and monounsaturated) fat in place of saturated and trans fats can benefit your health.  Polyunsaturated fat is different than saturated fat and trans fat. These unhealthy fats can increase your risk for heart disease and other health problems.",
      nutrientMeasurementType: "g",
      nutrientLimit: 10,
    ),
    Nutrient(
      nutrientValue: food.cholesterol,
      nutrientName: "Cholesterol",
      nutrientDescription:
          "An organic molecule that is a sterol (or modified steroid), a type of lipid molecule, and is biosynthesized by all animal cells, because it is an essential structural component of all animal cell membranes; essential to maintain both membrane structural integrity and fluidity. Cholesterol enables animal cells to dispense with a cell wall (to protect membrane integrity and cell viability), thereby allowing animal cells to change shape and animals to move (unlike bacteria and plant cells, which are restricted by their cell walls). Since all animal cells manufacture cholesterol, all animal-based foods contain cholesterol in varying amounts. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 300,
      isReverseLimit: true,
    ),
    Nutrient(
      nutrientValue: food.caroteneAlpha,
      nutrientName: "Carotene, alpha",
      nutrientDescription:
          "Alpha Carotene is a form of carotene with a Beta-ionone ring at one end and an Alpha-ionone ring at the opposite end. It is the second most common form of carotene. Alpha Carotene is common in yellow-orange and dark-green vegetables. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 21600,
    ),
    Nutrient(
      nutrientValue: food.caroteneBeta,
      nutrientName: "Carotene, beta",
      nutrientDescription:
          "An organic, strongly colored red-orange pigment abundant in plants and fruits. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 10000,
    ),
    Nutrient(
      nutrientValue: food.cholineTotal,
      nutrientName: "Choline, total",
      nutrientDescription:
          "Choline is a nutrient that is found in many foods. Your brain and nervous system need it to regulate memory, mood, muscle control, and other functions. You also need choline to form the membranes that surround your body’s cells. You can make a small amount of choline in your liver, but most of the choline in your body comes from the food you eat.",
      nutrientMeasurementType: "mg",
      nutrientLimit: 550,
    ),
    Nutrient(
      nutrientValue: food.cryptoxanthinBeta,
      nutrientName: "Cryptoxanthin, beta",
      nutrientDescription:
          "Cryptoxanthin is a natural carotenoid pigment. It has been isolated from a variety of sources including the petals and flowers of plants in the genus Physalis, orange rind, papaya, egg yolk, butter, apples, and bovine blood serum. In the human body, cryptoxanthin is converted to vitamin A (retinol) and is, therefore, considered a provitamin A. As with other carotenoids, cryptoxanthin is an antioxidant and may help prevent free radical damage to cells and DNA, as well as stimulate the repair of oxidative damage to DNA. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
    ),
    Nutrient(
      nutrientValue: food.folateDfe,
      nutrientName: "Folate, DFE",
      nutrientDescription:
          "Folate is a B-vitamin that is naturally present in many foods. Your body needs folate to make DNA and other genetic material. Your body also needs folate for your cells to divide. A form of folate, called folic acid, is used in fortified foods and most dietary supplements.",
      nutrientMeasurementType: "mcg_DFE",
    ),
    Nutrient(
      nutrientValue: food.folateFood,
      nutrientName: "Folate, food",
      nutrientDescription:
          "Folate is a B-vitamin that is naturally present in many foods. Your body needs folate to make DNA and other genetic material. Your body also needs folate for your cells to divide. A form of folate, called folic acid, is used in fortified foods and most dietary supplements.",
      nutrientMeasurementType: "mcg",
    ),
    Nutrient(
      nutrientValue: food.folateTotal,
      nutrientName: "Folate, total",
      nutrientDescription:
          "Folate is a B-vitamin that is naturally present in many foods. Your body needs folate to make DNA and other genetic material. Your body also needs folate for your cells to divide. A form of folate, called folic acid, is used in fortified foods and most dietary supplements.",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 400,
    ),
    Nutrient(
      nutrientValue: food.folicAcid,
      nutrientName: "Folic acid",
      nutrientDescription:
          "Folic acid is a B vitamin. It helps the body make healthy new cells. Everyone needs folic acid. For women who may get pregnant, it is really important. Getting enough folic acid before and during pregnancy can prevent major birth defects of her baby's brain or spine.  Foods with folic acid in them include:      Leafy green vegetables     Fruits     Dried beans, peas, and nuts     Enriched breads, cereals and other grain products  If you don't get enough folic acid from the foods you eat, you can also take it as a dietary supplement.",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 400,
    ),
    Nutrient(
      nutrientValue: food.luteinZeaxanthin,
      nutrientName: "Lutein + zeaxanthin",
      nutrientDescription:
          "Lutein is synthesized only by plants and like other xanthophylls is found in high quantities in green leafy vegetables such as spinach, kale and yellow carrots. Zeaxanthin is one of the most common carotenoid alcohols found in nature. It is important in the xanthophyll cycle. Synthesized in plants and some micro-organisms, it is the pigment that gives paprika (made from bell peppers), corn, saffron, wolfberries, and many other plants and microbes their characteristic color. This combined quantity of these two compounds is measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 10000,
    ),
    Nutrient(
      nutrientValue: food.lycopene,
      nutrientName: "Lycopene",
      nutrientDescription:
          "Lycopene is a bright red carotene and carotenoid pigment and phytochemical found in tomatoes and other red fruits and vegetables, such as red carrots, watermelons, gac, and papayas, although not in strawberries, or cherries. Although lycopene is chemically a carotene, it has no vitamin A activity. Foods that are not red may also contain lycopene, such as asparagus and parsley. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 10000,
    ),
    Nutrient(
      nutrientValue: food.niacin,
      nutrientName: "Niacin",
      nutrientDescription:
          "Also known as vitamin B3 and nicotinic acid, is an organic compound with the formula C6H5NO 2 and, depending on the definition used, one of the 20 to 80 essential human nutrients. Measured in miligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 18,
    ),
    Nutrient(
      nutrientValue: food.retinol,
      nutrientName: "Retinol",
      nutrientDescription:
          "Retinol, also known as Vitamin A1, is a vitamin found in food and used as a dietary supplement. As a supplement it is used to treat and prevent vitamin A deficiency. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 700,
    ),
    Nutrient(
      nutrientValue: food.riboflavin,
      nutrientName: "Riboflavin",
      nutrientDescription:
          "Riboflavin, also known as vitamin B2, is a vitamin found in food and used as a dietary supplement. It is nearly always well tolerated. Normal doses are safe during pregnancy. Riboflavin is in the vitamin B group. It is required by the body for cellular respiration. Food sources include eggs, green vegetables, milk, and meat. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 1.6,
    ),
    Nutrient(
      nutrientValue: food.thiamin,
      nutrientName: "Thiamin",
      nutrientDescription:
          "Thiamin (or thiamine) is one of the water-soluble B vitamins. It is also known as vitamin B1. Thiamin is naturally present in some foods, added to some food products, and available as a dietary supplement. This vitamin plays a critical role in energy metabolism and, therefore, in the growth, development, and function of cells. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 1.4,
    ),
    Nutrient(
      nutrientValue: food.vitaminA,
      nutrientName: "Vitamin A, RAE",
      nutrientDescription:
          "Vitamin A is a fat soluble vitamin that is also a powerful antioxidant. Vitamin A plays a critical role in maintaining healthy vision, neurological function, healthy skin, and more. Measured in retinol activity equivalents (micrograms, or mcg).",
      nutrientMeasurementType: "mcg_RAE",
      nutrientLimit: 600,
    ),
    Nutrient(
      nutrientValue: food.vitaminB12,
      nutrientName: "Vitamin B-12",
      nutrientDescription:
          "Vitamin B12, also called cobalamin, is a water-soluble vitamin that has a key role in the normal functioning of the brain and nervous system, and the formation of red blood cells. It is one of eight B vitamins. It is involved in the metabolism of every cell of the human body, especially affecting DNA synthesis, fatty acid and amino acid metabolism. No fungi, plants, nor animals (including humans) are capable of producing vitamin B12. Only bacteria and archaea have the enzymes needed for its synthesis. Proved sources of B12 are animal products (meat, fish, dairy products) and supplements. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 6,
    ),
    Nutrient(
      nutrientValue: food.vitaminB12Added,
      nutrientName: "Vitamin B-12, added",
      nutrientDescription:
          "Vitamin B12, also called cobalamin, is a water-soluble vitamin that has a key role in the normal functioning of the brain and nervous system, and the formation of red blood cells. It is one of eight B vitamins. It is involved in the metabolism of every cell of the human body, especially affecting DNA synthesis, fatty acid and amino acid metabolism. No fungi, plants, nor animals (including humans) are capable of producing vitamin B12. Only bacteria and archaea have the enzymes needed for its synthesis. Proved sources of B12 are animal products (meat, fish, dairy products) and supplements. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 6,
    ),
    Nutrient(
      nutrientValue: food.vitaminB6,
      nutrientName: "Vitamin B-6",
      nutrientDescription:
          "Vitamin B6 is involved in many aspects of macronutrient metabolism, neurotransmitter synthesis, histamine synthesis, hemoglobin synthesis and function, and gene expression. Vitamin B6 is widely distributed in foods in both its free and bound forms. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 50,
    ),
    Nutrient(
      nutrientValue: food.vitaminC,
      nutrientName: "Vitamin C",
      nutrientDescription:
          "Vitamin C, also known as ascorbic acid and L-ascorbic acid, is a vitamin found in food and used as a dietary supplement. Foods that contain vitamin C include citrus fruit, tomatoes, and potatoes. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 75,
    ),
    Nutrient(
      nutrientValue: food.vitaminDD2D3,
      nutrientName: "Vitamin D (D2 + D3)",
      nutrientDescription:
          "Vitamin D promotes calcium absorption in the gut and maintains adequate serum calcium and phosphate concentrations to enable normal bone mineralization and to prevent hypocalcemic tetany (involuntary contraction of muscles, leading to cramps and spasms). It is also needed for bone growth and bone remodeling by osteoblasts and osteoclasts [1-3]. Without sufficient vitamin D, bones can become thin, brittle, or misshapen. Vitamin D sufficiency prevents rickets in children and osteomalacia in adults. Together with calcium, vitamin D also helps protect older adults from osteoporosis.  Vitamin D has other roles in the body, including reduction of inflammation as well as modulation of such processes as cell growth, neuromuscular and immune function, and glucose metabolism [1-3]. Many genes encoding proteins that regulate cell proliferation, differentiation, and apoptosis are modulated in part by vitamin D. Many tissues have vitamin D receptors, and some convert 25(OH)D to 1,25(OH)2D.",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 5,
    ),
    Nutrient(
      nutrientValue: food.vitaminEAlphaTocopherol,
      nutrientName: "Vitamin E (alpha-tocopherol)",
      nutrientDescription:
          "Vitamin E refers to a group of compounds that include both tocopherols and tocotrienols, usually found in various oils (corn oil, soybean oil, wheat germ oil). Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 10,
    ),
    Nutrient(
      nutrientValue: food.vitaminEAdded,
      nutrientName: "Vitamin E, added",
      nutrientDescription:
          "Vitamin E refers to a group of compounds that include both tocopherols and tocotrienols, usually found in various oils (corn oil, soybean oil, wheat germ oil). Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 10,
    ),
    Nutrient(
      nutrientValue: food.vitaminKPhylloquinone,
      nutrientName: "Vitamin K (phylloquinone)",
      nutrientDescription:
          "Vitamin K (Phylloquinone) is a group of structurally similar, fat-soluble vitamins the human body requires for complete synthesis of certain proteins that are prerequisites for blood coagulation and which the body also needs for controlling binding of calcium in bones and other tissues. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 80,
    ),
    Nutrient(
      nutrientValue: food.calcium,
      nutrientName: "Calcium",
      nutrientDescription:
          "Calcium is a mineral needed to build and maintain strong bones and teeth. It is also very important for other physical functions, such as muscle control and blood circulation. Calcium is not made in the body - it must be absorbed from food. To effectively absorb calcium from food, Vitamin D is needed. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 1000,
    ),
    Nutrient(
      nutrientValue: food.copper,
      nutrientName: "Copper",
      nutrientDescription:
          "Copper is an essential trace element that is vital to the health of all living things (humans, plants, animals, and microorganisms). In humans, copper is essential to the proper functioning of organs and metabolic processes. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 2,
    ),
    Nutrient(
      nutrientValue: food.iron,
      nutrientName: "Iron",
      nutrientDescription:
          "Iron is a mineral that is naturally present in many foods, added to some food products, and available as a dietary supplement. Dietary iron has two main forms: heme and nonheme. Plants and iron-fortified foods contain nonheme iron only, whereas meat, seafood, and poultry contain both heme and nonheme iron. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 15,
    ),
    Nutrient(
      nutrientValue: food.magnesium,
      nutrientName: "Magnesium",
      nutrientDescription:
          "Magnesium is an essential mineral for human nutrition. Magnesium is needed for more than 300 biochemical reactions in the body. It helps to maintain normal nerve and muscle function, supports a healthy immune system, keeps the heart beat steady, and helps bones remain strong. It also helps regulate blood glucose levels and aid in the production of energy and protein. There is ongoing research into the role of magnesium in preventing and managing disorders such as high blood pressure, heart disease, and diabetes. However, taking magnesium supplements is not currently recommended. Diets high in protein, calcium, or vitamin D will increase the need for magnesium. Most dietary magnesium comes from vegetables, such as dark green, leafy vegetables. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 350,
    ),
    Nutrient(
      nutrientValue: food.phosphorus,
      nutrientName: "Phosphorus",
      nutrientDescription:
          "Phosphorus is an essential macromineral, included in almost all foods. Phosphorus is the second most abundant mineral nutrient in the body, after calcium. This mineral is part of all cells, especially cell membranes, and is essential to bone strength, because it's the main structural component of bones and teeth, as calcium phosphate. Phosphorus is also an important element in energy production. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 1000,
    ),
    Nutrient(
      nutrientValue: food.potassium,
      nutrientName: "Potassium",
      nutrientDescription:
          "Potassium is a mineral and electrolyte that helps nerves to function and muscles to contract, among many other tasks. Potassium sources include leafy greens, fruit from vines, root vegetables, and citrus fruits. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 3500,
    ),
    Nutrient(
      nutrientValue: food.selenium,
      nutrientName: "Selenium",
      nutrientDescription:
          "Selenium is a chemical element with symbol Se and atomic number 34. Selenium salts are toxic in large amounts, but trace amounts are necessary for cellular function in many organisms, including all animals. Measured in micrograms (mcg).",
      nutrientMeasurementType: "mcg",
      nutrientLimit: 35,
    ),
    Nutrient(
      nutrientValue: food.sodium,
      nutrientName: "Sodium",
      nutrientDescription:
          "Salt, also known as sodium chloride, is about 40 percent sodium and 60 percent chloride. It adds flavor to food and is also used as a preservative, binder, and stabilizer. The human body needs a very small amount of sodium - the primary element we get from salt - to conduct nerve impulses, contract and relax muscles, and maintain the proper balance of water and minerals. But too much sodium in the diet can lead to high blood pressure, heart disease, and stroke. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 2400,
    ),
    Nutrient(
      nutrientValue: food.zinc,
      nutrientName: "Zinc",
      nutrientDescription:
          "Zinc is found in cells throughout the body. It is needed for the body's defensive (immune) system to properly work. It plays a role in cell division, cell growth, wound healing, and the breakdown of carbohydrates. Zinc is also needed for the senses of smell and taste. Measured in milligrams (mg).",
      nutrientMeasurementType: "mg",
      nutrientLimit: 15,
    ),
    Nutrient(
      nutrientValue: food.alcohol,
      nutrientName: "Alcohol",
      nutrientDescription:
          "How does alcohol affect the body?  Alcohol is a central nervous system depressant. This means that it is a drug that slows down brain activity. It can change your mood, behavior, and self-control. It can cause problems with memory and thinking clearly. Alcohol can also affect your coordination and physical control.  Alcohol also has effects on the other organs in your body. For example, it can raise your blood pressure and heart rate. If you drink too much at once, it could make you throw up.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.caffeine,
      nutrientName: "Caffeine",
      nutrientDescription:
          "Caffeine is the most widely-used stimulant in the world. It’s in coffee, tea, soda, energy drinks, and energy shots, as well as some sports gels, dietary supplements, over-the-counter medications, and combat rations (pudding, gum, and mints). In moderate doses, caffeine can boost physical and mental performance. However, too much caffeine can have negative consequences, so be careful how much you consume. Dietary supplements sometimes can add significant amounts of caffeine to your daily intake, so pay special attention to what’s on the labels.",
      nutrientMeasurementType: "mg",
      nutrientLimit: 400,
      isReverseLimit: true,
    ),
    Nutrient(
      nutrientValue: food.theobromine,
      nutrientName: "Theobromine",
      nutrientDescription:
          "Theobromine benefits potentially include having diuretic effects, widening arteries and boosting blood flow, lifting your mood, improving focus/concentration, and possibly having aphrodisiac effects.",
      nutrientMeasurementType: "mg",
      nutrientLimit: 600,
      isReverseLimit: true,
    ),
    Nutrient(
      nutrientValue: food.acid40,
      nutrientName: "4:0",
      nutrientDescription:
          "Butyric acid is a fatty acid that's created when the good bacteria in your gut break down dietary fiber. It's also found in animal fats and vegetable oils. However, the amount of butyric acid found in foods like butter and ghee is small compared to the amount that's made in your gut.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid60,
      nutrientName: "6:0",
      nutrientDescription:
          "Caproic acid, also known as hexanoic acid or C6:0, is a medium-chain fatty acid. Medium-chain fatty acids (MCFA) are fatty acids with aliphatic tails of 6 to 12 carbons, which can form medium-chain triglycerides. Caproic acid is a colourless oily liquid that smells like cheese with an overlying waxy or barnyard odor like that of goats or other barnyard animals. Its name comes from the Latin word capra, meaning 'goat'. Two other fatty acids are named after goats: caprylic acid (C8) and capric acid (C10). Along with caproic acid, they account for 15% of the fat in goat's milk. Caproic acid is a fatty acid found naturally in various animal fats and oils. While generally more abundant in animals, caproic acid is found in all organisms ranging from bacteria to plants to animals. Caproic acid is one of the chemicals that gives the decomposing fleshy seed coat of the ginkgo fruit its characteristic unpleasant odor. It is also one of the components of vanilla and cheese. Industrially, the primary use of caproic acid is in the manufacture of its esters for use as artificial flavors and in the manufacture of hexyl derivatives, such as hexylphenols. Caproic acid has been associated with medium chain acyl-CoA dehydrogenase deficiency, which is an inborn error of metabolism. As a relatively volatile organic compound, caproic acid has been identified as a fecal biomarker of Clostridium difficile infectio",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid80,
      nutrientName: "8:0",
      nutrientDescription:
          "Caprylic acid is a type of beneficial saturated fatty acid that has antibacterial, antiviral, antifungal and anti-inflammatory properties. It's been linked to prevention of urinary tract infections, bladder infections, Candida, sexually transmitted diseases, oral infections like gingivitis and many other conditions.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid100,
      nutrientName: "10:0",
      nutrientDescription:
          "Capric acid has strong antiviral and antimicrobial properties. Capric acid is converted into monocaprin in the body, where it can help combat viruses, bacteria and the yeast Candida albicans.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid120,
      nutrientName: "12:0",
      nutrientDescription:
          "Lauric acid, systematically dodecanoic acid, is a saturated fatty acid with a 12-carbon atom chain, thus having many properties of medium-chain fatty acids, is a bright white, powdery solid with a faint odor of bay oil or soap. The salts and esters of lauric acid are known as laurates. It is found in many vegetable fats and in coconut and palm kernel oils. People also use it as medicine. People use lauric acid for viral infections such as the flu, common cold, genital herpes, and many other conditions, but there is no good scientific evidence to support any use.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid140,
      nutrientName: "14:0",
      nutrientDescription:
          "Myristic acid acts as a surfactant, opacifying agent, texture enhancer, emollient, cleansing agent and emulsifier in cosmetics and other personal products. There are many salts and esters derived from myristic acid that are also used in personal care products.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid160,
      nutrientName: "16:0",
      nutrientDescription:
          "Palmitic Acid is a saturated long-chain fatty acid with a 16-carbon backbone. Palmitic acid is found naturally in palm oil and palm kernel oil, as well as in butter, cheese, milk and meat. In cosmetics and skincare products, palmitic acid functions as an emollient, helping to protect the skin and a surfactant, emulsifier, and opacifying agent, helping to improve the texture of formulations",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid180,
      nutrientName: "18:0",
      nutrientDescription:
          "Stearic acid (SA), sometimes also called octadecanoic acid, is a saturated long-chain fatty acid. It’s present in humans, animals and some plants.  It appears as a waxy, yellow-white, solid substance.  Stearic acid uses include:      Making soap and cleansers (one of the most common ways it’s used worldwide)     Improving the efficacy and texture of cleansers, lotions and skin care/hair products, including shampoo and conditioner     Making cosmetics/makeup     Stabilizing the texture of shaving creams and lubricants     Creating detergents, house cleaners and textile softeners     Forming and softening plastics     Making candles     Making chewing gum     Making supplements/tablets  Stearic acid’s structure (being an 18-carbon chain fatty acid) allows it to help improve the texture and consistency of other products. It can help make skin/hair/household products solid and improve the ability of them to to mix with water (which is usually difficult since oil/water do not combine well).",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid161,
      nutrientName: "16:1",
      nutrientDescription:
          "Palmitoleic acid from adipose tissue promotes insulin sensitivity in muscles and suppresses the expression of monocyte chemoattractant protein 1 (MCP-1) and TNF-α in adipose tissue .",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid181,
      nutrientName: "18:1",
      nutrientDescription:
          "Oleic acid is a fatty acid that occurs naturally in various animal and vegetable fats and oils. It is an odorless, colorless oil, although commercial samples may be yellowish. In chemical terms, oleic acid is classified as a monounsaturated omega-9 fatty acid, abbreviated with a lipid number of 18:1 cis-9. Negative Heart Health: While a healthy level of oleic acid betters your heart health, consuming too much of this omega-9 fatty acid can lead to the development of some deficiencies. Just like a diet too heavy in trans fats, a diet composed primarily of omega-9s could eventually lead to heart failure.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid201,
      nutrientName: "20:1",
      nutrientDescription:
          "Gadoleic acid (20:1 n−11) is an unsaturated fatty acid. It is a prominent component of some fish oils including cod liver oil.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid221,
      nutrientName: "22:1",
      nutrientDescription:
          "Erucic acid is a monounsaturated omega-9 fatty acid, denoted 22:1ω9. It has the chemical formula CH3(CH2)7CH=CH(CH2)11COOH. It is prevalent in wallflower seed and other plants in the family Brassicaceae, with a reported content of 20 to 54% in high erucic acid rapeseed oil[2] and 42% in mustard oil. Erucic acid is also known as cis-13-docosenoic acid and the trans isomer is known as brassidic acid.   Studies done on laboratory animals in the early 1970s[6] show that erucic acid appears to have toxic effects on the heart at high enough doses. However, more recent research has cast doubt on the relevance of rat studies to the human health of erucic acid. Rats are unusual in their inability to process erucic acid, and the symptoms in rats caused by a diet with high levels of erucic acid have not been observed in pigs, primates, or any other animals.[7] An association between the consumption of rapeseed oil and increased myocardial lipidosis, or heart disease, has not been established for humans.[8] While there are reports of toxicity from long-term use of Lorenzo's oil (which contains erucic acid and other ingredients), there are no reports of harm to people from dietary consumption of erucic acid.[9]: 646–657",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid182,
      nutrientName: "18:2",
      nutrientDescription:
          "Linoleic acid itself plays a special role in support of heart health. Randomized clinical trials have shown that replacing saturated fat with linoleic acid reduces total and LDL cholesterol. There is also some evidence that linoleic acid improves insulin sensitivity and blood pressure.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid183,
      nutrientName: "18:3",
      nutrientDescription:
          "Alpha-linolenic acid is most commonly used for diseases of the heart and blood vessels, such as hardening of the arteries, heart disease, and high blood pressure. It is also used for other conditions, but there is no good scientific evidence to support most of these uses.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid184,
      nutrientName: "18:4",
      nutrientDescription:
          "Lipid-protein interactions  α-Parinaric acid is also used as a chromophore to study interactions between membrane proteins and lipids. Because of the similarity of α-parinaric acid to normal membrane lipids, it has minimal perturbing influence. By measuring shifts in the absorption spectrum, enhancement of α-parinaric acid fluorescence, induced circular dichroism, and energy transfer between tryptophan amino acids in the protein and the bound chromophore, information may be gleaned about the molecular interactions between protein and lipid. For example, this technique is used to investigate how fatty acids bind to serum albumin (a highly abundant blood protein), lipid transport processes including structural characterization of lipoproteins, and phospholipid-transfer proteins. Clinical uses  The concentrations of fatty acids in blood serum or plasma can be measured using α-parinaric acid, which will compete for binding sites on serum albumin. Food chemistry α-Parinaric acid has been used to study the hydrophobicity and foaming characteristics of food proteins, as well as the foam stability of beer. In this latter research, α-parinaric acid was used in a fluorescent assay to assess the lipid–binding potential of the proteins in the beer, as these proteins help protect beer from foam–reducing medium– and long–chain fatty acids.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid204,
      nutrientName: "20:4",
      nutrientDescription:
          "Arachidonic acid is a polyunsaturated fatty acid covalently bound in esterified form in the cell membranes of most body cells. Following irritation or injury, arachidonic acid is released and oxygenated by enzyme systems leading to the formation of an important group of inflammatory mediators, the eicosanoids. It is now recognised that eicosanoid release is fundamental to the inflammatory process.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid205N3,
      nutrientName: "20:5 n-3",
      nutrientDescription:
          "Eicosapentaenoic acid is an omega-3 fatty acid. In physiological literature, it is given the name 20:5. It also has the trivial name timnodonic acid.  Omega-3s may protect against the sun's harmful ultraviolet A (UVA) and ultraviolet B (UVB) rays. Studies have shown that supplementing with a combination of DHA and EPA — two long-chain omega-3s — may reduce the skin's sensitivity to ultraviolet (UV) rays.",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid225N3,
      nutrientName: "22:5 n-3",
      nutrientDescription:
          "Docosapentaenoic acid designates any straight chain 22:5 fatty acid, that is a straight chain open chain type of polyunsaturated fatty acid which contains 22 carbons and 5 double bonds. Omega-3s may protect against the sun's harmful ultraviolet A (UVA) and  ultraviolet B (UVB) rays. Studies have shown that supplementing with a  combination of DHA and EPA — two long-chain omega-3s — may reduce the skin's sensitivity to ultraviolet (UV) rays.'",
      nutrientMeasurementType: "g",
    ),
    Nutrient(
      nutrientValue: food.acid226N3,
      nutrientName: "22:6 n-3",
      nutrientDescription:
          "Docosahexaenoic acid is an omega-3 fatty acid that is a primary structural component of the human brain, cerebral cortex, skin, and retina. In physiological literature, it is given the name 22:6.  Docosahexaenoic acid (DHA) is essential for the growth and functional development of the brain in infants. DHA is also required for maintenance of normal brain function in adults. The inclusion of plentiful DHA in the diet improves learning ability, whereas deficiencies of DHA are associated with deficits in learning.",
      nutrientMeasurementType: "g",
    ),
  ];
}
