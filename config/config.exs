# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :elephant_bot, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:elephant_bot, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :exredis,
  host: "127.0.0.1",
  port: 6379,
  password: "",
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity

config :bot_bot,
  url: "https://hooks.slack.com/services/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",
  team: "T0NCJC5M1",
  endpoint: "https://eng-git.canterbury.ac.nz",
  gitlab_token: "p-ciC9-ZrwLkMurHr3P8",
  project_id: "1205",
  bot_token: "xoxb-27661867701-Z7yelwbR5iSI4eYSYXcseDEx"

config :quantum,
  cron: [
    "03 17 * * *": {BotBot.Elephant, :post_message}
  ],
  timezone: :local
