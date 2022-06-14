import '../essentials/icon_button.dart';
import '../essentials/theme.dart';
import '../essentials/util.dart';
import '../essentials/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class TiendasWidget extends StatefulWidget {
  const TiendasWidget({Key key}) : super(key: key);

  @override
  _TiendasWidgetState createState() => _TiendasWidgetState();
}

class _TiendasWidgetState extends State<TiendasWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      await launchURL('https://www.starbucks.com.mx/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Image.asset(
            'assets/images/Starbucks-logo.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: ListTile(
                        title: Text(
                          'Starbucks Plaza Bonita',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          'Av. Tecnologico 5350',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.storefront_sharp,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: ListTile(
                        title: Text(
                          'Las Misiones',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          'Blvd Teofilo Borunda No 8681',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.storefront,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: ListTile(
                        title: Text(
                          'Plaza Las Torres',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        subtitle: Text(
                          'Av. Las Torees No 8761',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        trailing: Icon(
                          Icons.storefront_sharp,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'VISITAR PÁGINA WEB',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF007337),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 30,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
