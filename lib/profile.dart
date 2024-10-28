import 'package:flutter/material.dart';
import 'package:responsi_1/akun.dart';
import 'package:responsi_1/home.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
 int _currentIndex = 1; 

  final List<Widget> _pages = [
    const HomePage(), 
    const ProfilPage(), 
    const AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: SingleChildScrollView( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
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
                                  size: 70, 
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
                              fontSize: 14, 
                            ),
                          ),
                          const SizedBox(height: 4),

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
            const SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [

                  const Align(
                    alignment: Alignment.centerLeft, 
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_rounded),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerLeft, 
                    child: Text(
                      'Nama',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person), 
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerLeft, 
                    child: Text(
                      'Nomor Telepon',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone), 
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerLeft, 
                    child: Text(
                      'Alamat',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_on), 
                    ),
                    keyboardType: TextInputType.streetAddress,
                  ),
                  const SizedBox(height: 20), 
                  Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text('Ubah Profil')),
                )
                ],
              ),
            ),
          ],
        ),
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
