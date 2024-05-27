{
  description = "Hackage set for Haskell packages developed and maintained by MLabs";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    hercules-ci-effects.url = "github:hercules-ci/hercules-ci-effects";

    herbage.url = "github:seungheonoh/herbage";
  };

  outputs = inputs@{ flake-parts, hercules-ci-effects, nixpkgs, herbage, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.hercules-ci-effects.flakeModule
      ];

      systems = [ "x86_64-linux" ];
      hercules-ci.github-pages.branch = "master";
      perSystem = { config, system, inputs', self', ... }:
        let
          pkgs =
            import inputs.nixpkgs {
              inherit system;
              overlays = [ inputs.herbage.overlays.default ];
            };

          herbage = inputs.herbage.lib { inherit pkgs; };

        in {
          devShells.default = pkgs.mkShellNoCC {
            buildInputs = [
             pkgs.hackage-repo-tool
            ];
          };
          packages.hackage =
            herbage.genHackage
              ./keys
              (import ./sources.nix { inherit pkgs; });

          hercules-ci.github-pages.settings.contents =
            self'.packages.hackage;
        };
    };
}
