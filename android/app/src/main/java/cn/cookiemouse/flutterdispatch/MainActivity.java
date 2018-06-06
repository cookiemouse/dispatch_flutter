package cn.cookiemouse.flutterdispatch;

import android.os.Bundle;
import android.view.WindowManager;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
    GeneratedPluginRegistrant.registerWith(this);
  }
}
