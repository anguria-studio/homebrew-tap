cask "paguro" do
  version "1.1.2,21"
  sha256 "f10279196e211cd0900ef056b3cc570f8980d31be3985724ae0a4bb6c3d25287"

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
