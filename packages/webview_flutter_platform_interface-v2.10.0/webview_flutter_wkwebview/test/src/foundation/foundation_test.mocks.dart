/*
Copyright (c) 2024 Hunan OpenValley Digital Industry Development Co., Ltd.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:webview_flutter_wkwebview/src/common/web_kit.g.dart' as _i3;

import '../common/test_web_kit.g.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [TestNSObjectHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestNSObjectHostApi extends _i1.Mock
    implements _i2.TestNSObjectHostApi {
  MockTestNSObjectHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void dispose(int? identifier) => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [identifier],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addObserver(
    int? identifier,
    int? observerIdentifier,
    String? keyPath,
    List<_i3.NSKeyValueObservingOptionsEnumData?>? options,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #addObserver,
          [
            identifier,
            observerIdentifier,
            keyPath,
            options,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeObserver(
    int? identifier,
    int? observerIdentifier,
    String? keyPath,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #removeObserver,
          [
            identifier,
            observerIdentifier,
            keyPath,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TestNSUrlCredentialHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestNSUrlCredentialHostApi extends _i1.Mock
    implements _i2.TestNSUrlCredentialHostApi {
  MockTestNSUrlCredentialHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void createWithUser(
    int? identifier,
    String? user,
    String? password,
    _i3.NSUrlCredentialPersistence? persistence,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #createWithUser,
          [
            identifier,
            user,
            password,
            persistence,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TestNSUrlHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestNSUrlHostApi extends _i1.Mock implements _i2.TestNSUrlHostApi {
  MockTestNSUrlHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String? getAbsoluteString(int? identifier) =>
      (super.noSuchMethod(Invocation.method(
        #getAbsoluteString,
        [identifier],
      )) as String?);
}