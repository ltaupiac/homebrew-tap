cask "doublecmd" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.6"

  sha256 arm: :no_check,
         intel: :no_check

  url "https://github.com/doublecmd/doublecmd/releases/download/v#{version}/doublecmd-#{version}.cocoa.#{arch}.dmg"

  name "Double Commander"
  desc "Cross-platform file manager"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url "https://github.com/doublecmd/doublecmd/releases"
    strategy :github_latest
  end

  app "Double Commander.app"

  auto_updates true
end
