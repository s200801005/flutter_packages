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

package io.flutter.plugins.webviewflutter;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.fail;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import android.content.res.AssetManager;
import java.io.IOException;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;

@SuppressWarnings("deprecation")
public class RegistrarFlutterAssetManagerTest {
  @Mock AssetManager mockAssetManager;
  @Mock io.flutter.plugin.common.PluginRegistry.Registrar mockRegistrar;

  io.flutter.plugins.webviewflutter.FlutterAssetManager.RegistrarFlutterAssetManager
      testRegistrarFlutterAssetManager;

  @Before
  public void setUp() {
    mockAssetManager = mock(AssetManager.class);
    mockRegistrar = mock(io.flutter.plugin.common.PluginRegistry.Registrar.class);

    testRegistrarFlutterAssetManager =
        new io.flutter.plugins.webviewflutter.FlutterAssetManager.RegistrarFlutterAssetManager(
            mockAssetManager, mockRegistrar);
  }

  @Test
  public void list() {
    try {
      when(mockAssetManager.list("test/path"))
          .thenReturn(new String[] {"index.html", "styles.css"});
      String[] actualFilePaths = testRegistrarFlutterAssetManager.list("test/path");
      verify(mockAssetManager).list("test/path");
      assertArrayEquals(new String[] {"index.html", "styles.css"}, actualFilePaths);
    } catch (IOException ex) {
      fail();
    }
  }

  @Test
  public void registrar_getAssetFilePathByName() {
    testRegistrarFlutterAssetManager.getAssetFilePathByName("sample_movie.mp4");
    verify(mockRegistrar).lookupKeyForAsset("sample_movie.mp4");
  }
}
