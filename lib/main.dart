import 'package:cosmetic_app/second_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const secondaryColor = Color(0xFF2A2D3E);

void main() {
  runApp(const MyApp());
}

class MyScrollBehavior extends MaterialScrollBehavior {
  const MyScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmetic App',
      scrollBehavior: const MyScrollBehavior(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF212332),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          MyAppBar(),
          Hero(),
          IconBanners(),
          Categories(),
          RecommendedBy(),
        ],
      ),
    );
  }
}

void moveToSecondPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SecondPage(),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              moveToSecondPage(context);
            },
            icon: const Icon(Icons.search_rounded),
          ),
          const SizedBox(width: 16.0),
          IconButton(
            onPressed: () {
              moveToSecondPage(context);
            },
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
    );
  }
}

class Hero extends StatefulWidget {
  const Hero({Key? key}) : super(key: key);

  @override
  State<Hero> createState() => _HeroState();
}

class _HeroState extends State<Hero> {
  final _controller = PageController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 200,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 174, 170, 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Roy\'s Temptation',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Some descriptions I couldn\'t quite grasp!',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 12.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Placeholder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBanners extends StatelessWidget {
  const IconBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: secondaryColor,
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Expanded(
            child: TextIcon(
              icon: Icons.earbuds_battery_sharp,
              text: 'WORLDWIDE CULT FAVS',
              iconColor: Colors.red,
            ),
          ),
          Expanded(
            child: TextIcon(
              icon: Icons.ac_unit,
              text: 'RECOMMENDATION NETWORK',
              iconColor: Colors.orange,
            ),
          ),
          Expanded(
            child: TextIcon(
              icon: Icons.one_k_sharp,
              text: '100%\nAUTHENTIC',
              iconColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const TextIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 32.0,
          ),
          const SizedBox(height: 4.0),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 10.0,
                ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CategoriesItem(
              icon: Icons.wine_bar,
              text: 'RANKING',
              iconColor: Colors.red,
            ),
            CategoriesItem(
              icon: Icons.table_view_rounded,
              text: 'TRENDING',
              iconColor: Colors.orange,
            ),
            CategoriesItem(
              icon: Icons.favorite_rounded,
              text: 'FAVORITES',
              iconColor: Colors.blue,
            ),
            CategoriesItem(
              icon: Icons.table_view_rounded,
              text: 'SKIN SECRETS',
              iconColor: Colors.green,
            ),
            CategoriesItem(
              icon: Icons.table_view_rounded,
              text: 'FLOWERING',
              iconColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const CategoriesItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          moveToSecondPage(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  color: secondaryColor,
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 32,
                    color: iconColor,
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 12.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedBy extends StatelessWidget {
  const RecommendedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recommended By',
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

class UserCard extends StatelessWidget {
  final String name;
  final String role;
  final String avatar;
  final String post;
  const UserCard({
    Key? key,
    required this.name,
    required this.role,
    required this.avatar,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: ClipOval(
                  child: Image.asset(
                    avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    role,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(post),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
