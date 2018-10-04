import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

import 'package:trufi_app/blocs/location_provider_bloc.dart';
import 'package:trufi_app/blocs/preferences_bloc.dart';
import 'package:trufi_app/keys.dart' as keys;
import 'package:trufi_app/location/location_form_field.dart';
import 'package:trufi_app/plan/plan.dart';
import 'package:trufi_app/plan/plan_empty.dart';
import 'package:trufi_app/trufi_api.dart' as api;
import 'package:trufi_app/trufi_localizations.dart';
import 'package:trufi_app/trufi_models.dart';
import 'package:trufi_app/widgets/alerts.dart';
import 'package:trufi_app/widgets/trufi_drawer.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _data = HomePageStateData();
  final _formKey = GlobalKey<FormState>();
  final _fromFieldKey = GlobalKey<FormFieldState<TrufiLocation>>();
  final _toFieldKey = GlobalKey<FormFieldState<TrufiLocation>>();

  bool _isFetching = false;

  @override
  initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _loadState();
    });
  }

  void _loadState() async {
    if (await _data.load(context) && _data.toPlace != null) {
      setState(() {
        _fromFieldKey.currentState?.didChange(_data.fromPlace);
        _toFieldKey.currentState?.didChange(_data.toPlace);
      });
    } else {
      _setFromPlaceToCurrentPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ValueKey(keys.homePage),
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      drawer: TrufiDrawer(HomePage.route),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(45.0),
      ),
      flexibleSpace: _buildFormFields(context),
    );
  }

  Widget _buildFormFields(BuildContext context) {
    TrufiLocalizations localizations = TrufiLocalizations.of(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildFormField(
                _fromFieldKey,
                ValueKey(keys.homePageFromPlaceField),
                localizations.searchPleaseSelect,
                _setFromPlace,
                trailing: _data.isResettable ? _buildResetButton() : null,
              ),
              _buildFormField(
                _toFieldKey,
                ValueKey(keys.homePageToPlaceField),
                localizations.searchPleaseSelect,
                _setToPlace,
                trailing: _data.isSwappable ? _buildSwapButton() : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwapButton() {
    return GestureDetector(
      key: ValueKey(keys.homePageSwapButton),
      onTap: _swapPlaces,
      child: Icon(Icons.swap_vert),
    );
  }

  Widget _buildResetButton() {
    return IconButton(
      icon: Icon(Icons.clear),
      onPressed: _reset,
    );
  }

  Widget _buildFormField(
    Key key,
    ValueKey<String> valueKey,
    String hintText,
    Function(TrufiLocation) onSaved, {
    TrufiLocation initialValue,
    Widget leading,
    Widget trailing,
  }) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40.0,
          child: leading,
        ),
        Expanded(
          key: valueKey,
          child: LocationFormField(
            key: key,
            hintText: hintText,
            onSaved: onSaved,
          ),
        ),
        SizedBox(
          width: 40.0,
          child: trailing,
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    Widget body = Container(
      child: _data.plan != null && _data.plan.error == null
          ? PlanPage(_data.plan)
          : PlanEmptyPage(),
    );
    if (_isFetching) {
      return Stack(
        children: <Widget>[
          Positioned.fill(child: body),
          Positioned.fill(
            child: Container(
              color: Colors.black54,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      );
    } else {
      return body;
    }
  }

  void _reset() {
    setState(() {
      _data.reset(context);
      _formKey.currentState.reset();
      _setFromPlaceToCurrentPosition();
    });
  }

  void _setPlaces(TrufiLocation fromPlace, TrufiLocation toPlace) {
    setState(() {
      _data.fromPlace = fromPlace;
      _data.toPlace = toPlace;
      _data.save(context);
      _toFieldKey.currentState.didChange(_data.toPlace);
      _fromFieldKey.currentState.didChange(_data.fromPlace);
      _fetchPlan();
    });
  }

  void _setFromPlace(TrufiLocation fromPlace) async {
    setState(() {
      _data.fromPlace = fromPlace;
      _data.save(context);
      _fromFieldKey.currentState.didChange(_data.fromPlace);
      _fetchPlan();
    });
  }

  void _setFromPlaceToCurrentPosition() async {
    final locationProviderBloc = LocationProviderBloc.of(context);
    final TrufiLocalizations localizations = TrufiLocalizations.of(context);
    final LatLng lastLocation = await locationProviderBloc.lastLocation;
    if (lastLocation != null) {
      _setFromPlace(
        TrufiLocation.fromLatLng(
          localizations.searchItemYourLocation,
          lastLocation,
        ),
      );
    }
  }

  void _setToPlace(TrufiLocation toPlace) {
    setState(() {
      _data.toPlace = toPlace;
      _data.save(context);
      _toFieldKey.currentState.didChange(_data.toPlace);
      _fetchPlan();
    });
  }

  void _setPlan(Plan plan) {
    setState(() {
      _data.plan = plan;
      _data.save(context);
    });
    PlanError error = _data.plan?.error;
    if (error != null) {
      showDialog(
        context: context,
        builder: (context) {
          return buildAlert(
            context: context,
            title: TrufiLocalizations.of(context).commonError,
            content: error.message,
          );
        },
      );
    }
  }

  void _swapPlaces() {
    _setPlaces(_data.toPlace, _data.fromPlace);
  }

  void _fetchPlan() async {
    final TrufiLocalizations localizations = TrufiLocalizations.of(context);
    if (_data.toPlace != null && _data.fromPlace != null) {
      setState(() => _isFetching = true);
      try {
        _setPlan(await api.fetchPlan(_data.fromPlace, _data.toPlace));
      } on api.FetchRequestException catch (e) {
        print("Failed to fetch plan: $e");
        _setPlan(Plan.fromError(localizations.commonNoInternet));
      } on api.FetchResponseException catch (e) {
        print("Failed to fetch plan: $e");
        _setPlan(Plan.fromError(localizations.searchFailLoadingPlan));
      }
      setState(() => _isFetching = false);
    }
  }
}

class HomePageStateData {
  static const String _FromPlace = "fromPlace";
  static const String _ToPlace = "toPlace";
  static const String _Plan = "plan";

  HomePageStateData({this.fromPlace, this.toPlace, this.plan});

  TrufiLocation fromPlace;
  TrufiLocation toPlace;
  Plan plan;

  // Json

  factory HomePageStateData.fromJson(Map<String, dynamic> json) {
    return HomePageStateData(
      fromPlace: TrufiLocation.fromJson(json[_FromPlace]),
      toPlace: TrufiLocation.fromJson(json[_ToPlace]),
      plan: Plan.fromJson(json[_Plan]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      _FromPlace: fromPlace != null ? fromPlace.toJson() : null,
      _ToPlace: toPlace != null ? toPlace.toJson() : null,
      _Plan: plan != null ? plan.toJson() : null,
    };
  }

  // Methods

  void reset(BuildContext context) async {
    fromPlace = null;
    toPlace = null;
    plan = null;
    PreferencesBloc.of(context).stateHomePage = null;
  }

  Future<bool> load(BuildContext context) async {
    try {
      HomePageStateData data = await compute(
        _parse,
        PreferencesBloc.of(context).stateHomePage,
      );
      if (data != null) {
        fromPlace = data.fromPlace;
        toPlace = data.toPlace;
        plan = data.plan;
        return true;
      }
    } catch (e) {
      print("Failed to load plan: $e");
    }
    return false;
  }

  void save(BuildContext context) async {
    PreferencesBloc.of(context).stateHomePage = json.encode(toJson());
  }

  // Getter

  bool get isSwappable => fromPlace != null && toPlace != null;

  bool get isResettable => toPlace != null || plan != null;
}

HomePageStateData _parse(String encoded) {
  if (encoded != null && encoded.isNotEmpty) {
    try {
      return HomePageStateData.fromJson(json.decode(encoded));
    } catch (e) {
      print("Failed to parse home page state data: $e");
    }
  }
  return HomePageStateData();
}
