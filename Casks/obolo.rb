cask "obolo" do
  version "1.0.0,1"
  sha256 "783303ccc6fdbc2173bd8915ef72176c08aca59dbd4c72def844f407bd8d37cf"

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
