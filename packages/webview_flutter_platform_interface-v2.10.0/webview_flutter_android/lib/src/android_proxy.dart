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

import 'android_webview.dart' as android_webview;

/// Handles constructing objects and calling static methods for the Android
/// WebView native library.
///
/// This class provides dependency injection for the implementations of the
/// platform interface classes. Improving the ease of unit testing and/or
/// overriding the underlying Android WebView classes.
///
/// By default each function calls the default constructor of the WebView class
/// it intends to return.
class AndroidWebViewProxy {
  /// Constructs a [AndroidWebViewProxy].
  const AndroidWebViewProxy({
    this.createAndroidWebView = android_webview.WebView.new,
    this.createAndroidWebChromeClient = android_webview.WebChromeClient.new,
    this.createAndroidWebViewClient = android_webview.WebViewClient.new,
    this.createFlutterAssetManager = android_webview.FlutterAssetManager.new,
    this.createJavaScriptChannel = android_webview.JavaScriptChannel.new,
    this.createDownloadListener = android_webview.DownloadListener.new,
  });

  /// Constructs a [android_webview.WebView].
  final android_webview.WebView Function() createAndroidWebView;

  /// Constructs a [android_webview.WebChromeClient].
  final android_webview.WebChromeClient Function({
    void Function(android_webview.WebView webView, int progress)?
        onProgressChanged,
    Future<List<String>> Function(
      android_webview.WebView webView,
      android_webview.FileChooserParams params,
    )? onShowFileChooser,
    void Function(
      android_webview.WebChromeClient instance,
      android_webview.PermissionRequest request,
    )? onPermissionRequest,
    Future<void> Function(String origin,
            android_webview.GeolocationPermissionsCallback callback)?
        onGeolocationPermissionsShowPrompt,
    void Function(android_webview.WebChromeClient instance)?
        onGeolocationPermissionsHidePrompt,
    void Function(android_webview.WebChromeClient instance,
            android_webview.ConsoleMessage message)?
        onConsoleMessage,
    void Function(
            android_webview.WebChromeClient instance,
            android_webview.View view,
            android_webview.CustomViewCallback callback)?
        onShowCustomView,
    void Function(android_webview.WebChromeClient instance)? onHideCustomView,
  }) createAndroidWebChromeClient;

  /// Constructs a [android_webview.WebViewClient].
  final android_webview.WebViewClient Function({
    void Function(android_webview.WebView webView, String url)? onPageStarted,
    void Function(android_webview.WebView webView, String url)? onPageFinished,
    void Function(
      android_webview.WebView webView,
      android_webview.WebResourceRequest request,
      android_webview.WebResourceError error,
    )? onReceivedRequestError,
    @Deprecated('Only called on Android version < 23.')
    void Function(
      android_webview.WebView webView,
      int errorCode,
      String description,
      String failingUrl,
    )? onReceivedError,
    void Function(
      android_webview.WebView webView,
      android_webview.WebResourceRequest request,
    )? requestLoading,
    void Function(android_webview.WebView webView, String url)? urlLoading,
    void Function(android_webview.WebView webView, String url, bool isReload)?
        doUpdateVisitedHistory,
    void Function(
      android_webview.WebView webView,
      android_webview.HttpAuthHandler handler,
      String host,
      String realm,
    )? onReceivedHttpAuthRequest,
  }) createAndroidWebViewClient;

  /// Constructs a [android_webview.FlutterAssetManager].
  final android_webview.FlutterAssetManager Function()
      createFlutterAssetManager;

  /// Constructs a [android_webview.JavaScriptChannel].
  final android_webview.JavaScriptChannel Function(
    String channelName, {
    required void Function(String) postMessage,
  }) createJavaScriptChannel;

  /// Constructs a [android_webview.DownloadListener].
  final android_webview.DownloadListener Function({
    required void Function(
      String url,
      String userAgent,
      String contentDisposition,
      String mimetype,
      int contentLength,
    ) onDownloadStart,
  }) createDownloadListener;

  /// Enables debugging of web contents (HTML / CSS / JavaScript) loaded into any WebViews of this application.
  ///
  /// This flag can be enabled in order to facilitate debugging of web layouts
  /// and JavaScript code running inside WebViews. Please refer to
  /// [android_webview.WebView] documentation for the debugging guide. The
  /// default is false.
  ///
  /// See [android_webview.WebView].setWebContentsDebuggingEnabled.
  Future<void> setWebContentsDebuggingEnabled(bool enabled) {
    return android_webview.WebView.setWebContentsDebuggingEnabled(enabled);
  }
}
