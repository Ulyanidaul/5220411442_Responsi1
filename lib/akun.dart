import 'package:flutter/material.dart';
import 'package:responsi_1/profile.dart';
import 'home.dart'; 

class AkunPage extends StatefulWidget {
  const AkunPage({super.key});

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  int _currentIndex = 2; 

  final List<Widget> _pages = [
    const HomePage(), 
    const ProfilPage(), 
    const AkunPage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[
          Center(
            child: Container(
              height: 200, 
              width: 200, 
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, 
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1, 
                ),
                itemCount: 1, 
                physics: const NeverScrollableScrollPhysics(), 
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.account_circle, 
                                size: 100, 
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          'Ulya Nidaul Husna',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12, 
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          'Universitas Teknologi Yogyakarta',
                          style: TextStyle(
                            fontSize: 10, 
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                ListTile(
                  title: const Text('Kelola Akun'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Notifikasi'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Privacy Policy'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('Terms of Service'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (index != _currentIndex) {
              _currentIndex = index; 
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => _pages[index]),
              );
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan'),
        ],
      ),
    );
  }
}
