import 'package:demointern/PaymentSucessScreen.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_outlined),
            ),
            const Text(
              'Details',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.notifications),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.grey[100],
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Our Student',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[900],
                              ),
                            ),
                            const SizedBox(height: 8),

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.person, color: Colors.blueGrey),
                                SizedBox(width: 8),
                                Icon(Icons.person, color: Colors.blueGrey),
                                SizedBox(width: 8),
                                Icon(Icons.person, color: Colors.blueGrey),
                              ],
                            ),
                            const SizedBox(height: 16),

                            const Text(
                              'Photoshop Editing Course',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 8),

                            Text(
                              'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.play_circle_outline,
                                      color: Colors.green,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${(3 + (2)).toString()} Lessons',
                                      style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.watch_later_outlined,
                                      color: Colors.blueGrey,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '12h 30min',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Video",style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("View All",style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          elevation: 1,
                          child: ListTile(
                            leading: const Icon(
                              Icons.lock,
                              color: Color(0xFF708090),
                            ),
                            title: Text(
                              'List Item ${index + 1}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 4),
                                Text('${index + 1}h ${(index + 1) * 10}min'),
                              ],
                            ),
                            trailing: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.play_circle,
                                color: Colors.green,
                              ),
                              onPressed: () {
                              },
                              label: const Text(
                                'Play Video',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                side: const BorderSide(
                                  color: Colors.black12,
                                ),
                              ),
                            ),
                            onTap: () {
                              // Handle item tap
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    backgroundColor: Colors.green, // Enroll button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentSuccessPage(amountPaid: 35),),);
                  },
                  child: const Text(
                    'Enroll Now',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
