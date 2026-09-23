cask "paguro" do
  version "1.0.8,17"
  sha256 "cb541a6d75d43631bfefb395ab4d6aa376c9ea853e2551deaf843bb72a60aca7"

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
