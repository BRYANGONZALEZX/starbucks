import '../essentials/icon_button.dart';
import '../essentials/theme.dart';
import '../essentials/util.dart';
import 'inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PedidosWidget extends StatefulWidget {
  const PedidosWidget({Key key}) : super(key: key);

  @override
  _PedidosWidgetState createState() => _PedidosWidgetState();
}

class _PedidosWidgetState extends State<PedidosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF009A26)),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: Color(0x00FFFFFF),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF009A26),
            size: 20,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 30),
                reverseDuration: Duration(milliseconds: 30),
                child: InicioWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Pedidos',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                fontSize: 25,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 5,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
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
                        'assets/images/137-67487_(1).png',
                        width: 500,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, -0.95),
                child: Text(
                  'No hay pedidos recientes',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(-0.1, -0.95),
                  child: Text(
                    'Tus pedidos se mostrarán hasta que confirmes una orden',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                        ),
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
