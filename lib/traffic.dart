import 'package:flutter/material.dart';

class TrafficLight extends StatefulWidget {
  const TrafficLight({super.key});

  @override
  State<TrafficLight> createState() => _TrafficLightState();
}

class _TrafficLightState extends State<TrafficLight> {
  String trafficState = 'Traffic State';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                trafficState,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 65.0),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          trafficState = 'Go';
                        });
                      },
                      child: Container(
                        height: 70.0,
                        width: 120.0,
                        color: Colors.green,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          trafficState = 'Wait';
                        });
                      },
                      child: Container(
                        height: 70.0,
                        width: 120.0,
                        color: Colors.yellow,
                      )),
                  GestureDetector(
                      onTap: () {
                         setState(() {
                          trafficState = 'Stop';
                        });
                      },
                      child: Container(
                        height: 70.0,
                        width: 120.0,
                        color: Colors.red,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
