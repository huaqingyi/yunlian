// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderStore on _OrderStore, Store {
  final _$freightQueryResponseAtom =
      Atom(name: '_OrderStore.freightQueryResponse');

  @override
  Response get freightQueryResponse {
    _$freightQueryResponseAtom.context
        .enforceReadPolicy(_$freightQueryResponseAtom);
    _$freightQueryResponseAtom.reportObserved();
    return super.freightQueryResponse;
  }

  @override
  set freightQueryResponse(Response value) {
    _$freightQueryResponseAtom.context.conditionallyRunInAction(() {
      super.freightQueryResponse = value;
      _$freightQueryResponseAtom.reportChanged();
    }, _$freightQueryResponseAtom,
        name: '${_$freightQueryResponseAtom.name}_set');
  }

  final _$serviceAtom = Atom(name: '_OrderStore.service');

  @override
  OrderService get service {
    _$serviceAtom.context.enforceReadPolicy(_$serviceAtom);
    _$serviceAtom.reportObserved();
    return super.service;
  }

  @override
  set service(OrderService value) {
    _$serviceAtom.context.conditionallyRunInAction(() {
      super.service = value;
      _$serviceAtom.reportChanged();
    }, _$serviceAtom, name: '${_$serviceAtom.name}_set');
  }
}
