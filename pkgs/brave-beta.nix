{ callPackage, fetchurl }:
let
  version = "1.90.116";
  hash = "16zrmnq3y555br98hvr7kcpfslqh4jj38bvy3hgsrspgi8f7a2ps";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
