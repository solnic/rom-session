require 'spec_helper'

describe DataMapper::State::Loaded, '#forget' do
  let(:object)        { described_class.new(mapper, domain_object) }
  let(:mapper)        { DummyMapper.new                           }
  let(:domain_object) { DomainObject.new(:foo, :bar) }

  subject { object.forget }

  it 'should return State::Forgotten' do
    state = subject
    state.should be_kind_of(DataMapper::State::Forgotten)
    state.object.should be(domain_object)
  end
end
