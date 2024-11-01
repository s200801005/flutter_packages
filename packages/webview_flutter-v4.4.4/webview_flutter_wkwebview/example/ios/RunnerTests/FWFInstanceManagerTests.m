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

#import <XCTest/XCTest.h>

@import webview_flutter_wkwebview;
@import webview_flutter_wkwebview.Test;

@interface FWFInstanceManagerTests : XCTestCase
@end

@implementation FWFInstanceManagerTests
- (void)testAddDartCreatedInstance {
  FWFInstanceManager *instanceManager = [[FWFInstanceManager alloc] init];
  NSObject *object = [[NSObject alloc] init];

  [instanceManager addDartCreatedInstance:object withIdentifier:0];
  XCTAssertEqualObjects([instanceManager instanceForIdentifier:0], object);
  XCTAssertEqual([instanceManager identifierWithStrongReferenceForInstance:object], 0);
}

- (void)testAddHostCreatedInstance {
  FWFInstanceManager *instanceManager = [[FWFInstanceManager alloc] init];
  NSObject *object = [[NSObject alloc] init];
  [instanceManager addHostCreatedInstance:object];

  long identifier = [instanceManager identifierWithStrongReferenceForInstance:object];
  XCTAssertNotEqual(identifier, NSNotFound);
  XCTAssertEqualObjects([instanceManager instanceForIdentifier:identifier], object);
}

- (void)testRemoveInstanceWithIdentifier {
  FWFInstanceManager *instanceManager = [[FWFInstanceManager alloc] init];
  NSObject *object = [[NSObject alloc] init];

  [instanceManager addDartCreatedInstance:object withIdentifier:0];

  XCTAssertEqualObjects([instanceManager removeInstanceWithIdentifier:0], object);
  XCTAssertEqual([instanceManager strongInstanceCount], 0);
}

- (void)testDeallocCallbackIsIgnoredIfNull {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnonnull"
  // This sets deallocCallback to nil to test that uses are null checked.
  FWFInstanceManager *instanceManager = [[FWFInstanceManager alloc] initWithDeallocCallback:nil];
#pragma clang diagnostic pop

  [instanceManager addDartCreatedInstance:[[NSObject alloc] init] withIdentifier:0];

  // Tests that this doesn't cause a EXC_BAD_ACCESS crash.
  [instanceManager removeInstanceWithIdentifier:0];
}

- (void)testObjectsAreStoredWithPointerHashcode {
  FWFInstanceManager *instanceManager = [[FWFInstanceManager alloc] init];

  NSURL *url1 = [NSURL URLWithString:@"https://www.flutter.dev"];
  NSURL *url2 = [NSURL URLWithString:@"https://www.flutter.dev"];

  // Ensure urls are considered equal.
  XCTAssertTrue([url1 isEqual:url2]);

  [instanceManager addHostCreatedInstance:url1];
  [instanceManager addHostCreatedInstance:url2];

  XCTAssertNotEqual([instanceManager identifierWithStrongReferenceForInstance:url1],
                    [instanceManager identifierWithStrongReferenceForInstance:url2]);
}
@end
