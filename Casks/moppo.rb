cask "moppo" do
  version "0.3.0,50"
  sha256 "326f865e1d79e3f5528eda23e15d3c3fd86ce5d9c1565ab1fe36250980eb84a3"

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
