# frozen_string_literal: true

require "spec_helper"

RSpec.describe Miro::Downsampler::Histogram do
  let(:filepath) { File.join(__dir__, "../../fixtures/test.png") }
  let(:tempfile) { File.open(filepath) }
  let(:subject) { described_class.new(tempfile) }
  let(:histogram_output) { File.read(File.join(__dir__, "../../fixtures/histogram.txt")) }

  before do
    allow(subject).to receive(:run_convert_command).and_return(histogram_output)
  end

  it_behaves_like "downsampler"
end
