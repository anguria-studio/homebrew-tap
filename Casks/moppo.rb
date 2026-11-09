cask "moppo" do
  version "0.7.0,57"
  sha256 "7dcf2f69136fbb28794f2849b333f9c0019af72d003338aaec03e0c2df1484d4"

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
