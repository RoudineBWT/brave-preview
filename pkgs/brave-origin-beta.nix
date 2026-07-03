{ callPackage, fetchurl }:
let
  version = "1.93.111";
  hash = "06v113nrlnwidh8nwix8q6pfpk18d5mjshw8n4jaj7v372xcc82r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
