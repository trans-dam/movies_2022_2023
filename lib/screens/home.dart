import 'package:flutter/material.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/partials/sidebar/sidebar.dart';
import 'package:movies/partials/sliders/media_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: const Drawer(
          child: SidebarScreen(),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NavBar(),
              MediaSlider(
                  type: 'movie',
                  title: 'Films populaires',
                  subtitle: 'Cette semaine'),
              MediaSlider(
                  type: 'tv',
                  title: 'Séries populaires',
                  subtitle: 'Cette semaine')
            ],
          ),
        ),
      ),
    );
  }
}
