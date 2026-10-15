cask "trailsift" do
  version "1.3.3"
  sha256 "e8ca737b9c601b8300db72ef6851f770df88fd97cfa63755ff2ae7061997e607"

  url "https://trailsift.com/download/TrailSift-#{version}.zip"
  name "TrailSift"
  desc "Find and clear the records kept of where you've been"
  homepage "https://trailsift.com/brew"

  livecheck do
    url "https://trailsift.com/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TrailSift.app"

  uninstall launchctl: "studio.itch.trailsift.cleanup",
            quit:      "studio.itch.trailsift"

  zap trash: [
    "~/Library/Application Support/TrailSift",
    "~/Library/Caches/studio.itch.trailsift",
    "~/Library/HTTPStorages/studio.itch.trailsift",
    "~/Library/Preferences/studio.itch.trailsift.plist",
    "~/Library/Saved Application State/studio.itch.trailsift.savedState",
  ]
end
