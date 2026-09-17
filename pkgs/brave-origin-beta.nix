{ callPackage, fetchurl }:
let
  version = "1.97.42";
  hash = "0i67vgh0ypz73cml7szph5fxqwa1hmzrijlq0l8br8xivbmqbjdr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
