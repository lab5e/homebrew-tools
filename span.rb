class Span <  Formula
	desc "Span command line client"
	homepage "https://github.com/lab5e/spancli"
	version "0.2.2"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.2/span.amd64-macos.zip"
			sha256 "9cd05406e4472251f97c045f70c6eaffc12dbef9fc5b588dcbc4014eddf2c370"
		end

		if Hardware::CPU.arm?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.2/span.arm64-macos.zip"
			sha256 "3a66a8de2dd4d48fc4b53fb2920a3c21759140d3266aa6e4f8996df4d3e773b4"
		end
	end

	on_linux do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.2/span.amd64-linux.zip"
			sha256 "99fab8a37d5f5c1da6773e2e1268c0161afd53021d7d999ea1944bbc19ef1cb7"
		end

		if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.2/span.arm5-rpi-linux.zip"
			sha256 "39be7012d414fabf55cd058f401ef365014a7d6117baa2ad473ffb38d9ecd87a"
		end
	end

	def install
		bin.install "span"
	end
end
