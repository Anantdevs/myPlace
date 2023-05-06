import 'package:flutter/material.dart';
import 'package:place_app/providers/great_places.dart';
import 'package:place_app/screens/add_place_screen.dart';
import 'package:place_app/screens/place_detail_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Places'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: FutureBuilder(
          future: Provider.of<GreatPlaces>(context, listen: false)
              .fetchAndSetPlaces(),
          builder: (ctx, snpashot) => snpashot.connectionState ==
                  ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Consumer<GreatPlaces>(
                  child: Center(
                    child: Text(
                      'Got no places yet, start adding same',
                    ),
                  ),
                  builder: (ctx, greatplaces, ch) =>
                      greatplaces.items.length <= 0
                          ? ch
                          : ListView.builder(
                              itemCount: greatplaces.items.length,
                              itemBuilder: (ctx, i) => ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      FileImage(greatplaces.items[i].image),
                                ),
                                title: Text(greatplaces.items[i].title),
                                subtitle:
                                    Text(greatplaces.items[i].location.address),
                                onTap: () {
                                  //go detail page ...
                                  Navigator.of(context).pushNamed(
                                      PlaceDetailScreen.routeName,
                                      arguments: greatplaces.items[i].id);
                                },
                              ),
                            ),
                ),
        ));
  }
}
