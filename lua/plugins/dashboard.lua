local pad_lines_to_max_length = function(lines)
  local max_length = 0
  for _, line in ipairs(lines) do
    max_length = math.max(max_length, #line)
  end

  for i, line in ipairs(lines) do
    lines[i] = line .. string.rep(" ", max_length - #line)
  end

  return lines
end

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = function(_, opts)
    opts.config = {}

    local logo = [[
                         y:
                        sMN-
                       +MMMm`
                      /MMMMMd`
                     :NMMMMMMy
                    -NMMMMMMMMs
                   .NMMMMMMMMMM+
                  .mMMMMMMMMMMMM+
                  oNMMMMMMMMMMMMM+
                `+:-+NMMMMMMMMMMMM+
                .sNMNhNMMMMMMMMMMMM/
              `hho/sNMMMMMMMMMMMMMMM/
             `.`omMMmMMMMMMMMMMMMMMMM+
            .mMNdshMMMMd+::oNMMMMMMMMMo
           .mMMMMMMMMM+     `yMMMMMMMMMs
          .NMMMMMMMMM/        yMMMMMMMMMy
         -NMMMMMMMMMh         `mNMMMMMMMMd`
        /NMMMNds+:.`             `-/oymMMMm.
       +Mmy/.                          `:smN:
      /+.                                  -o.
      ]]

    logo = string.rep("\n", 4) .. logo .. "\n\n"

    opts.config.header = pad_lines_to_max_length(vim.split(logo, "\n"))
  end,
}
