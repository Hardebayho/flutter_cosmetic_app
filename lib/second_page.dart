import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: ListView(
          children: const [
            ActualCustomers(),
            Experts(),
            SkinType(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (idx) => setState(() => index = idx),
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black45,
        enableFeedback: true,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'Account',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_rounded),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ActualCustomers extends StatelessWidget {
  const ActualCustomers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Actual Customers',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Experts',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/eminem.jpg',
                  post: 'assets/find yourself 2.png',
                ),
                UserCard(
                  name: 'Amelia Nelson',
                  role: 'Actress',
                  avatar: 'assets/find yourself 2.png',
                  post: 'assets/eminem.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkinType extends StatelessWidget {
  const SkinType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Skin Type',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SkinTypeItem(
                  color: Colors.blue,
                  label: 'NORMAL',
                ),
                SkinTypeItem(
                  color: Colors.red,
                  label: 'DRY',
                ),
                SkinTypeItem(
                  color: Colors.orange,
                  label: 'OILY',
                ),
                SkinTypeItem(
                  color: Colors.brown,
                  label: 'COMBINE',
                ),
                SkinTypeItem(
                  color: Colors.green,
                  label: 'OTHER',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkinTypeItem extends StatelessWidget {
  final Color color;
  final String label;
  const SkinTypeItem({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: ClipOval(
              child: ColoredBox(
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipOval(
                    child: ColoredBox(
                      color: secondaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/eminem.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
