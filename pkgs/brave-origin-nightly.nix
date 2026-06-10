{ callPackage, fetchurl }:
let
  version = "1.93.49";
  hash = "1k1fmb3b1vdjg60n9y5yc09qd6bzglbqsf03bmgh0qsxdcclnn7y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
