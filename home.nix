{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "al";
    homeDirectory = "/Users/al";
    stateVersion = "24.05";

    packages = [
      pkgs.htop
      pkgs.eza
      pkgs.bat
      pkgs.fd
      pkgs.git
      pkgs.wget
      pkgs.hyperfine
    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs = {
    home-manager = {
      enable = true;
    };
    zsh = {
      enable = true;
      autosuggestion = {
        enable = true;
      };
      syntaxHighlighting = {
        enable = true;
      };
      shellAliases = {
        find = "fd";
        cat = "bat --theme=\"Catppuccin Frappe\"";
        ls = "eza --icons=always";
        lsl = "ls -l";
        lsls = "lsl --total-size";
        bench = "hyperfine";
      };
    };
    git = {
      enable = true;
      userName = "alDuncanson";
      userEmail = "alDuncanson@proton.me";
    };
    nvf = {
      enable = true;
      settings = {
        vim = {
          filetree.nvimTree = {
            enable = true;
          };
          keymaps = [
            {
              mode = "n"; # Normal mode
              key = "<leader>wh";
              action = "<C-w>h";
            }
            {
              mode = "n";
              key = "<leader>wj";
              action = "<C-w>j";
            }
            {
              mode = "n";
              key = "<leader>wk";
              action = "<C-w>k";
            }
            {
              mode = "n";
              key = "<leader>wl";
              action = "<C-w>l";
            }
          ];
          languages = {
            enableLSP = true;
            enableTreesitter = true;
            enableFormat = true;
            bash = {
              enable = true;
            };
            nix = {
              enable = true;
            };
            css = {
              enable = true;
            };
          };
          lsp = {
            formatOnSave = true;
          };
          options = {
            tabstop = 4;
          };
          theme = {
            enable = true;
            name = "catppuccin";
            style = "macchiato";
          };
          ui = {
            breadcrumbs.enable = true;
            noice.enable = true;
          };
          utility = {
            motion.leap.enable = true;
            yanky-nvim.enable = true;
          };
          visuals = {
            cinnamon-nvim = {
              enable = true;
              setupOpts.keymaps = {
                basic = true;
                extra = true;
              };
            };
            fidget-nvim = {
              enable = true;
            };
          };

          useSystemClipboard = true;
          statusline.lualine.enable = true;
          telescope.enable = true;
          autocomplete.nvim-cmp.enable = true;

          binds.whichKey = {
            enable = true;
          };
          terminal.toggleterm = {
            enable = true;
            lazygit.enable = true;
          };
        };
      };
    };
    zellij = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        theme = "catppuccin-macchiato";
        ui = {
          pane_frames = {
            rounded_corners = true;
            hide_session_name = true;
          };
        };
      };
    };
  };
}
