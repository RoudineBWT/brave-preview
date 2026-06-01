{ callPackage, fetchurl }:
let
  version = "1.93.16";
  hash = "1wdqv00xnjaav1k8vih5v95lb4lck5g9ynds8rhvc3ifmvaijrdy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
