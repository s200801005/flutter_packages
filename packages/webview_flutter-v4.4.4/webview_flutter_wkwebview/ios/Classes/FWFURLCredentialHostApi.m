# Copyright (c) 2024 Hunan OpenValley Digital Industry Development Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#import "FWFURLCredentialHostApi.h"

@interface FWFURLCredentialHostApiImpl ()
// BinaryMessenger must be weak to prevent a circular reference with the host API it
// references.
@property(nonatomic, weak) id<FlutterBinaryMessenger> binaryMessenger;
// InstanceManager must be weak to prevent a circular reference with the object it stores.
@property(nonatomic, weak) FWFInstanceManager *instanceManager;
@end

@implementation FWFURLCredentialHostApiImpl
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger
                        instanceManager:(FWFInstanceManager *)instanceManager {
  self = [self init];
  if (self) {
    _binaryMessenger = binaryMessenger;
    _instanceManager = instanceManager;
  }
  return self;
}

- (void)createWithUserWithIdentifier:(NSInteger)identifier
                                user:(nonnull NSString *)user
                            password:(nonnull NSString *)password
                         persistence:(FWFNSUrlCredentialPersistence)persistence
                               error:(FlutterError *_Nullable __autoreleasing *_Nonnull)error {
  [self.instanceManager
      addDartCreatedInstance:
          [NSURLCredential
              credentialWithUser:user
                        password:password
                     persistence:
                         FWFNativeNSURLCredentialPersistenceFromFWFNSUrlCredentialPersistence(
                             persistence)]
              withIdentifier:identifier];
}

- (nullable NSURL *)credentialForIdentifier:(NSNumber *)identifier
                                      error:
                                          (FlutterError *_Nullable __autoreleasing *_Nonnull)error {
  NSURL *instance = (NSURL *)[self.instanceManager instanceForIdentifier:identifier.longValue];

  if (!instance) {
    NSString *message =
        [NSString stringWithFormat:@"InstanceManager does not contain an NSURL with identifier: %@",
                                   identifier];
    *error = [FlutterError errorWithCode:NSInternalInconsistencyException
                                 message:message
                                 details:nil];
  }

  return instance;
}
@end
