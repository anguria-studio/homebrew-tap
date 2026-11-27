cask "obolo" do
  version "1.0.1,2"
  sha256 "00ecf94b4d4422de2daa8d21045a8380f47d3810a2b9e0a7dfc3e4bc9f85cc83"

  url "https://github.com/anguria-studio/Obolo/releases/download/v#{version.csv.first}/Obolo-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Obolo"
  desc "Subscription tracker with renewal reminders"
  homepage "https://github.com/anguria-studio/Obolo"

  livecheck do
    url "https://github.com/anguria-studio/Obolo/releases/latest/download/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Obolo.app"
end
