require 'spec_helper'

describe DataMapper::State, '#delete' do
  subject { object.delete }

  let(:class_under_test) do
    Class.new(described_class) do
      def self.name; 'TestClassName'; end
    end
  end

  let(:object)        { class_under_test.new(mapper, domain_object) }
  let(:mapper)        { DummyMapper.new                           }
  let(:domain_object) { DomainObject.new(:foo, :bar) }

  it 'should raise StateError' do
    expect { subject }.to raise_error(DataMapper::StateError, "TestClassName cannot be deleted")
  end
end
