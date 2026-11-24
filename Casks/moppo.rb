cask "moppo" do
  version "0.8.1,60"
  sha256 "4bb9ea555cdcf08157411dd0178eb2a7e8bbb7510b8a702314bb03d77357b112"

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
