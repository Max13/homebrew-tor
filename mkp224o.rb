class Mkp224o < Formula
  homepage "https://github.com/cathugger/mkp224o"
  url "https://github.com/cathugger/mkp224o/archive/v1.5.0.tar.gz"
  sha256 "1bdc2b838ed53d62f62652e0b46d2632fad7ed703c65a00a96ad1b4547d74173"
  # version "1.11.0-b.7"

  depends_on "autoconf" => :build
  depends_on "libsodium"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    bin.install "mkp224o"

  end

  test do
    system "make", "test"
  end
end
