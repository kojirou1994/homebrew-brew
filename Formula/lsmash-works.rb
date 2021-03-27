class LsmashWorks < Formula

  head "https://github.com/VFR-maniac/L-SMASH-Works.git"

  depends_on "lsmash-kojirou"

  def install
    cd "VapourSynth" do
      system "./configure", "--prefix=#{prefix}"
      system "make", "install"
    end
  end

end
