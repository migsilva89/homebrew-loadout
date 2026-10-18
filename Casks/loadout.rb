cask "loadout" do
  version "0.6.3"
  sha256 "7cb2c98a97e179d4ed3b048aba0892ad9c8b5d95848278d402b12a3dee81a11d"

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
