{pkgs, ...}: {
  home.packages = with pkgs; [
    gh
    git
    git-lfs
  ];

  programs.git = {
    enable = true;
    includes = [
      {
        condition = "gitdir:~/work/";
        contents = {
          user = {
            email = "emilia.zapata@rossvideo.com";
          };
          push = {
            default = "upstream";
          };
        };
      }
    ];
    settings = {
      user = {
        name = "Emilia Zapata";
        email = "zapata.contact@gmail.com";
      };
      alias = {
        l = "log --graph --decorate --pretty=format:'%C(auto)%h %Cblue%ad %Cred%aN %C(auto)%d %n    %s' --date=human";
      };
      core = {
        editor = "nvim";
        excludesfile = "~/.config/git/ignore_global";
      };
      init = {
        templatedir = "~/.config/git/template";
        defaultBranch = "dev";
      };
      fetch = {
        prune = true;
      };
      gpg = {
        program = "gpg";
      };
      filter.lfs = {
        clean = "git-lfs clean -- %f";
        smudge = "git-lfs smudge -- %f";
        process = "git-lfs filter-process";
        required = true;
      };
      status = {
        short = true;
        branch = true;
      };
      rerere = {
        enabled = true;
      };
    };
  };

  # Keep the global ignore file and git template directory
  xdg.configFile."git/ignore_global".source = ./config/ignore_global;
  xdg.configFile."git/template".source = ./config/template;
}
