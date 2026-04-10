import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),

            // Main Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Profile Image
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg?semt=ais_user_personalization&w=740&q=80',
                      ),
                    ),

                    /// Online Indicator
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                /// Name
                const Text(
                  'Mon Mohan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),

                /// Profession
                Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                SizedBox(height: 8),

                /// Description
                Text(
                  'Passionate Flutter Developer building cross-platform mobile apps with clean code, responsive UI, and smooth performance.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),

                SizedBox(height: 20),

                /// Contact Information
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.red),
                    SizedBox(width: 8),
                    Text(
                      'monmohanhalder@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 8),
                    Text('(+65) 82535342', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Divider(height: 20),
                Text(
                  'Card Section',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Divider(height: 20),

                /// Product Card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      /// Product Image
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: Image.network(
                          'https://www.geeky-gadgets.com/wp-content/uploads/2025/11/iPhone-18.webp',
                          //height: 200,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            /// Product Title
                            Text(
                              'iPhone 18',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),

                            SizedBox(height: 10),

                            /// Price + Button Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// Price
                                Text(
                                  'Price: S\$2000',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                /// Button
                                ElevatedButton(
                                  onPressed: () {
                                    print('See More clicked');
                                  },
                                  child: Text('See More'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                /// Travel Card
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Image
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: Image.network(
                          'https://images.trvl-media.com/place/6047873/15d3ae30-ef33-406e-971f-9520c03f1089.jpg',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      /// Content below image
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Title
                            Text(
                              'Travel in Singapore',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 6),

                            /// Subtitle / description
                            Text(
                              'Explore beautiful places, modern city life and amazing views in Singapore.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),

                            SizedBox(height: 12),

                            /// Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Book Now Clicked');
                                },
                                child: Text('Book Now'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
