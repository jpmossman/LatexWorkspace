# LaTeX Workspace
A simple makefile to make working with LaTeX a bit more painless.
Place source *.tex files into a folder named `src/`, and run `make` to get a .pdf for each source file to be placed into `out/`.
An additional folder, `trash`, will be created. This can be safely deleted as it just contains intermediary files for compilation. However, for that reason it is not *recommended* to delete it, unless you want a clean build or need the storage back. Leaving the `trash` folder as is will result in faster recompilation times.

## Requirements
- Any LaTeX compiler that supports the `latekmk` command and .pdf output. [Miktex](https://miktex.org/) is recommended for Windows.
- The `make` command
