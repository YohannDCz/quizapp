import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Historique")),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(height: 20),
              Text("La catastrophe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink)),
              Text(
                "Imaginez en l'an 79, le Vésuve, célèbre volcan italien, se réveiller et PAF ! Il recouvre la ville de Pompéi sous une épaisse couche de cendres. Résultat ? Toute la ville est figée, comme un gâteau dans le four, mais en beaucoup moins sympa.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text("Une découverte majeure à Pompéi", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink)),
              Text(
                "Les premières fouilles archéologiques ont débuté en 1748. À cette époque, les fouilles se concentraient principalement sur la récupération de métaux, d'objets et de squelettes. À partir de 1863, une nouvelle méthode de fouilles appelée « décapage horizontal » est adoptée (en gros, il gratte le sol avec soin). C’est grâce à cette technique révolutionnaire que Giuseppe Fiorelli, inspecteur, directeur et surintendant des fouilles, découvre des cavités laissées par les corps des victimes. Impressionnant n'est-ce pas ?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text("L'idée de Fiorelli", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink)),
              Text(
                "Fiorelli, avec une idée digne de MacGyver, décide de remplir ces cavités de plâtre et Bingo ! Il créa des moulages des habitants pompéiens, figés dans leurs dernières poses. Grâce à cette technique, on peut voir comment ils vivaient et dans la posture dont ils sont morts.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text("Un héritage figé dans le temps", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink)),
              Text(
                "Ces moulages sont des fenêtres sur le passé, ils donnent des informations sur la vie quotidienne des Romains d'il y a presque 2000 ans. Ils sont si détaillés qu’on peut même observer leurs expressions faciales. C’est comme si les habitants de Pompéi étaient devenusdes statues de plâtre.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text("Les moulages aujourd'hui", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink)),
              Text(
                "Les moulages de Fiorelli ne sont pas seulement intéressants à regarder, ils sont aussi très utiles pour les scientifiques. Grâce à eux, on en apprend beaucoup sur la vie des Romains. Par exemple, comment ils attachaient leurs chaussures : une information cruciale pour les passionnés de mode antique !",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
