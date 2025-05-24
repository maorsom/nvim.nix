{
  plugins.mini = {
    enable = true;
    modules = {
      surround = {};
      snippets = {};
      pairs = {};
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
