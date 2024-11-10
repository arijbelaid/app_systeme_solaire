import 'package:flutter/material.dart';
import 'planete.dart';

class PlaneteDetailsPage extends StatelessWidget {
  final Planete planete;

  const PlaneteDetailsPage({super.key, required this.planete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planete.nom, style: const TextStyle(fontSize: 24, fontFamily: 'Amiri')),
        backgroundColor: const Color.fromARGB(255, 160, 117, 180),
        elevation: 8, // Ajouter une ombre à l'AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 160, 117, 180), const Color.fromARGB(255, 160, 117, 180)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image de la planète en taille plus grande avec une ombre
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  planete.image,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              
              // Nom de la planète avec une police plus élégante
              Text(
                planete.nom,
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Amiri',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              
              // Description de la planète
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  planete.description,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontFamily: 'Amiri',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              
              // Informations supplémentaires
              Container(
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Informations spécifiques à la planète
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("البعد عن الشمس:",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Text(
                          planete.distanceDuSoleil,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.white30, thickness: 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("وقت الدوران:",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Text(
                          planete.tempsRotation,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const Divider(color: Colors.white30, thickness: 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("زمن الثورة:",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Text(
                          planete.tempsRevolution,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              
              // Bouton pour revenir à la page précédente
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "العودة",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
