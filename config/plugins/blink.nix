{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      completion = {
        accept.auto_brackets.enabled = true;
        ghost_text.enabled = true;
        documentation = {
          auto_show = true;
          window.border = "rounded";
        };
        list.selection = {
          preselect = false;
        };
        menu = {
            auto_show = true;
            border = "rounded";
            draw = {
              columns = [
                {
                  __unkeyed-1 = "label";
                }
                {
                  __unkeyed-1 = "kind_icon";
                  __unkeyed-2 = "kind";
                  gap = 1;
                }
                { __unkeyed-1 = "source_name"; }
              ];
              components = {
                kind_icon = {
                  ellipsis = false;
                  text.__raw = ''
                    function(ctx)
                      local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                      -- Check for both nil and the default fallback icon
                      if not kind_icon or kind_icon == '󰞋' then
                        -- Use our configured kind_icons
                        return require('blink.cmp.config').appearance.kind_icons[ctx.kind] or ""
                      end
                      return kind_icon
                    end,
                    -- Optionally, you may also use the highlights from mini.icons
                    highlight = function(ctx)
                      local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                      return hl
                    end
                  '';
                };
              };
            };
          };
        };
        fuzzy = {
            implementation = "rust";
            prebuilt_binaries = {
              download = false;
            };
        };
        appearance = {
          use_nvim_cmp_as_default = true;
        };
        keymap = {
         preset = "inherit";
        };
        signature = {
          enabled = true;
          window.border = "rounded";
        };
        snippets.preset = "mini_snippets";
        sources = {
          default =[
            "lsp"
            "buffer"
            "snippets"
            "path"
          ];
          providers = {
            lsp.score_offset = 4;
            buffer = {
              opts = {
                get_bufnrs.__raw = ''
                  function()
                    return vim.tbl_filter(function(bufnr)
                      return vim.bo[bufnr].buftype == ""
                    end, vim.api.nvim_list_bufs())
                   end
                '';
              };
            };
          };
        };
      };
    };
  };
}
