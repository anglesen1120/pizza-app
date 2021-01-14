import 'package:flutter/material.dart';

import 'item card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instant Pizza'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 20.0, right: 30.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Instant',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Pizza',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        indent: 25,
                        endIndent: 20,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Browse',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Now',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              Container(
                // color: Colors.red,
                height: 200 * 3.0 + 320,
                width: MediaQuery.of(context).size.width / 1.1,
                child: GridView.builder(
                  itemCount: 6,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    return ItemCard();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
