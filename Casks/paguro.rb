cask "paguro" do
  version "1.0.6,15"
  sha256 "8a5f15408865e4081feea8d12155885fdadb4a31d5b11219edd6dda6ce1794a9"

  url "https://github.com/anguria-studio/Paguro/releases/download/v#{version.csv.first}/Paguro-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Paguro"
  desc "Native workspace for web apps"
  homepage "https://anguria.studio/paguro"

  livecheck do
    url "https://github.com/anguria-studio/Paguro/releases/latest/download/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Paguro.app"

  zap trash: [
    "~/Library/Application Scripts/studio.anguria.paguro",
    "~/Library/Containers/studio.anguria.paguro",
  ]
end
