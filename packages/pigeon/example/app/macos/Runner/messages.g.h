// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PGNCode) {
  PGNCodeOne = 0,
  PGNCodeTwo = 1,
};

@class PGNMessageData;

@interface PGNMessageData : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithName:(nullable NSString *)name
    description:(nullable NSString *)description
    code:(PGNCode)code
    data:(NSDictionary<NSString *, NSString *> *)data;
@property(nonatomic, copy, nullable) NSString * name;
@property(nonatomic, copy, nullable) NSString * description;
@property(nonatomic, assign) PGNCode code;
@property(nonatomic, strong) NSDictionary<NSString *, NSString *> * data;
@end

/// The codec used by PGNExampleHostApi.
NSObject<FlutterMessageCodec> *PGNExampleHostApiGetCodec(void);

@protocol PGNExampleHostApi
/// @return `nil` only when `error != nil`.
- (nullable NSString *)getHostLanguageWithError:(FlutterError *_Nullable *_Nonnull)error;
/// @return `nil` only when `error != nil`.
- (nullable NSNumber *)addNumber:(NSNumber *)a toNumber:(NSNumber *)b error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendMessageMessage:(PGNMessageData *)message completion:(void (^)(NSNumber *_Nullable, FlutterError *_Nullable))completion;
@end

extern void PGNExampleHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PGNExampleHostApi> *_Nullable api);

/// The codec used by PGNMessageFlutterApi.
NSObject<FlutterMessageCodec> *PGNMessageFlutterApiGetCodec(void);

@interface PGNMessageFlutterApi : NSObject
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger;
- (void)flutterMethodAString:(nullable NSString *)aString completion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
@end

NS_ASSUME_NONNULL_END
