return {
  repo = require("neogit.lib.git.repository"),
  rev_parse = require("neogit.lib.git.rev_parse"),
  cli = require("neogit.lib.git.cli"),
  init = require("neogit.lib.git.init"),
  status = require("neogit.lib.git.status"),
  stash = require("neogit.lib.git.stash"),
  files = require("neogit.lib.git.files"),
  fetch = require("neogit.lib.git.fetch"),
  log = require("neogit.lib.git.log"),
  refs = require("neogit.lib.git.refs"),
  tag = require("neogit.lib.git.tag"),
  reflog = require("neogit.lib.git.reflog"),
  branch = require("neogit.lib.git.branch"),
  diff = require("neogit.lib.git.diff"),
  rebase = require("neogit.lib.git.rebase"),
  merge = require("neogit.lib.git.merge"),
  cherry_pick = require("neogit.lib.git.cherry_pick"),
  reset = require("neogit.lib.git.reset"),
  revert = require("neogit.lib.git.revert"),
  remote = require("neogit.lib.git.remote"),
  config = require("neogit.lib.git.config"),
  sequencer = require("neogit.lib.git.sequencer"),
  pull = require("neogit.lib.git.pull"),
  push = require("neogit.lib.git.push"),
  index = require("neogit.lib.git.index"),
  worktree = require("neogit.lib.git.worktree"),
}