part of 'location_bloc.dart';

sealed class LocationState {}

class LocationInitialState extends LocationState {}

class LocationFetching extends LocationState {}

class NavigateToLocation extends LocationState {}
