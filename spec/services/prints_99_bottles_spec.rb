# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Prints99Bottles do
  subject { described_class.new.call }

  describe '#call' do
    context 'with 99 bottles' do
      it { is_expected.to include '99 bottles of beer' }

      it { is_expected.to include 'Take one down and pass it around, 2 bottles of beer on the wall.' }

      it { is_expected.to include 'Take one down and pass it around, 1 bottle of beer on the wall.' }

      it { is_expected.to include '1 bottle of beer on the wall, 1 bottle of beer.' }

      it { is_expected.to include 'Take it down and pass it around, no more bottles of beer on the wall.' }

      it { is_expected.to include 'Take it down and pass it around, no more bottles of beer on the wall.' }
    end
  end
end
