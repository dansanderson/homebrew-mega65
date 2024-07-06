class Mega65Tools < Formula
    desc "Command-line tools for the MEGA65 project"
    homepage "https://github.com/mega65/mega65-tools"
    license "GPL-3.0-only"
    head "https://github.com/mega65/mega65-tools", branch: "development"

    depends_on "conan" => :build

    def install
      system "make", "allmac"
      bin.install "bin/m65.osx" => "m65"
      bin.install "bin/mega65_ftp.osx" => "mega65_ftp"
      bin.install "bin/etherload.osx" => "etherload"
      bin.install "bin/coretool"
      bin.install "bin/romdiff.osx" => "romdiff"
      # bit2core? bit2mcs?
    end

    test do
      system bin/"m65", "--help"
      system bin/"mega65_ftp", "--help"
      system bin/"etherload", "--help"
      system bin/"coretool", "--help"
      system bin/"romdiff", "--help"
    end
  end
