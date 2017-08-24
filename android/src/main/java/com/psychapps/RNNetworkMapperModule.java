
package com.psychapps;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNNetworkMapperModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNNetworkMapperModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNNetworkMapper";
  }

  private String connectedDevices() {
  	return "Implement this method and change the return type appropriately";
  }

  @Override
  public @Nullable Map<String, Object> getConstants() {
  	HashMap <String, Object> constants = new HashMap<String, Object>();
  	constants.put("connectedDevices", this.connectedDevices());
  	return constants;
  }
}