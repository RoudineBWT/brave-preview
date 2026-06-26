{ callPackage, fetchurl }:
let
  version = "1.94.7";
  hash = "1mv4cla62v8w0piqf13v6igizn4cw89ws21y1c99bqmcdjvvgl46";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
