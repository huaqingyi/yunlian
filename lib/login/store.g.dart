// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$loginFormDataAtom = Atom(name: '_LoginStore.loginFormData');

  @override
  LoginFormData get loginFormData {
    _$loginFormDataAtom.context.enforceReadPolicy(_$loginFormDataAtom);
    _$loginFormDataAtom.reportObserved();
    return super.loginFormData;
  }

  @override
  set loginFormData(LoginFormData value) {
    _$loginFormDataAtom.context.conditionallyRunInAction(() {
      super.loginFormData = value;
      _$loginFormDataAtom.reportChanged();
    }, _$loginFormDataAtom, name: '${_$loginFormDataAtom.name}_set');
  }

  final _$showLoginPasswordAtom = Atom(name: '_LoginStore.showLoginPassword');

  @override
  bool get showLoginPassword {
    _$showLoginPasswordAtom.context.enforceReadPolicy(_$showLoginPasswordAtom);
    _$showLoginPasswordAtom.reportObserved();
    return super.showLoginPassword;
  }

  @override
  set showLoginPassword(bool value) {
    _$showLoginPasswordAtom.context.conditionallyRunInAction(() {
      super.showLoginPassword = value;
      _$showLoginPasswordAtom.reportChanged();
    }, _$showLoginPasswordAtom, name: '${_$showLoginPasswordAtom.name}_set');
  }

  final _$loginMethodAtom = Atom(name: '_LoginStore.loginMethod');

  @override
  List get loginMethod {
    _$loginMethodAtom.context.enforceReadPolicy(_$loginMethodAtom);
    _$loginMethodAtom.reportObserved();
    return super.loginMethod;
  }

  @override
  set loginMethod(List value) {
    _$loginMethodAtom.context.conditionallyRunInAction(() {
      super.loginMethod = value;
      _$loginMethodAtom.reportChanged();
    }, _$loginMethodAtom, name: '${_$loginMethodAtom.name}_set');
  }

  final _$serviceAtom = Atom(name: '_LoginStore.service');

  @override
  LoginService get service {
    _$serviceAtom.context.enforceReadPolicy(_$serviceAtom);
    _$serviceAtom.reportObserved();
    return super.service;
  }

  @override
  set service(LoginService value) {
    _$serviceAtom.context.conditionallyRunInAction(() {
      super.service = value;
      _$serviceAtom.reportChanged();
    }, _$serviceAtom, name: '${_$serviceAtom.name}_set');
  }

  final _$userInfoAtom = Atom(name: '_LoginStore.userInfo');

  @override
  UserInfo get userInfo {
    _$userInfoAtom.context.enforceReadPolicy(_$userInfoAtom);
    _$userInfoAtom.reportObserved();
    return super.userInfo;
  }

  @override
  set userInfo(UserInfo value) {
    _$userInfoAtom.context.conditionallyRunInAction(() {
      super.userInfo = value;
      _$userInfoAtom.reportChanged();
    }, _$userInfoAtom, name: '${_$userInfoAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future login() {
    return _$loginAsyncAction.run(() => super.login());
  }
}
