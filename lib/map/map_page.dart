import 'package:devfest/config/config_bloc.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  List<Marker> _markers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.add(Marker(
        infoWindow: InfoWindow(
            title: 'DevFest Aba Location',
            snippet:
                '3 Convenant Close, Behind Rufus Obi Chemists off Aba-Owerri Road, Aba'),
        markerId: MarkerId('myMarker'),
        draggable: false,
        position: LatLng(5.138412, 7.352618)));
  }

  GoogleMapController _controller;
  bool isMapCreated = false;
  changeMapMode() {
    if (ConfigBloc().darkModeOn) {
      getJsonFile("assets/nightmode.json").then(setMapStyle);
    } else {
      getJsonFile("assets/daymode.json").then(setMapStyle);
    }
  }

  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String mapStyle) {
    _controller.setMapStyle(mapStyle);
  }

  @override
  Widget build(BuildContext context) {
    if (isMapCreated) {
      changeMapMode();
    }
    return DevScaffold(
      body: GoogleMap(
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          setState(() {});
          _controller = controller;
          isMapCreated = true;
          changeMapMode();
        },
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(5.138412, 7.352618), zoom: 17),
        myLocationEnabled: true,
        compassEnabled: true,
        markers: Set.from(_markers),
      ),
      title: 'Location',
    );
  }
}
