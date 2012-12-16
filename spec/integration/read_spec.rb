require 'spec_helper_integration'

describe "Reading objects" do
  before(:all) do
    setup_db

    insert_user 1, 'John',  18
    insert_user 2, 'Jane',  21
    insert_user 3, 'Piotr', 29

    user_mapper
  end

  let!(:user_mapper) {
    DM_ENV.build(user_model, :postgres) do
      relation_name :users
      key :id
      map :name, :to => :username
    end
  }

  let!(:user_model) {
    Class.new {
      include DataMapper::Model

      attribute :id,   Integer, :key => true
      attribute :name, String
      attribute :age,  Integer
    }
  }

  it "loads object and registers it in the IM" do
    registry = Session::Registry.new(DM_ENV.registry)
    session  = Session.new(registry)

    mapper = session[user_model]
    user = session[user_model].first

    expect(user).to be_instance_of(user_model)
    expect(user.id).to be(1)

    expect(session).to include(user)

    expect(session.dirty?(user)).to be(false)

    user.name = 'Piotr'

    expect(session.dirty?(user)).to be(true)
  end
end
