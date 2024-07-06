cask "mega65-xemu" do
    version "1.0"
    sha256 "39cefa3a03e1b38b9ff872f629df06118f56fa2e480866bebcbe864a5f13d71f"
    url "https://github.com/lgblgblgb/xemu-binaries/raw/binary-osx-master/Xemu-Installer.dmg"
    name "Xemu"
    desc "Emulator for the MEGA65, and other interesting microcomputers"
    homepage "https://github.com/lgblgblgb/xemu"

    livecheck do
        # TODO: Github releases?
        skip "No version information available"
    end

    app "xmega65.app"

    caveats do
        path_environment_variable "/Applications/xmega65.app/Contents/MacOS/"
    end
end
