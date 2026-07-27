{ callPackage, fetchurl }:
let
  version = "1.94.96";
  hash = "04nmpg76y8sywfk4bhr5iylb88insdhagfp01f46ccw8gr1mvi6n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
