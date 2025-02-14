FROM binacslee/deployment-code-server

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

RUN apt update \
    && apt install -y ca-certificates wget bash libcurl4 curl \
    && update-ca-certificates \
    && wget -qO- https://aka.ms/install-artifacts-credprovider.sh | bash \
    && wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --install-dir /usr/bin \
    && rm -rf /tmp/*
