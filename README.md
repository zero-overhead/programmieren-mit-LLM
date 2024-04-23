# programmieren mit LLM

## Unterrichtsmaterial Informatik

### Setup deines Computers

Damit Jupyter-Chatbooks ohne grösseren Support (durch deine Lehrpersonen) laufen, nutzen wir in dieser Lerneinheit [NixOS](https://nixos.org/).
#### USB-Stick
 
Nutze einen [USB-Stick](https://nixos.org/manual/nixos/stable/#sec-booting-from-usb) mit NixOS als Betriebssystem. So kannst du NixOS verwenden, ohne Software auf deinem Computer zu installieren.
#### Installation

Hast du noch einen (alten) Computer, der die aktuellen Windows 11 Anforderungen nicht erfüllt? Dann installiere dort direkt NixOS.

Oder aktiviere unter Windows [Windows Subsystem for Linux](https://nixos.org/download/#nix-install-windows) . Dann hast du auch dort die Möglichkeit, genau wie unter Linux und Mac, [NixOS](https://nixos.org/download/#nix-install-linux) als Paketmanager zu installieren.
#### Virtualbox

Oder installiere [Virtualbox](https://www.virtualbox.org/), um NixOS auszuführen. Lade dir das [NixOS-Image](https://nixos.org/download/#nixos-virtualbox) herunter und starte dieses.
#### Docker

Oder installiere [Docker](https://www.docker.com/products/docker-desktop/), um NixOS auszuführen. Um NixOS zu starten, verwendest du im Terminal den Befehl 

```console
docker run -ti ghcr.io/nixos/nix
```
#### Erfolgs-Check

Ob du NixOS erfolgreich installiert hast, kannst du im Terminal so überprüfen:

```console
nix-shell --version
```

Wenn kein Fehler gemeldet wird, ist alles bereit, um Jupyter-Chatbook zu starten.
### Starten von Jupyter-Chatbook

Öffne ein Terminal und führe folgende Befehle aus:

a.) ggf. Ordner wechseln
```console
cd $HOME/Documents
```

b.) die Unterrichtsunterlagen clonen
```console
nix-shell -p git
```

```console
git clone --depth=1 https://github.com/zero-overhead/programmieren-mit-LLM
cd programmieren-mit-LLM
```

c.) API-Keys angeben (diese Werte natürlich mit validen Schlüsseln ersetzen)
```console
export OPENAI_API_KEY=sk-VE5rCA0sesZppklctgcOT3BlbkFJAVjrnvtqRpM1njjWdZeqvq
export MISTRAL_API_KEY=mucG8sAMn8Lb8mRvTPJqsH3ElbDoowvwFw
```

d.) Jupyter starten
```
nix-shell --run "jupyter lab"
```

e.) Falls du Python-Code ausprobieren möchtest, nutze doch ```thonny```:

```
nix-shell --run "thonny"
```
