{ callPackage, fetchurl }:
let
  version = "1.96.39";
  hash = "03rlznplg47l36wcdllpahqyz7l50fkh1rxyj4hvnq390adn8v47";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
