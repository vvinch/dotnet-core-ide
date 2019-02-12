# dotnet-core-ide

## Description

.NET Core development environment with Visual Studio Code

## Usage

```bash
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix \
                    -v sources_folder:/dotnet \
                    -v extensions_folder:/extensions \
                    vvinch/dotnet-core-ide
```

### Volumes

- /tmp/.X11-unix

   This location must be mapped to the Docker host X11 socket. Typically at the same location.

- /dotnet

   This folder is the root path for .NET projects. This should be mapped to an external volume containing the sources in order to backing up the data and the build results.

- /extensions

   This folder will be initialized with the Visual Studio Code extensions at startup. If the volume already contains data, it will be preserved. It this volume is mapped, it prevents from loosing extensions updates after each session.

### Environment

- DISPLAY=:0.0

   This environment variable is defined by default.
