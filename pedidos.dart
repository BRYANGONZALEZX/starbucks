import '../essentials/icon_button.dart';
import '../essentials/theme.dart';
import '../essentials/util.dart';
import '../essentials/widgets.dart';
import 'starcards.dart';
import 'ordenes.dart';
import 'regalos.dart';
import 'pedidos_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioCopy2CopyWidget extends StatefulWidget {
  const InicioCopy2CopyWidget({Key key}) : super(key: key);

  @override
  _InicioCopy2CopyWidgetState createState() => _InicioCopy2CopyWidgetState();
}

class _InicioCopy2CopyWidgetState extends State<InicioCopy2CopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.85, 0),
                child: Text(
                  'Ordena',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 30,
                      ),
                ),
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0.9),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 400),
                            reverseDuration: Duration(milliseconds: 400),
                            child: InicioCopy2Widget(),
                          ),
                        );
                      },
                      text: 'Ordena',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0x004B39EF),
                        textStyle: FlutterFlowTheme.of(context).subtitle2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.1, 0.9),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 400),
                            reverseDuration: Duration(milliseconds: 400),
                            child: PedidosWidget(),
                          ),
                        );
                      },
                      text: 'Pedidos',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.07, 1.5),
                    child: Icon(
                      Icons.horizontal_rule,
                      color: Color(0xFF009A26),
                      size: 60,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.77, 1.5),
                    child: Icon(
                      Icons.horizontal_rule,
                      size: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [],
          elevation: 5,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 450,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -0.75),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 350,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Image.asset(
                                      'assets/images/137-67487_(1).png',
                                      width: 350,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.8, 0.15),
                          child: Text(
                            'No hay pedidos recientes',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.35),
                          child: Text(
                            'Tus pedidos se mostrarán hasta que confirmes una orden',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ],
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
                        onPressed: () {
                          print('IconButton pressed ...');
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
                            color: Color(0xFF009A26),
                            size: 25,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
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
                                child: InicioCopyWidget(),
                              ),
                            );
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
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4F4F4F),
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.46, 1),
                        child: Text(
                          'Tarjetas',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Text(
                          'Ordena',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF009A26),
                                  ),
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
