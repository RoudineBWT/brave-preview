{ callPackage, fetchurl }:
let
  version = "1.93.2";
  hash = "01hawr3q6mklaw8isrpj8qx35knfnkp5hgmfkqv1zmbk55qnn4pq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
