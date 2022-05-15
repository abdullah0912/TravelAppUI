import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _countries = ['Istanbul', 'Cairo', 'Moskow', 'Cordoba'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.extension,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const Text.rich(
              TextSpan(
                text: 'Welcome\n',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Charlie',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search',
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            const Text(
              'Saved Places',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 300.0,
              child: GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio: 1.491,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  for (var _country in _countries)
                    Image.asset('assets/images/$_country.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
