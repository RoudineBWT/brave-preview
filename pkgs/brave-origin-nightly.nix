{ callPackage, fetchurl }:
let
  version = "1.91.114";
  hash = "0z7acmay5maq9v6qy9db30xcff4pd9dbrfhsdbdxykw71rid6dix";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
