class Span <  Formula
	desc "Span command line client"
	homepage "https://github.com/lab5e/spancli"
	version "0.2.3"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.3/span.amd64-macos.zip"
			sha256 "9135f33e162214ffabb8a03eeaf79eade2bc78becf2f452e2a2dd7df7237b53b"
		end

		if Hardware::CPU.arm?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.3/span.arm64-macos.zip"			
			sha256 "a4888a23c50e3e09f54f8891ab328b8880ff745b61fa306b2e1381904cf40713"
		end
	end

	on_linux do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.3/span.amd64-linux.zip"
			sha256 "f100e3ac1fed5d146af8b7c70d1e6f66188ee0f527b9a84731efefd299b4bff6"
		end

		if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.3/span.arm5-rpi-linux.zip"
			sha256 "65a2724954158b049ecc17b9142c40c68bd9762653b3d077e89ef1056cd0f6e1"
		end
	end

	def install
		bin.install "span"
	end
end
