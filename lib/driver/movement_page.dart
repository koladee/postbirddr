import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker/place_picker.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:postbird/driver/history_details.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:postbird/driver/home_online-boooking_details.dart';
// import 'package:postbird/models/place_model.dart';
import 'package:postbird/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Pickupmovement extends StatefulWidget {
  final fromad;
  final toad;
  final latf;
  final lonf;
  final latto;
  final longto;
  final LatLngBounds bound;
  final Set<Polyline> polylines;
  final List<LatLng> polylineCoordinates;
  final notes;
  final amt;
  final size;
  final rphone;
  const Pickupmovement({
    Key key,
    this.fromad,
    this.toad,
    this.latf,
    this.lonf,
    this.latto,
    this.longto,
    this.bound,
    this.polylines,
    this.polylineCoordinates,
    this.notes,
    this.amt,
    this.size,
    this.rphone,
  }) : super(key: key);
  // const Pickupmovement({ Key? key }) : super(key: key);
  // static String routeName = "taxi-movement-page";
  // final PlaceDetail fromPlaceDetail;
  // final PlaceDetail toPlaceDetail;
  // final Set<Polyline> polylines;
  // final List<LatLng> polylineCoordinates;
  // final LatLngBounds bound;

  // const Pickupmovement(
  //     {Key key,
  //     this.fromPlaceDetail,
  //     this.toPlaceDetail,
  // this.polylines,
  // this.polylineCoordinates,
  //     this.bound})
  //     : super(key: key);
  @override
  _PickupmovementState createState() => _PickupmovementState();
}

class _PickupmovementState extends State<Pickupmovement> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controller = Completer();
  bool isMapCreated = false;
  final Key _mapKey = UniqueKey();
  Timer _demoTimer;
  Set<Marker> _markers = {};
  LatLng _initialCameraPosition;
  String _mapStyle;
  BitmapDescriptor _mylocation;
  BitmapDescriptor _taxilocation;
  bool _hasTripEnded = false;

  @override
  void dispose() {
    _demoTimer.cancel();
    super.dispose();
  }

  void initState() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),
            'assets/images/mylocation.png')
        .then((onValue) {
      _taxilocation = onValue;
    });

    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),
            'assets/images/mydestination.png')
        .then((onValue) {
      _mylocation = onValue;
    });
    var lat = double.parse('${widget.latto}');
    var log = double.parse('${widget.longto}');
    _initialCameraPosition = LatLng(lat, log);

    rootBundle.loadString('assets/images/map_style.txt').then((string) {
      _mapStyle = string;
    });

    super.initState();
  }

  int index = 0;
  void updatePolyLinePoints() async {
    _demoTimer = Timer.periodic(Duration(milliseconds: 300), (t) {
      updateTaxiOnMap(widget.polylineCoordinates[index]);
    });
  }

  void updateTaxiOnMap(LatLng taxiPosition) async {
    var lat = double.parse('${widget.latto}');
    var log = double.parse('${widget.longto}');
    var latf = double.parse('${widget.latf}');
    var logf = double.parse('${widget.lonf}');
    CameraPosition cPosition = CameraPosition(
      zoom: 13,
      tilt: 40,
      bearing: 30,
      target: LatLng(latf, logf),
    );
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cPosition));
    setState(() {
      var newTaxiPosition = LatLng(lat, log);
      _markers.removeWhere((m) => m.markerId.value == 'pickup');
      _markers.add(Marker(
          markerId: MarkerId('pickup'),
          position: newTaxiPosition, // updated position
          icon: _taxilocation));
      if (index == widget.polylineCoordinates.length - 1) {
        _hasTripEnded = true;
        _demoTimer.cancel();
        //journey has ended
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height, //- 230.0,
              child: GoogleMap(
                key: _mapKey,
                mapType: MapType.normal,
                zoomGesturesEnabled: true,
                // myLocationEnabled: true,
                markers: _markers,
                //  polylines: widget.polylines,
                initialCameraPosition:
                    CameraPosition(target: _initialCameraPosition, zoom: 13),
                onMapCreated: (GoogleMapController controller) {
                  controller.setMapStyle(_mapStyle);
                  _controller.complete(controller);
                  setState(() {
                    var lat = double.parse('${widget.latto}');
                    var log = double.parse('${widget.longto}');
                    var latf = double.parse('${widget.latf}');
                    var logf = double.parse('${widget.lonf}');
                    _markers.add(Marker(
                        markerId: MarkerId("my destination"),
                        position: LatLng(lat, log),
                        icon: _mylocation,
                        infoWindow: InfoWindow(
                          title: "My destination",
                        ),
                        onTap: () {}));

                    _markers.add(Marker(
                        markerId: MarkerId("pickup"),
                        position: LatLng(latf, logf),
                        icon: _taxilocation,
                        infoWindow: InfoWindow(
                          title: "Pick Up Location",
                        ),
                        onTap: () {}));
                  });

                  Future.delayed(const Duration(milliseconds: 100), () {
                    CameraUpdate u2 =
                        CameraUpdate.newLatLngBounds(widget.bound, 50);
                    controller.animateCamera(u2).then((void v) {
                      //  check(u2, controller);
                    });
                  });
                },
              )),
          Positioned(
            top: 50.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        _hasTripEnded
                            ? Navigator.of(context).pop
                            // .pushReplacementNamed(RateDriverPage.routeName)
                            : Navigator.of(context).pop();
                      },
                      color: _hasTripEnded ? Colors.red : Colors.yellow[900],
                      textColor: Colors.white,
                      child: Icon(
                        _hasTripEnded ? FontAwesomeIcons.car : Icons.arrow_back,
                        size: 15,
                      ),
                      padding: EdgeInsets.all(6),
                      shape: CircleBorder(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          !_hasTripEnded
                              ? "PostBird Driver will arrive"
                              : "taxi at destination",
                          style: CustomStyles.smallLightTextStyle,
                        ),
                        Text(
                          !_hasTripEnded
                              ? "Your Destination in some minutes"
                              : "Your trip has ended",
                          style: CustomStyles.normalTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.12,
            maxChildSize: 0.94,
            minChildSize: 0.12,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[900],
                      blurRadius: 50,
                      offset: Offset(
                        -10,
                        -10,
                      ),
                    ),
                  ],
                ),
                child: ListView(
                  controller: controller,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 185,
                      ),
                      child: Container(
                        height: 4,
                        width: 10,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      width: width,
                      height: height * 0.07,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                0xFFFEBC52,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'A',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Pick up at',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFBEC2CE,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                '${widget.fromad}',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Container(
                        height: 1,
                        width: width,
                        color: Color(
                          0xFF242A37,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 25,
                        left: 25,
                      ),
                      color: Colors.white,
                      width: width,
                      height: height * 0.16,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Est',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '5 mins',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Distance',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '2.2 Km',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Fare',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFFBEC2CE,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '${widget.amt}',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.pushNamed(
                              //   context,
                              //   '/history_details',
                              // );
                              // HistoryDetails();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HistoryDetails(
                                        fromad: widget.fromad,
                                        toad: widget.toad,
                                        latf: widget.latf,
                                        lonf: widget.lonf,
                                        latto: widget.latto,
                                        longto: widget.longto,
                                        notes: widget.notes,
                                        amt: widget.amt,
                                        size: widget.size,
                                        rphone: widget.rphone,
                                      )));
                            },
                            child: Container(
                              height: 45,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(
                                  0xFFFEBC52,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'DROP OFF',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFF262628,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Container(
                        height: 1,
                        width: width,
                        color: Color(
                          0xFF242A37,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/up_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Head shouth west on Madison St',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '18 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/left_sub_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Turn left unto 4th Ave',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '12 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/right_sub_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Turn right at 105th N Link Rd',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFF242A37,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Pass by Executive Hotel Pacific (on the left)',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '40 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/right_sub_arrow.png',
                                height: 17,
                                width: 12,
                                color: Color(
                                  0xFFFEBC52,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: Text(
                                  'Turn right at 105 William St, Chicago, US',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFFFEBC52,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '250 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/up_arrow.png',
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: Text(
                                  'Continue straight to stay on Vancouver',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                      0xFF242A37,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 17,
                                width: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Entering California',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 13,
                                  color: Color(
                                    0xFFA3A6AF,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 5,
                          ),
                          child: Container(
                            width: width,
                            child: Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '24 miles',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 1,
                                        width: width * 0.65,
                                        color: Color(
                                          0xFF242A37,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: !_hasTripEnded ? Colors.amber : Colors.red,
      //   onPressed: () {
      //     !_hasTripEnded
      //         ? updatePolyLinePoints()
      //         : Navigator.of(context).pushReplacement(MaterialPageRoute(
      //             builder: (BuildContext context) =>
      //                 HomeOnlineBookingDetails()));
      //   },
      //   //  Navigator.of(context)
      //   //     .pushReplacementNamed(HomeOnlineBookingDetails.);
      //   // },
      //   child: Icon(FontAwesomeIcons.taxi),
      // ),
    );
  }
}
