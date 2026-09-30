{ callPackage, fetchurl }:
let
  version = "1.98.44";
  hash = "10i5pyi7hhy8jdjllad17jf1aazygwg1msz38yf9apyycm076v8p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
