import 'package:flutter/material.dart';
import 'package:meet_your_roommate_app/rental_life_cycle/property_provider.dart';
import 'package:provider/provider.dart';

class PropertyDirection extends StatefulWidget {
  const PropertyDirection({super.key});

  @override
  State<PropertyDirection> createState() => _PropertyDirectionState();
}

class _PropertyDirectionState extends State<PropertyDirection> {
  @override
  Widget build(BuildContext context) {
    final propertyProvider = Provider.of<PropertyProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.orange.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.close),
                      Text("Complete"),
                      Icon(Icons.help),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Text(
                    "Donde Se Encuentra su espacio?",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://t2.tudocdn.net/603541?w=1920&h=1080"),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.location_on_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
