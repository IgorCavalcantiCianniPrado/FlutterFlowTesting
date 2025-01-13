import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'get_list_vehicle_brands_model.dart';
export 'get_list_vehicle_brands_model.dart';

class GetListVehicleBrandsWidget extends StatefulWidget {
  const GetListVehicleBrandsWidget({super.key});

  @override
  State<GetListVehicleBrandsWidget> createState() =>
      _GetListVehicleBrandsWidgetState();
}

class _GetListVehicleBrandsWidgetState
    extends State<GetListVehicleBrandsWidget> {
  late GetListVehicleBrandsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetListVehicleBrandsModel());

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
              final gridViewGetVehicleBrandsResponse = snapshot.data!;

              return Builder(
                builder: (context) {
                  final brands = GetVehicleBrandsCall.vehicleBrands(
                        gridViewGetVehicleBrandsResponse.jsonBody,
                      )?.toList() ??
                      [];

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: brands.length,
                    itemBuilder: (context, brandsIndex) {
                      final brandsItem = brands[brandsIndex];
                      return Text(
                        valueOrDefault<String>(
                          brandsItem,
                          'Brands',
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
