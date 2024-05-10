import 'package:flutter/material.dart';
import 'package:car_trader/models/car_mmodel.dart';

class CarDetailScreen extends StatelessWidget {
  final CarsModel car;

  const CarDetailScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details',
        style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              car.image,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              car.type,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action to perform when Buy button is pressed
                  },
                  child: Text('Buy'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
