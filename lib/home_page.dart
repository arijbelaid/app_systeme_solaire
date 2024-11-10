import 'package:flutter/material.dart';
import 'planete.dart';
import 'planete_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade300, // Dégradé du Deep Purple clair
              const Color.fromARGB(255, 133, 93, 160), // Dégradé du Deep Purple sombre
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            // Titre centré
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "النظام الشمسي", // Le titre
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arabic', // Si vous avez une police spécifique pour l'arabe
                  color: Colors.white, // Titre en blanc
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Liste des planètes
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.4), // Marge autour de la liste
                child: ListView.builder(
                  itemCount: planetes.length,
                  itemBuilder: (context, index) {
                    final planete = planetes[index];
                    return Card(
                      color: const Color.fromARGB(255, 119, 96, 165), // Couleur de carte en Deep Purple
                      elevation: 10, // Ombre pour effet de profondeur
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Bords arrondis
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10), // Espacement vertical
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12), // Padding ajusté
                        title: Text(
                          planete.nom, 
                          style: const TextStyle(
                            fontSize: 22, // Taille de texte légèrement plus grande
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Texte en blanc pour un bon contraste
                          ),
                        ),
                        leading: ClipOval( // Icône de la planète circulaire
                          child: Image.asset(
                            planete.image, 
                            width: 60, // Taille de l'image augmentée
                            height: 60,
                            fit: BoxFit.cover, // Garder le ratio de l'image intact
                          ),
                        ),
                        onTap: () {
                          // Animation de la navigation
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => PlaneteDetailsPage(planete: planete),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0); // Début de la transition
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;
                                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);
                                return SlideTransition(position: offsetAnimation, child: child);
                              },
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
