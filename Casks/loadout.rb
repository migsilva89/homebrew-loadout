cask "loadout" do
  version "0.3.3"
  sha256 "23bffe02b9c64cce9c2e72b969f0dd947972416c70af133ab9c498a1e74b0ae5"

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
