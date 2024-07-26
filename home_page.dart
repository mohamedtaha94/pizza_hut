import 'package:flutter/material.dart';
import 'package:pizza_hut/dummy_data/pizza_photo.dart';
import 'package:pizza_hut/widgets/customed_lareg_photo.dart';
import 'package:pizza_hut/widgets/screens/Explore_menu.dart';

import 'package:pizza_hut/widgets/search_button.dart';
import 'package:pizza_hut/widgets/small_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SearchButtonBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-pizza-delivery-66.png',
                  title: 'delivery',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-curbside-pickup-48.png',
                  title: 'CurbSide',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-glyph-48.png',
                  title: 'Pick Up',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-tableware-68.png',
                  title: 'Dine in',
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: PizzaPhoto.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 240,
                    height: 50,
                    child: ListTile(
                      onTap: () {},
                      title: Image.asset(
                        PizzaPhoto[index].pizzaImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploreMenu()));
                      },
                      child: Row(
                        children: [
                          const Text(
                            " Explore Menu",
                            style: TextStyle(color: Colors.black),
                          ),
                          Image.asset(
                            'assets/icons8-pizza-slice-100.png',
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 116),
                      child: TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              " Explore",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_outlined)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const CustomedLargePhoto(
                          image: 'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg',
                          label: 'Exclusive',
                          color: Colors.red,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const CustomedLargePhoto(
                          image: 'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg',
                          label: 'New',
                          color: Colors.yellow,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const CustomedLargePhoto(
                          image: 'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg',
                          label: 'For Me',
                          color: Colors.red,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: TextButton(
                        onPressed: () {},
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg'),
                              radius: 22,
                            ),
                            Text(
                              'Pasta',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: TextButton(
                        onPressed: () {},
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg'),
                              radius: 22,
                            ),
                            Text(
                              'Pasta',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: TextButton(
                        onPressed: () {},
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/alan-hardman-SU1LFoeEUkk-unsplash.jpg'),
                              radius: 22,
                            ),
                            Text(
                              'Pasta',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            /*Expanded(
              child: GridView.builder(
                itemCount: GridPizzaPhoto.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Image.asset(
                        GridPizzaPhoto[index].pizzaImage,
                      ),
                    ),
                  );
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        shadowColor: Colors.grey,
                        elevation: 20,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            label: const Text('SELECT LOCATION'),
                            hintText: 'AL MASHTAL',
                            prefixIcon: Image.asset('assets/search_icon.jpg'),
                            suffixIcon: const Icon(
                              Icons.arrow_drop_down_circle_sharp,
                              color: Color(0xffe63d38),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/bell_icon.jpg',
                  height: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import 'package:pizza_hut/dummy_data/pizza_photo.dart'; // Importing the dummy data for pizza photos
import 'package:pizza_hut/widgets/search_button.dart'; // Importing the search button widget
import 'package:pizza_hut/widgets/small_button_widget.dart'; // Importing the small button widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SearchButtonBar(), // Adding the search button bar at the top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-pizza-delivery-66.png',
                  title: 'Delivery',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-curbside-pickup-48.png',
                  title: 'CurbSide',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-glyph-48.png',
                  title: 'Pick Up',
                ),
                SmallButtonWidget(
                  backGroundImage: 'assets/icons8-tableware-68.png',
                  title: 'Dine in',
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: PizzaPhoto.length, // Number of items in the list
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {}, // Placeholder for the onTap event
                      title: Container(
                        width: 100, // Set the width of the image container
                        height: 100, // Set the height of the image container
                        child: Image.asset(
                          PizzaPhoto[index]
                              .pizzaImage, // Load the image from assets
                          fit: BoxFit
                              .cover, // Ensure the image covers the container
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Text('fegg'), // Placeholder text at the bottom
          ],
        ),
      ),
    );
  }
}*/







              


             /*import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(7, 8, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  print('Button pressed');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/search_icon.jpg'),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'SELECT LOCATION',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 47),
                          child: Text(
                            'AL MASHTAL',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Icon(
                      Icons.arrow_drop_down_circle_sharp,
                      color: Color(0xffe63d38),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/bell_icon.jpg',
                  height: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}*/