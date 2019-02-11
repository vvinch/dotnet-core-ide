FROM microsoft/dotnet:sdk

# Install required packages
RUN apt-get update && apt-get install -y wget libxkbfile1 libsecret-1-0 libnotify4 libgconf-2-4 libnss3 libgtk2.0-0 libxss1 libgconf-2-4 libasound2 libxtst6 libcanberra-gtk-dev libgl1-mesa-glx libgl1-mesa-dri

# Install visual studio code
RUN wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb && \
    dpkg -i vscode.deb; \
    rm vscode.deb && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m vscode -s /bin/bash
WORKDIR /dotnet
USER vscode

# Install .NET Core plugins pack
RUN code --install-extension salbert.awesome-dotnetcore-pack

# Environment variables
ENV DISPLAY=:0.0

CMD [ "code", "--verbose", "--disable-gpu", "-n", "." ]
