cask "mega65-m65connect" do
    version "2.3"
    sha256 "1a43beee0d55a61f147594aedb053a1a3f525967b604c5fd7d4e9a103ce5f02c"
    url "https://files.mega65.org/files/m/M65Connect-Mac-Universal_6saiwt.zip",
        verified: "https://files.mega65.org?id=5919a8b8-c23c-4616-9a52-37e077076638"
    name "M65Connect"
    desc "Transfer files and interact with the MEGA65 personal computer via LAN or serial USB (JTAG)"
    homepage "https://github.com/MEGA65/m65connect"

    livecheck do
        # TODO: Filehost version list API? Github releases?
        skip "No version information available"
    end

    app "M65Connect.app"

    caveats do
        path_environment_variable "/Applications/M65Connect.app/Contents/Resources/"
    end
end
