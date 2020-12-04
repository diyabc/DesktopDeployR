# Windows DIYABC-RF GUI standalone app

Graphical User Interface for DIYABC-RF software. Please check the project [website](https://diyabc.github.io/) for additional information and detailed documentation, or the projet [repository](https://github.com/diyabc/diyabcGUI).

---

## Authorship and licensing

The DIYABC-RF GUI software is edited by the DIYABC-RF Core team.

**DIYABC-RF Core team**: François-David Collin, Ghislain Durif, Louis Raynal, 
Mathieu Gautier, Renaud Vitalis, Eric Lombaert, Jean-Michel Marin, Arnaud Estoup

The Windows DIYABC-RF GUI standalone app is based on DesktopDeployR by Wyming Lee Pang (https://github.com/wleepang/DesktopDeployR).

See [COPYRIGHTS](./COPYRIGHTS) for more details on copyrights and licensing.

---

## Instructions for users

### Download

1. Please download the latest release of `DIYABC-RF GUI` at <https://github.com/diyabc/diyabcGUI/releases/latest>.

2. Unzip `DIYABC-RF_GUI_<latest_version>.zip`

### Usage

1. Run `DIYABC-RF_GUI` (or `DIYABC-RF_GUI.bat`) in the previously extracted `DIYABC-RF_GUI_<latest_version>` directory (either by double-clicking it or in a terminal, you can also create a shortcut to run it by right-clicking on it).

2. It will open a new tab in your web browser and you can use `DIYABC-RF GUI` as a web app.

**Important**: you should not forget to quit the app when you are done with the dedicated button (otherwise some background related processes will remains active).

> A log file for DIYABC-RF GUI is available in your user-specific directory for temporary files, generally `C:\Users\<username>\AppData\Local\Temp\DIYABC-RF_GUI_<timestamp>_<random_number>/`.

---

## Debugging (for advanced users or developers)

If you encounter any issue, you can try to use the application as a local shiny app (it should give you additional verbosity). To do this you can run `cmd.exe /c run_local_app_debug.bat` in a terminal.

---

## Recipe to build (for developers)

Adapted from DesktopDeployR [framework](./DesktopDeployR.md)

> To be run on Windows OS.

### Requirements

- `diyabcGUI` R package zip sources for Windows in `src` folder (i.e. file `src/diyabcGUI_<version>.zip`)
- `Rcpp` R package sources in `src` folder (i.e. directory `src/Rcpp` cloned from https://github.com/RcppCore/Rcpp)

### Building steps

1. Install latest R-Portable (available at https://sourceforge.net/projects/rportable/) in `dist` directory.

> You should now have `dist/R-Portable/App/R-Portable/bin/Rscript.exe` and `dist/R-Portable/App/R-Portable/bin/R.exe`.

2. Run batch script `prepare.bat` inside project root directory (e.g. with `cmd.exe /c prepare.bat`).

3. Zip full project repository to create a DIYABC-RF GUI standalone app release for Windows.

### Use

Unzip the release file and run `DIYABC-RF_GUI.bat` in the extracted directory (either by double-clicking it or in a terminal).

### Debugging

If you encounter any issue, you can try to use the application as a local shiny app (it should give you additional verbosity). To do this you can run `cmd.exe /c run_local_app_debug.bat` from the previously extracted directory in a terminal.

