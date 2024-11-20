import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    MotorList(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Motor List App')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.motorcycle), label: 'Motors'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MotorList extends StatelessWidget {
  const MotorList({super.key});

  final List<Map<String, String>> motors = const [
    {
      'name': 'Yamaha R15',
      'description':
          'Motor sport dengan desain aerodinamis dan mesin 155cc VVA.',
      'detail': 'Mesin 155cc VVA, tenaga 19 HP, assist & slipper clutch.',
      'imageUrl':
          'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/09/23/dijual-rp-37-jutaan-intip-fitur-20210923030714.jpg',
      'price': 'Rp 38.000.000'
    },
    {
      'name': 'Honda CBR150R',
      'description': 'Motor sport berkapasitas 150cc dengan performa tinggi.',
      'detail': 'Mesin 149cc DOHC, tenaga 17.1 HP, suspensi inverted.',
      'imageUrl':
          'https://www.hondacengkareng.com/wp-content/uploads/2018/11/Honda-CBR-150R-ABS-Victory-Matte-Black.png',
      'price': 'Rp 36.500.000'
    },
    {
      'name': 'Kawasaki Ninja 250',
      'description': 'Motor sport premium dengan mesin 250cc.',
      'detail': 'Mesin 249cc twin-cylinder, tenaga 39 HP, desain sporty.',
      'imageUrl':
          'https://content2.kawasaki.com/ContentStorage/KMI/Products/4920/bbfa97cd-f3ab-4d2a-a136-7aa24168dd0c.jpg?w=510&h=340&mode=crop',
      'price': 'Rp 64.200.000'
    },
    {
      'name': 'Suzuki GSX-R150',
      'description': 'Motor sport dengan teknologi modern.',
      'detail': 'Mesin 147cc DOHC, tenaga 18.9 HP, keyless ignition.',
      'imageUrl':
          'https://imgcdn.oto.com/medium/gallery/exterior/92/1579/suzuki-gsx-r150-48926.jpg',
      'price': 'Rp 30.500.000'
    },
    {
      'name': 'Ducati Panigale V4',
      'description': 'Superbike dengan performa terbaik.',
      'detail': 'Mesin 1103cc V4, tenaga 214 HP, fitur canggih.',
      'imageUrl':
          'https://asset.kompas.com/crops/yWSGhWRJ_7AdpYGtc0eCcT2r13c=/0x31:1536x1055/1200x800/data/photo/2022/07/15/62d0e4386ec2f.jpg',
      'price': 'Rp 1.200.000.000'
    },
    {
      'name': 'BMW S1000RR',
      'description': 'Motor superbike dengan teknologi canggih.',
      'detail': 'Mesin 999cc inline-4, tenaga 205 HP, quickshift.',
      'imageUrl':
          'https://mcn-images.bauersecure.com/wp-images/4705/900x0/2023_bmw_s1000rr_9.jpg',
      'price': 'Rp 1.100.000.000'
    },
    {
      'name': 'KTM RC 390',
      'description': 'Motor sport entry-level dengan performa tinggi.',
      'detail': 'Mesin 373cc single-cylinder, tenaga 43 HP, suspensi WP.',
      'imageUrl':
          'https://www.blackxperience.com/assets/content/blackauto/autonews/ktm-rc-390-gp-edition-1.jpg',
      'price': 'Rp 150.000.000'
    },
    {
      'name': 'Triumph Daytona 675',
      'description': 'Motor sport dengan desain klasik dan mesin 675cc.',
      'detail': 'Mesin 675cc 3-silinder, tenaga 128 HP, desain elegan.',
      'imageUrl':
          'https://www.datocms-assets.com/119921/1714072812-triumph-daytona-675r-used-buyers-guide-1.jpg?auto=format&w=740',
      'price': 'Rp 250.000.000'
    },
    {
      'name': 'Harley-Davidson Iron 883',
      'description': 'Motor cruiser dengan mesin V-twin 883cc.',
      'detail': 'Mesin 883cc V-twin, tenaga 50 HP, desain klasik.',
      'imageUrl':
          'https://d2bywgumb0o70j.cloudfront.net/2021/01/20/a335cda43c98deb5936f98f358607772_36f4e4f9cb568157.jpg',
      'price': 'Rp 250.000.000'
    },
    {
      'name': 'MV Agusta F3 800',
      'description': 'Motor sport premium dengan desain Itali.',
      'detail': 'Mesin 798cc 3-silinder, tenaga 148 HP, desain aerodinamis.',
      'imageUrl':
          'https://www.motoplanete.com/mv-agusta/zoom-700px/10519-F3-800-RC-2024-1000px.webp',
      'price': 'Rp 600.000.000'
    },
    {
      'name': 'Honda CB500F',
      'description': 'Motor naked bike dengan performa dan kenyamanan.',
      'detail': 'Mesin 471cc parallel twin, tenaga 47 HP, mudah dikendarai.',
      'imageUrl':
          'https://cdn.juraganwp.com/kobayogas/wp-content/uploads/2021/09/wp-16306014779661040910070679858227.jpg',
      'price': 'Rp 120.000.000'
    },
    {
      'name': 'Kawasaki Z900',
      'description': 'Motor naked bike dengan mesin 948cc.',
      'detail': 'Mesin 948cc inline-4, tenaga 125 HP, desain agresif.',
      'imageUrl':
          'https://content2.kawasaki.com/ContentStorage/KMI/Products/5095/9c19b8cb-4fb4-4c05-a06f-57243901fa24.jpg?w=510&h=340&mode=crop',
      'price': 'Rp 250.000.000'
    },
    {
      'name': 'Yamaha MT-09',
      'description': 'Motor naked sport dengan performa tinggi.',
      'detail': 'Mesin 847cc inline-3, tenaga 115 HP, sistem quick shifter.',
      'imageUrl':
          'https://cdn.antaranews.com/cache/1200x800/2020/08/28/Yamaha-MT-09-Icon-Blue.jpg.webp',
      'price': 'Rp 180.000.000'
    },
    {
      'name': 'Ducati Monster 1200',
      'description': 'Motor naked bike dengan desain ikonik.',
      'detail': 'Mesin 1198cc V-twin, tenaga 150 HP, desain agresif.',
      'imageUrl':
          'https://asset.kompas.com/crops/A1iedZmWI9ApDvywI7N5oFXhgC8=/0x0:1000x667/1200x800/data/photo/2018/06/28/131284493.jpg',
      'price': 'Rp 460.000.000'
    },
    {
      'name': 'Honda Africa Twin',
      'description': 'Motor adventure dengan mesin 1084cc.',
      'detail': 'Mesin 1084cc parallel twin, tenaga 101 HP, suspensi panjang.',
      'imageUrl':
          'https://imgd.aeplcdn.com/664x374/n/cw/ec/114281/africa-twin-2022-right-front-three-quarter.jpeg?isig=0&q=80',
      'price': 'Rp 550.000.000'
    },
    {
      'name': 'BMW F 900 XR',
      'description': 'Motor sport touring dengan mesin 895cc.',
      'detail': 'Mesin 895cc parallel twin, tenaga 105 HP, fitur canggih.',
      'imageUrl':
          'https://www.cyclenews.com/wp-content/uploads/2021/02/2021-BMW-F-900-XR-Specifications.jpg',
      'price': 'Rp 300.000.000'
    },
    {
      'name': 'Suzuki V-Strom 650',
      'description': 'Motor adventure dengan kemampuan off-road.',
      'detail': 'Mesin 645cc V-twin, tenaga 71 HP, desain ergonomis.',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmfHSshUB95HeA9hlNwJSt2EJ7xGAW8fUM0Q&s',
      'price': 'Rp 170.000.000'
    },
    {
      'name': 'Indian Scout Bobber',
      'description': 'Motor cruiser dengan desain retro dan mesin V-twin.',
      'detail': 'Mesin 1133cc V-twin, tenaga 100 HP, desain klasik.',
      'imageUrl':
          'https://www.indianmotorcycle-intl.eu/fileadmin/templates/model_24/nav-menu/intl/scout-1250/scout-bobber-limited-sunset.jpg',
      'price': 'Rp 370.000.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: motors.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Image.network(
              motors[index]['imageUrl']!,
              width: 60,
              height: 60,
              fit: BoxFit.fill,
            ),
            title: Text('${motors[index]['name']} - ${motors[index]['price']}'),
            subtitle: Text(motors[index]['description']!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MotorDetailPage(
                    motorName: motors[index]['name']!,
                    motorDescription: motors[index]['description']!,
                    motorDetail: motors[index]['detail']!,
                    imageUrl: motors[index]['imageUrl']!,
                    price: motors[index]['price']!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MotorDetailPage extends StatelessWidget {
  final String motorName;
  final String motorDescription;
  final String motorDetail;
  final String imageUrl;
  final String price;

  const MotorDetailPage({
    super.key,
    required this.motorName,
    required this.motorDescription,
    required this.motorDetail,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(motorName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              motorName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              motorDescription,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              motorDetail,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'Harga: $price',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.network(
                'https://i.ibb.co.com/Bf2T9M7/ipul.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Profile Content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.ibb.co.com/Bf2T9M7/ipul.jpg',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Name
                  const Text(
                    'Nama: SHAIFUL ANAM',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Description
                  const Text(
                    'Aplikasi ini dibuat oleh Shaiful Anam, seorang pengembang Flutter berpengalaman yang memiliki asisten chat-gpt yang memiliki minat besar pada teknologi dan sepeda motor. Fokus utamanya adalah menciptakan aplikasi mobile dengan antarmuka yang menarik dan fungsional.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black),
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
