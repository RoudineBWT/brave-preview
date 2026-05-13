{ callPackage, fetchurl }:
let
  version = "1.91.150";
  hash = "1x6v2q65mxj3wwgbadpj6mxwfga5w0135wzijzlab3b4pk1yp89l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
