# frozen_string_literal: true

require "dry/logic/predicates"

RSpec.describe Dry::Logic::Predicates do
  describe "#gt?" do
    let(:predicate_name) { :gt? }

    context "when value is greater than n" do
      let(:arguments_list) do
        [
          [13, 14],
          [13.37, 13.38]
        ]
      end

      it_behaves_like "a passing predicate"
    end

    context "when value is equal to n" do
      let(:arguments_list) do
        [
          [13, 13],
          [13.37, 13.37]
        ]
      end

      it_behaves_like "a failing predicate"
    end

    context "with value is less than n" do
      let(:arguments_list) do
        [
          [13, 12],
          [13.37, 13.36]
        ]
      end

      it_behaves_like "a failing predicate"
    end
  end
end
