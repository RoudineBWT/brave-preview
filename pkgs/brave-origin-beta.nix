{ callPackage, fetchurl }:
let
  version = "1.91.101";
  hash = "12x02p6qv2w6jadw8z52djykic63xyqb8jnkzl2cfwzm0yqm4dkf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
