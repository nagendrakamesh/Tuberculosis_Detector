import 'package:flutter/material.dart';

class Median extends StatelessWidget {
  const Median({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model Selection"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 58, 12, 119),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: const Icon(Icons.logout_outlined),
          )
        ],
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            child: Text("Tuberculosis Detection"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 58, 12, 119),
              fixedSize: Size(230, 60),
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Container(height: 30,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'urban');
            },
            child: Text("Urban Sound Classification"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 58, 12, 119),
                fixedSize: Size(230, 60),
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
          ),
        ],
      ),
    ));
  }
}
