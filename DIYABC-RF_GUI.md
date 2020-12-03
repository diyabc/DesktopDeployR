# Recipe to build Windows DIYABC-RF GUI standalone app

Standalone app building based on DesktopDeployR by Wyming Lee Pang (https://github.com/wleepang/DesktopDeployR).

See [COPYRIGHTS](./COPYRIGHTS) for more details on copyrights and licensing.

> To be run on Windows OS.

## Requirements

- `diyabcGUI` R package zip sources for Windows in `src` folder (i.e. file `src/diyabcGUI_<version>.zip`)
- `Rcpp` R package sources in `src` folder (i.e. directory `src/Rcpp` cloned from https://github.com/RcppCore/Rcpp)

## Building steps

1. Install latest R-Portable (available at https://sourceforge.net/projects/rportable/) in `dist` directory.

> You should now have `dist/R-Portable/App/R-Portable/bin/Rscript.exe` and `dist/R-Portable/App/R-Portable/bin/R.exe`.

2. Run batch script `prepare.bat` inside project root directory.

3. Zip full project repository to create a DIYABC-RF GUI standalone app release for Windows.

## Use

Unzip the release file and run `DIYABC-RF_GUI.bat` in the extracted directory (either by double-clicking it or in a terminal).
