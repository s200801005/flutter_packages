/*
 * Copyright (c) 2024 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Mocks generated by Mockito 5.4.4 from annotations
// in webview_flutter_web/test/web_webview_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:html' as _i2;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i3;
import 'package:webview_flutter_web/src/http_request_factory.dart' as _i5;

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

class _FakeHttpRequestUpload_0 extends _i1.SmartFake
    implements _i2.HttpRequestUpload {
  _FakeHttpRequestUpload_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEvents_1 extends _i1.SmartFake implements _i2.Events {
  _FakeEvents_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpRequest_2 extends _i1.SmartFake implements _i2.HttpRequest {
  _FakeHttpRequest_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HttpRequest].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpRequest extends _i1.Mock implements _i2.HttpRequest {
  @override
  Map<String, String> get responseHeaders => (super.noSuchMethod(
        Invocation.getter(#responseHeaders),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);

  @override
  int get readyState => (super.noSuchMethod(
        Invocation.getter(#readyState),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  String get responseType => (super.noSuchMethod(
        Invocation.getter(#responseType),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.getter(#responseType),
        ),
        returnValueForMissingStub: _i3.dummyValue<String>(
          this,
          Invocation.getter(#responseType),
        ),
      ) as String);

  @override
  set responseType(String? value) => super.noSuchMethod(
        Invocation.setter(
          #responseType,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set timeout(int? value) => super.noSuchMethod(
        Invocation.setter(
          #timeout,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.HttpRequestUpload get upload => (super.noSuchMethod(
        Invocation.getter(#upload),
        returnValue: _FakeHttpRequestUpload_0(
          this,
          Invocation.getter(#upload),
        ),
        returnValueForMissingStub: _FakeHttpRequestUpload_0(
          this,
          Invocation.getter(#upload),
        ),
      ) as _i2.HttpRequestUpload);

  @override
  set withCredentials(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #withCredentials,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Stream<_i2.Event> get onReadyStateChange => (super.noSuchMethod(
        Invocation.getter(#onReadyStateChange),
        returnValue: _i4.Stream<_i2.Event>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.Event>.empty(),
      ) as _i4.Stream<_i2.Event>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onAbort => (super.noSuchMethod(
        Invocation.getter(#onAbort),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onError => (super.noSuchMethod(
        Invocation.getter(#onError),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onLoad => (super.noSuchMethod(
        Invocation.getter(#onLoad),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onLoadEnd => (super.noSuchMethod(
        Invocation.getter(#onLoadEnd),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onLoadStart => (super.noSuchMethod(
        Invocation.getter(#onLoadStart),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onProgress => (super.noSuchMethod(
        Invocation.getter(#onProgress),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i4.Stream<_i2.ProgressEvent> get onTimeout => (super.noSuchMethod(
        Invocation.getter(#onTimeout),
        returnValue: _i4.Stream<_i2.ProgressEvent>.empty(),
        returnValueForMissingStub: _i4.Stream<_i2.ProgressEvent>.empty(),
      ) as _i4.Stream<_i2.ProgressEvent>);

  @override
  _i2.Events get on => (super.noSuchMethod(
        Invocation.getter(#on),
        returnValue: _FakeEvents_1(
          this,
          Invocation.getter(#on),
        ),
        returnValueForMissingStub: _FakeEvents_1(
          this,
          Invocation.getter(#on),
        ),
      ) as _i2.Events);

  @override
  void open(
    String? method,
    String? url, {
    bool? async,
    String? user,
    String? password,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #open,
          [
            method,
            url,
          ],
          {
            #async: async,
            #user: user,
            #password: password,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void abort() => super.noSuchMethod(
        Invocation.method(
          #abort,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String getAllResponseHeaders() => (super.noSuchMethod(
        Invocation.method(
          #getAllResponseHeaders,
          [],
        ),
        returnValue: _i3.dummyValue<String>(
          this,
          Invocation.method(
            #getAllResponseHeaders,
            [],
          ),
        ),
        returnValueForMissingStub: _i3.dummyValue<String>(
          this,
          Invocation.method(
            #getAllResponseHeaders,
            [],
          ),
        ),
      ) as String);

  @override
  String? getResponseHeader(String? name) => (super.noSuchMethod(
        Invocation.method(
          #getResponseHeader,
          [name],
        ),
        returnValueForMissingStub: null,
      ) as String?);

  @override
  void overrideMimeType(String? mime) => super.noSuchMethod(
        Invocation.method(
          #overrideMimeType,
          [mime],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void send([dynamic body_OR_data]) => super.noSuchMethod(
        Invocation.method(
          #send,
          [body_OR_data],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setRequestHeader(
    String? name,
    String? value,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setRequestHeader,
          [
            name,
            value,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addEventListener(
    String? type,
    _i2.EventListener? listener, [
    bool? useCapture,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addEventListener,
          [
            type,
            listener,
            useCapture,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeEventListener(
    String? type,
    _i2.EventListener? listener, [
    bool? useCapture,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #removeEventListener,
          [
            type,
            listener,
            useCapture,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool dispatchEvent(_i2.Event? event) => (super.noSuchMethod(
        Invocation.method(
          #dispatchEvent,
          [event],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [HttpRequestFactory].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpRequestFactory extends _i1.Mock
    implements _i5.HttpRequestFactory {
  @override
  _i4.Future<_i2.HttpRequest> request(
    String? url, {
    String? method,
    bool? withCredentials,
    String? responseType,
    String? mimeType,
    Map<String, String>? requestHeaders,
    dynamic sendData,
    void Function(_i2.ProgressEvent)? onProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [url],
          {
            #method: method,
            #withCredentials: withCredentials,
            #responseType: responseType,
            #mimeType: mimeType,
            #requestHeaders: requestHeaders,
            #sendData: sendData,
            #onProgress: onProgress,
          },
        ),
        returnValue: _i4.Future<_i2.HttpRequest>.value(_FakeHttpRequest_2(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #method: method,
              #withCredentials: withCredentials,
              #responseType: responseType,
              #mimeType: mimeType,
              #requestHeaders: requestHeaders,
              #sendData: sendData,
              #onProgress: onProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.HttpRequest>.value(_FakeHttpRequest_2(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #method: method,
              #withCredentials: withCredentials,
              #responseType: responseType,
              #mimeType: mimeType,
              #requestHeaders: requestHeaders,
              #sendData: sendData,
              #onProgress: onProgress,
            },
          ),
        )),
      ) as _i4.Future<_i2.HttpRequest>);
}
