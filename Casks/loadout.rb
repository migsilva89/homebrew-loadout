cask "loadout" do
  version "0.3.0"
  sha256 "a0cf4a9d14d7e63de33ca2a252bc3cfbac95476677819fed6c2573bbb50fa4bc"

  url "https://github.com/migsilva89/loadout/releases/download/v#{version}/Loadout-#{version}.dmg"
  name "Loadout"
  desc "Shows and manages the skills, commands, subagents and MCP servers of AI CLIs"
  homepage "https://loadout.migsilva.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Loadout.app"

  zap trash: [
    "~/Library/Application Support/Loadout",
    "~/Library/Caches/com.migsilva.loadout",
    "~/Library/HTTPStorages/com.migsilva.loadout",
    "~/Library/Preferences/com.migsilva.loadout.plist",
    "~/Library/Saved Application State/com.migsilva.loadout.savedState",
  ]
end
