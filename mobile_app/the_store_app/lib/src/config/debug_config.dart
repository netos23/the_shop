import 'package:flutter/cupertino.dart';

class DebugConfig extends ChangeNotifier {
  bool _debugShowMaterialGrid;
  bool _showPerformanceOverlay;
  bool _checkerboardRasterCacheImages;
  bool _checkerboardOffscreenLayers;
  bool _showSemanticsDebugger;
  bool _debugShowCheckedModeBanner;

  bool get debugShowMaterialGrid => _debugShowMaterialGrid;

  set debugShowMaterialGrid(bool value) {
    notifyListeners();
    _debugShowMaterialGrid = value;
  }

  bool get showPerformanceOverlay => _showPerformanceOverlay;

  bool get debugShowCheckedModeBanner => _debugShowCheckedModeBanner;

  set debugShowCheckedModeBanner(bool value) {
    notifyListeners();
    _debugShowCheckedModeBanner = value;
  }

  bool get showSemanticsDebugger => _showSemanticsDebugger;

  set showSemanticsDebugger(bool value) {
    notifyListeners();
    _showSemanticsDebugger = value;
  }

  bool get checkerboardOffscreenLayers => _checkerboardOffscreenLayers;

  set checkerboardOffscreenLayers(bool value) {
    notifyListeners();
    _checkerboardOffscreenLayers = value;
  }

  bool get checkerboardRasterCacheImages => _checkerboardRasterCacheImages;

  set checkerboardRasterCacheImages(bool value) {
    notifyListeners();
    _checkerboardRasterCacheImages = value;
  }

  set showPerformanceOverlay(bool value) {
    notifyListeners();
    _showPerformanceOverlay = value;
  }

  DebugConfig({
    bool debugShowMaterialGrid = false,
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = true,
  })  : _debugShowMaterialGrid = debugShowMaterialGrid,
        _showPerformanceOverlay = showPerformanceOverlay,
        _checkerboardRasterCacheImages = checkerboardRasterCacheImages,
        _checkerboardOffscreenLayers = checkerboardOffscreenLayers,
        _showSemanticsDebugger = showSemanticsDebugger,
        _debugShowCheckedModeBanner = debugShowCheckedModeBanner;
}
