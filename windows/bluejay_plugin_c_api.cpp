#include "include/bluejay/bluejay_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "bluejay_plugin.h"

void BluejayPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  bluejay::BluejayPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
