{
  plugins.mini = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
    mockDevIcons = true;
    modules = {
      surround = {};
      snippets = {};
      pairs = {};
      icons = {};
      comment = {
        mappings = {
          comment = "<leader>/";
          comment_line = "<leader>/";
          comment_visual = "<leader>/";
          textobject = "<leader>/";
        };
      };
      diff = {
        view = {
          style = "sign";
        };
      };
      indentscope = {
        symbol = "│";
        options = {try_as_border = true;};
      };
    };
  };
}
