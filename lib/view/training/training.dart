import 'package:flutter/material.dart';
import 'package:vrex3/view/training/arms.dart';
import 'package:vrex3/view/training/back.dart';
import 'package:vrex3/view/training/chest.dart';
import 'package:vrex3/view/training/legs.dart';
import 'package:vrex3/view/training/shoulder.dart';
import 'package:vrex3/view/view.dart';

import 'abs.dart';

class Training extends StatelessWidget {
  static const routename = '/train';
  const Training({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Dashboard2.routename);
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text('Training'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: Image.network(
                'https://st2.depositphotos.com/1909187/10981/i/950/depositphotos_109811754-stock-photo-chest-muscles-pectoralis-major-and.jpg',
                width: 70,
                height: 100,
              ),
              title: const Text('Chest'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Chest())));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Image.network(
                  'https://st2.depositphotos.com/1047356/12015/i/950/depositphotos_120153122-stock-photo-back-human-anatomy.jpg'),
              title: const Text('Back'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Back())));
              },
            ),
            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: Image.network(
                  'https://www.shutterstock.com/shutterstock/videos/1106526035/thumb/1.jpg?ip=x480'),
              title: const Text('Shoulders'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => const Shoulders())));
              },
            ),
            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: Image.network(
                  'https://cdn.shopify.com/s/files/1/1214/5580/files/Muscle_Group_Biceps.jpg?v=1601051495'),
              title: const Text('Arms'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Arms())));
              },
            ),
            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYow7yveUDhw4HF4sbGrg0zHPoetCaTBtV7C4quJpAeJiaiORh7PQimO5BQDqI0VE7eLs&usqp=CAU',
                height: 100,
              ),
              title: const Text('Abs'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Abs())));
              },
            ),
            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: Image.network(
                  'https://glebephysiotherapy.com.au/wp-content/uploads/2019/07/Basic-thigh-anatomy.jpg'),
              title: const Text('Legs'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Legs())));
              },
            ),
          ],
        ),
      ),
    );
  }
}



// Muscel(
//   onTap: () {
//     Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: ((context) => Chest())));
//   },
//   title: 'Chest',
//   imageUrl:
//       'https://st2.depositphotos.com/1909187/10981/i/950/depositphotos_109811754-stock-photo-chest-muscles-pectoralis-major-and.jpg',
// ),
// Muscel(
//   onTap: () {},
//   title: 'Back',
//   imageUrl:
//       'https://st2.depositphotos.com/1047356/12015/i/950/depositphotos_120153122-stock-photo-back-human-anatomy.jpg',
// ),
// Muscel(
//   onTap: () {},
//   title: 'Shoulders',
//   imageUrl:
//       'https://www.shutterstock.com/shutterstock/videos/1106526035/thumb/1.jpg?ip=x480',
// ),
// Muscel(
//   onTap: () {},
//   title: 'Arms',
//   imageUrl:
//       'https://cdn.shopify.com/s/files/1/1214/5580/files/Muscle_Group_Biceps.jpg?v=1601051495',
// ),
// Muscel(
//   onTap: () {},
//   title: 'Abs',
//   imageUrl:
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYow7yveUDhw4HF4sbGrg0zHPoetCaTBtV7C4quJpAeJiaiORh7PQimO5BQDqI0VE7eLs&usqp=CAU',
// ),
// Muscel(
//   onTap: () {},
//   title: 'Legs',
//   imageUrl:
//       'https://glebephysiotherapy.com.au/wp-content/uploads/2019/07/Basic-thigh-anatomy.jpg',
// )
