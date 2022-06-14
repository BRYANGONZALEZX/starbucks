import '../essentials/icon_button.dart';
import '../essentials/theme.dart';
import '../essentials/util.dart';
import 'inicio_widget.dart';
import 'ordenes.dart';
import 'regalos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioCopyWidget extends StatefulWidget {
  const InicioCopyWidget({Key key}) : super(key: key);

  @override
  _InicioCopyWidgetState createState() => _InicioCopyWidgetState();
}

class _InicioCopyWidgetState extends State<InicioCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.85, 0.45),
                child: Text(
                  'Starbucks cards',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 22,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 5,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, -0.85),
                      child: Container(
                        width: 500,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Image.asset(
                                'assets/images/tarjeta2.png',
                                width: 500,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, -1.2),
                      child: Text(
                        'Obtén una tarjeta digital después de unirte al programa, o registra una tarjeta de regalo que ya tienes.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, 0),
                    child: Text(
                      'Obtén bebidas gratis, alimentos y más',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: 500,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x00FFFFFF),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFF4F4F4F),
                          size: 20,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                              reverseDuration: Duration(milliseconds: 0),
                              child: InicioWidget(),
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.gulp,
                            color: Color(0xFF4F4F4F),
                            size: 25,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: InicioCopy2Widget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.5, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.percentage,
                            color: Color(0xFF009A26),
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.95, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.shoppingCart,
                            color: Color(0xFF4F4F4F),
                            size: 20,
                          ),
                          onPressed: () async {
                            await launchURL(
                                'https://www.starbucks.com.mx/stores');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.45, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.gift,
                            color: Color(0xFF4F4F4F),
                            size: 20,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: InicioCopy2Copy2Widget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.93, 1),
                        child: Text(
                          'Inicio',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.46, 1),
                        child: Text(
                          'Tarjetas',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF009A26),
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Text(
                          'Ordena',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.44, 1),
                        child: Text(
                          'Regalos',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.9, 1),
                        child: Text(
                          'Tiendas',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
