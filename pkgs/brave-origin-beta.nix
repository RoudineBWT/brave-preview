{ callPackage, fetchurl }:
let
  version = "1.94.101";
  hash = "1kw4xsml1y1s5m8mhq7qmk76hnympl53fqryfzm5gwqz7z5in6pm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
