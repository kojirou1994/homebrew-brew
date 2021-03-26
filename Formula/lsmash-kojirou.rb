class LsmashKojirou < Formula
  desc "Tool for working with MP4 files"
  homepage "https://l-smash.github.io/l-smash/"
#  url "https://github.com/l-smash/l-smash.git",
#  shallow:  false,
#  tag:      "v2.9.1",
#  revision: "4cea08d264933634db5bc06da9d8d88fb5ddae07"
#  license "ISC"
  head "https://github.com/l-smash/l-smash.git"

  def install
    inreplace "configure", ",--version-script,liblsmash.ver", ""
    system "./configure", "--prefix=#{prefix}", "--disable-static", "--enable-shared"
    system "make", "install"
  end

end
