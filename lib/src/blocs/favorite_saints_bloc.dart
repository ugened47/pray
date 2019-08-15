import 'dart:async';
import 'dart:collection';

import 'package:pray/src/models/saint.dart';
import 'package:rxdart/rxdart.dart';

class FavoriteSaintsBloc {
  final Set<Saint> _favorites = Set<Saint>();

  BehaviorSubject<Saint> _favoriteSaintController = BehaviorSubject<Saint>();
  Stream<Saint> get favoriteSaint => _favoriteSaintController.stream;
  StreamSink<Saint> get addToFavorites => _favoriteSaintController.sink;

  BehaviorSubject<List<Saint>> _favoritesController = BehaviorSubject<List<Saint>>();
  Sink<List<Saint>> get _inFavorites =>_favoritesController.sink;
  Stream<List<Saint>> get outFavorites => _favoritesController.stream;

  FavoriteSaintsBloc(){
    favoriteSaint.listen(_handleAddFavorite);
  }

  void _handleAddFavorite(Saint saint){
    print(saint.toJson());
    _favorites.add(saint);

    _notify();
  }

  void _notify(){
    _inFavorites.add(UnmodifiableListView(_favorites));
  }

  void dispose() {
    _favoriteSaintController.close();
    _favoritesController.close();
  }
}