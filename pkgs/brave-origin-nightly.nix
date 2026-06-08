{ callPackage, fetchurl }:
let
  version = "1.93.41";
  hash = "1fxk7xc778qfs86vlg7iiqr5isa5p7q7a7nhr81qd8rx4qg6aq77";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
