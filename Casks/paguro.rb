cask "paguro" do
  version "1.0.5,14"
  sha256 "1be75ec2e2be4e21347a7717b22ca2d6aed9d8ad40b7c0feda171fa770f0988d"

  url "https://github.com/anguria-studio/Paguro/releases/download/v#{version.csv.first}/Paguro-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/anguria-studio/Paguro/"
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
