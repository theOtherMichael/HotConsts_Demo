# Hot Constants Demo
This is a simple-as-dirt console app demonstrating the use of [Hot Constants](https://github.com/theOtherMichael/HotConsts) in C++ projects.  Follow these steps to buld it:

1. Clone the repository with `--recurse-submodules` enabled.
2. Run the script for your platform in `Scripts`.
3. Open and build the `HotConsts_Demo` solution/workspace.

Just like the Hot Constants library itself, this program runs on both Windows and macOS.

When you run the app, it will continuously print the value of two hot constants: a normal one and an `extern` one.  While the app is debugging, try tweaking the value of `testConstant` in main.cpp, or `testExternConstant` in ExternDefinitionExample.cpp: the value will immediately update.
