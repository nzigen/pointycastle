// Copyright (c) 2013-present, the authors of the Pointy Castle project
// This library is dually licensed under LGPL 3 and MPL 2.0.
// See file LICENSE for more information.

library pointycastle.src.registry;

import "registry_disabled.dart";
export  "registry_disabled.dart";

final FactoryRegistry registry = makeRegistry();

abstract class FactoryRegistry {
  dynamic /* Registrable */ create(Type type, String registrableName);
}

typedef /*Registrable*/ RegistrableConstructor();
typedef RegistrableConstructor DynamicConstructorFactory(
    String registrableName, Match match);


abstract class FactoryConfig {
  final Type type;
  FactoryConfig(this.type);
}

class StaticFactoryConfig extends FactoryConfig {
  final String algorithmName;
  StaticFactoryConfig(Type type, this.algorithmName) : super(type);
}

class DynamicFactoryConfig extends FactoryConfig {
  final RegExp regExp;
  final DynamicConstructorFactory factory;

  DynamicFactoryConfig(Type type, this.regExp, this.factory) : super(type);

  DynamicFactoryConfig.regex(
      Type type, String regexString, DynamicConstructorFactory factory)
      : this(type, new RegExp(regexString), factory);

  /// Invokes the factory when it matches. Else returns null.
  RegistrableConstructor tryFactory(String algorithmName) {
    Match match = regExp.firstMatch(algorithmName);
    if (match == null) {
      return null;
    }
    return factory(algorithmName, match);
  }
}
