import 'added_widget.dart';
import '../essentials/checkbox_group.dart';
import '../essentials/count_controller.dart';
import '../essentials/icon_button.dart';
import '../essentials/theme.dart';
import '../essentials/util.dart';
import '../essentials/widgets.dart';
import 'productos_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CajetafpWidget extends StatefulWidget {
  const CajetafpWidget({Key key}) : super(key: key);

  @override
  _CajetafpWidgetState createState() => _CajetafpWidgetState();
}

class _CajetafpWidgetState extends State<CajetafpWidget> {
  List<String> checkboxGroupValues1;
  List<String> checkboxGroupValues2;
  List<String> checkboxGroupValues3;
  int countControllerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
                reverseDuration: Duration(milliseconds: 0),
                child: ProductosWidget(),
              ),
            );
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/2022-02_mocha.frappuccino_1.png',
                            width: double.infinity,
                            height: 230,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Mocha Frappuccino ®',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '\$144.00',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Descripción',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Una mezcla de chocolate Blanco con café, hielo y leche, podría ser lo mejor que te pudiera pasar en todo el día',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Tipo de leche',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ),
                            FlutterFlowCheckboxGroup(
                              initiallySelected: checkboxGroupValues1 != null
                                  ? checkboxGroupValues1
                                  : [],
                              options: [
                                'Light',
                                'Entera',
                                'Deslactosada - +\$12.00'
                              ].toList(),
                              onChanged: (val) =>
                                  setState(() => checkboxGroupValues1 = val),
                              activeColor: Color(0xFF009A26),
                              checkColor: Colors.white,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context).bodyText1,
                              itemPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              checkboxBorderRadius: BorderRadius.circular(4),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Tamaño',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ),
                            FlutterFlowCheckboxGroup(
                              initiallySelected: checkboxGroupValues2 != null
                                  ? checkboxGroupValues2
                                  : [],
                              options: [
                                'Grande (16oz - 437ml) \$114.00',
                                'Venti (20oz - 606ml) +\$6.00'
                              ].toList(),
                              onChanged: (val) =>
                                  setState(() => checkboxGroupValues2 = val),
                              activeColor: Color(0xFF009A26),
                              checkColor: Colors.white,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context).bodyText1,
                              itemPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              checkboxBorderRadius: BorderRadius.circular(4),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Jarabes',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ),
                            FlutterFlowCheckboxGroup(
                              initiallySelected: checkboxGroupValues3 != null
                                  ? checkboxGroupValues3
                                  : [],
                              options: [
                                'Cinnamon Dolce - +\$11.00',
                                'Clásico - +\$11.00',
                                'Menta - +\$11.00'
                              ].toList(),
                              onChanged: (val) =>
                                  setState(() => checkboxGroupValues3 = val),
                              activeColor: Color(0xFF009A26),
                              checkColor: Colors.white,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context).bodyText1,
                              itemPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              checkboxBorderRadius: BorderRadius.circular(4),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Cantidad',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                              child: Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(25),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    width: 1,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => Icon(
                                    Icons.remove_rounded,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryText
                                        : FlutterFlowTheme.of(context)
                                            .lineColor,
                                    size: 20,
                                  ),
                                  incrementIconBuilder: (enabled) => Icon(
                                    Icons.add_rounded,
                                    color: enabled
                                        ? Color(0xFF009A26)
                                        : FlutterFlowTheme.of(context)
                                            .lineColor,
                                    size: 20,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  count: countControllerValue ??= 1,
                                  updateCount: (count) => setState(
                                      () => countControllerValue = count),
                                  stepSize: 1,
                                  minimum: 1,
                                  maximum: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: AddedWidget(),
                      ),
                    );
                  },
                  text: 'Agregar',
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
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
