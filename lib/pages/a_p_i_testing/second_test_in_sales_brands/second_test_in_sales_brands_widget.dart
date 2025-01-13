import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'second_test_in_sales_brands_model.dart';
export 'second_test_in_sales_brands_model.dart';

class SecondTestInSalesBrandsWidget extends StatefulWidget {
  const SecondTestInSalesBrandsWidget({super.key});

  @override
  State<SecondTestInSalesBrandsWidget> createState() =>
      _SecondTestInSalesBrandsWidgetState();
}

class _SecondTestInSalesBrandsWidgetState
    extends State<SecondTestInSalesBrandsWidget> {
  late SecondTestInSalesBrandsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondTestInSalesBrandsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: GetVehicleBrandsCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitWave(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final listViewGetVehicleBrandsResponse = snapshot.data!;

              return Builder(
                builder: (context) {
                  final brands2 = GetVehicleBrandsCall.vehicleBrands(
                        listViewGetVehicleBrandsResponse.jsonBody,
                      )?.toList() ??
                      [];

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: brands2.length,
                    itemBuilder: (context, brands2Index) {
                      final brands2Item = brands2[brands2Index];
                      return Text(
                        valueOrDefault<String>(
                          brands2Item,
                          'Brands2',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              letterSpacing: 0.0,
                            ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
