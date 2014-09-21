require "formula"

class Openbazaar < Formula
  homepage "https://openbazaar.org/"
  url "https://github.com/bitstopco/openbazaar-mac.git"

  version "0.1.0"

  depends_on "gpg" => :build
  depends_on "sqlite3" => :build
  depends_on "python" => :build
  depends_on "wget" => :build
  depends_on "openssl" => :build
  depends_on "zmq" => :build

  def install

    print "Installation may take a few minutes, depending on your computer specs. So go grab a beer 🍺"
    print "\n"
    print "Also you will be asked for the user password, to be able to install some dependencies with sudo."

    print "\n\n"

    system "./pow.sh "+version

    bin.install "openbazaar"

    print "\n\n"

  end

  def caveats; <<-EOS.undent

      OpenBazaar configuration finished.

      Type openbazaar help yo get started.

    EOS
  end

end
