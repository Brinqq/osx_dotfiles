require('orgmode').setup_ts_grammar()
require('orgmode').setup({
  org_capture_templates = {
    r = {
      target = "~/.notes/repos.org",
      description = "Repo",
    },
  },
  org_agenda_files = {'~/.notes', '~/.notes/**/*'},
  org_default_notes_file = '~/.notes/main.org',
})
