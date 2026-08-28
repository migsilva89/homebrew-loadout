cask "loadout" do
  version "0.3.4"
  sha256 "82e130f11bf7320d5e30740f386e74fe15c2587ec67ef7c39ae0625d2e189f8e"

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
