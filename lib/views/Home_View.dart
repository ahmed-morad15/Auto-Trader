import 'package:flutter/material.dart';
import 'package:car_trader/models/car_mmodel.dart';

import 'Car_Detail.dart';
// Import the detail screen

class HomeView extends StatelessWidget {
  HomeView({Key? key});

  final List<CarsModel> cars = [
    CarsModel(image: 'assets/images/WWW.FONXAT.COM audi_texture1743.png', type: 'Audi A1'),
    CarsModel(image: 'assets/images/WWW.FONXAT.COM audi_texture1735.png', type: 'Audi R8'),
    CarsModel(image: 'assets/images/b22063cc14657735d1ca4013ab395206.png', type: 'Porsche'),
    CarsModel(image: 'assets/images/R (2).png', type: 'Audi Rs6'),
    CarsModel(image: 'assets/images/transparent.png', type: 'Seat Ateca'),
    CarsModel(image: 'assets/images/54-audi-png-car-image.png', type: 'Audi A5'),
    CarsModel(image: 'assets/images/Rolls-Royce-PNG-Free-Image.png', type: 'Rolls Royce'),
    CarsModel(image: 'assets/images/pngimg.com - audi_PNG1721.png', type: 'Audi A4'),
    CarsModel(image: 'assets/images/Kia-Car-PNG-Photo.png', type: 'Kia Picanto'),
    CarsModel(image: 'assets/images/R (1).png', type: 'Peugeot Rcz1'),
    CarsModel(image: 'assets/images/q5-front-01.png', type: 'Audi Q5'),

    
  ];

  static String id = 'Home View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'AUTO TRADER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[200], // Background color
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return GestureDetector( // Wrap with GestureDetector
                onTap: () {
                  Navigator.push( // Navigate to detail screen
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarDetailScreen(car: cars[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: CustomCard(car: cars[index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final CarsModel car;

  const CustomCard({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(202, 224, 224, 1), // Box color
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            car.image,
            fit: BoxFit.cover,
            height: 150,
          ),
          SizedBox(height: 8),
          Text(
            car.type,
            textAlign: TextAlign.center, // Align car type in the middle
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
