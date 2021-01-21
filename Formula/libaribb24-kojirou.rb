class Libaribb24Kojirou < Formula
  desc "aribb24"
  homepage "https://github.com/nkoriyama/aribb24"
#  license "GPL-2.0-only"
  url "https://github.com/nkoriyama/aribb24/archive/v1.0.3.tar.gz"
  sha256 "f61560738926e57f9173510389634d8c06cabedfa857db4b28fb7704707ff128"
  head "https://github.com/nkoriyama/aribb24.git"

#  livecheck do
#    url :stable
#  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libpng"

#  depends_on "nasm" => :build if Hardware::CPU.intel?

  def install
    system "./bootstrap"
    args = %W[
    --prefix=#{prefix}
    --enable-shared
    ]

    system "./configure", *args
    system "make", "install"
  end

  test do

  end
end
