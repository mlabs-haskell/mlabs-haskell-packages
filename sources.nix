{ pkgs }:
let
  subDirectory = dir: src:
    pkgs.runCommand "subdir-${dir}" { } ''
      mkdir $out
      cp -r ${src}/${dir}/* $out
    '';
in {
  liqwid-plutarch-extra = {
    "3.21.1" = {
      timestamp = "2024-01-16T11:00:00Z";
      subdir = "liqwid-plutarch-extra";
      src = pkgs.fetchFromGitHub {
        owner = "liqwid-labs";
        repo = "liqwid-libs";
        rev = "77fb7a3be189ff05646245df2a245d52296e1aa0";
        hash = "sha256-veVK9PMPaKxLbsYJyoMpQDJvBNLJecg61zxMazY5TV0=";
      };
    };
  };
  plutarch-extra = {
    "1.2.1" = {
      timestamp = "2024-01-16T11:00:00Z";
      subdir = "plutarch-extra";
      src = pkgs.fetchFromGitHub {
        owner = "plutonomicon";
        repo = "plutarch-plutus";
        rev = "8d6ca9e5ec8425c2f52faf59a4737b4fd96fb01b";
        hash = "sha256-dMdJxXiBJV7XSInGeSR90/sTWHTxBm3DLaCzpN1SER0=";
      };
    };
    "1.4.0" = {
      timestamp = "2024-07-29T00:00:00Z";
      subdir = "plutarch-extra";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "e50661e24670974b398be19426617bc6389fdac6";
      hash = "sha256-BcqNHF4LCHwGs+Q+nPKNDOAPZwPvBhKDb7f3s/kkFho=";
      };
    };
  };
  plutarch-quickcheck = {
    "2.2.2" = {
      timestamp = "2024-01-16T11:00:00Z";
      subdir = "plutarch-quickcheck";
      src = pkgs.fetchFromGitHub {
        owner = "liqwid-labs";
        repo = "liqwid-libs";
        rev = "948cd3f7de1819baa381596508f4dd3ece9742b1";
        hash = "sha256-WREHFizDVOvJIDJey4z73cpSj2EGYW2y5WYonvQvDc0=";
      };
    };
  };
  plutarch = {
    "1.4.0" = {
      timestamp = "2024-01-16T11:00:00Z";
      src = pkgs.fetchFromGitHub {
        owner = "plutonomicon";
        repo = "plutarch-plutus";
        rev = "8d6ca9e5ec8425c2f52faf59a4737b4fd96fb01b";
        hash = "sha256-dMdJxXiBJV7XSInGeSR90/sTWHTxBm3DLaCzpN1SER0=";
      };
    };
    "1.5.0" = {
      timestamp = "2024-01-16T11:00:00Z";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "3ad180895aba3e24b5e1909d8b185f7286356f75";
      hash = "sha256-CIUbOt1uSz8MgdcuGce/AoTSA1BRKWlqrxhNPFUayj4=";
      };
    };
    "1.8.1" = {
      timestamp = "2024-07-29T00:00:00Z";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "e50661e24670974b398be19426617bc6389fdac6";
      hash = "sha256-BcqNHF4LCHwGs+Q+nPKNDOAPZwPvBhKDb7f3s/kkFho=";
      };
    };
    "1.8.2" = {
      timestamp = "2025-01-10T00:00:00Z";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "872db9ccc0146cc7e513c71f9d0406a07db5d18a";
      hash = "sha256-nPzNLV66iw1CHHZ0tfhd+mDs/y5pf025OOoixt6nzS0=";
      };
    };
  };
  plutarch-ledger-api = {
    "3.2.1" = {
      timestamp = "2024-07-29T00:00:00Z";
      subdir = "plutarch-ledger-api";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "e50661e24670974b398be19426617bc6389fdac6";
      hash = "sha256-BcqNHF4LCHwGs+Q+nPKNDOAPZwPvBhKDb7f3s/kkFho=";
      };
    };
    "3.2.2" = {
      timestamp = "2025-01-10T00:00:00Z";
      subdir = "plutarch-ledger-api";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "872db9ccc0146cc7e513c71f9d0406a07db5d18a";
      hash = "sha256-nPzNLV66iw1CHHZ0tfhd+mDs/y5pf025OOoixt6nzS0=";
      };
    };
  };
  plutarch-orphanage = {
    "1.0.3" = {
      timestamp = "2024-07-29T00:00:00Z";
      subdir = "plutarch-orphanage";
      src = pkgs.fetchFromGitHub {
      owner = "plutonomicon";
      repo = "plutarch-plutus";
      rev = "e50661e24670974b398be19426617bc6389fdac6";
      hash = "sha256-BcqNHF4LCHwGs+Q+nPKNDOAPZwPvBhKDb7f3s/kkFho=";
      };
    };
  };
  ply-core = {
    "0.6.0" = {
      timestamp = "2024-01-16T11:00:00Z";
      subdir = "ply-core";
      src = pkgs.fetchFromGitHub {
      owner = "mlabs-haskell";
      repo = "ply";
      rev = "efeb0baddffccdbbf38d1e7e02cd1778422eeb78";
      hash = "sha256-om9EEGrw09gm0i+i9GYp0KYWQMXAd6ZvAZPzW6cGSLw=";
      };
    };
  };
  ply-plutarch = {
    "0.6.0" = {
      timestamp = "2024-01-16T11:00:00Z";
      subdir = "ply-plutarch";
      src = pkgs.fetchFromGitHub {
      owner = "mlabs-haskell";
      repo = "ply";
      rev = "efeb0baddffccdbbf38d1e7e02cd1778422eeb78";
      hash = "sha256-om9EEGrw09gm0i+i9GYp0KYWQMXAd6ZvAZPzW6cGSLw=";
      };
    };
  };
}
