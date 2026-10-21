cask "moppo" do
  version "0.2.0,42"
  sha256 "0068e3989f8c7e3fd56d5f6192bbbe74a21a992c6ea60ea43d8752a8a1d50935"

  url "https://github.com/anguria-studio/Moppo/releases/download/v#{version.csv.first}/Moppo-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Moppo"
  desc "Disk storage and cleanup tool"
  homepage "https://anguria.studio/moppo/"

  livecheck do
    url "https://github.com/anguria-studio/Moppo/releases/latest/download/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Moppo.app"
end
