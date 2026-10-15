cask "trailsift" do
  version "1.3.2"
  sha256 "364754f87ff8aa2637e2679d60116bc6fdfb3fca59013d81f35e23a9c4780a12"

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
