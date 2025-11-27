{
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = "Emilia Zapata";
        email = "zapata.contact@gmail.com";
      };
      git = {
        "write-change-id-header" = true;
      };
      "--scope" = [
        {
          "--when" = {
            repositories = ["~/work"];
          };
          user.email = "emilia.zapata@rossvideo.com";
        }
      ];
    };
  };
}
