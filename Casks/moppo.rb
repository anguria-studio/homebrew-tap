cask "moppo" do
  version "0.7.1,58"
  sha256 "9f54e560e9dd2aa69e586f12082cd53c938b05d2bc70646e0cc7cdbdb390bb69"

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
