cask "loadout" do
  version "0.3.2"
  sha256 "580015f740277c133feed7490dfefcec90b6799ce5a8c13864ee3423de136b93"

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
