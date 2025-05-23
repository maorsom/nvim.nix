{ pkgs, lib, config, inputs, ... }:

{

  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  cachix.enable = false;

  scripts.ide.exec = ''
  	nvim
  '';

  enterShell = ''
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
  	
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
