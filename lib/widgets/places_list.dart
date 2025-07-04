import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/place_detail.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Place> places;
  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          "Nothing is here yet!",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ListTile(
          minVerticalPadding: 20,
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: FileImage(places[index].image),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (ctx) {
              return PlaceDetailScreen(
                place: places[index],
              );
            }));
          },
          title: Text(
            places[index].title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        );
      },
      itemCount: places.length,
    );
  }
}
