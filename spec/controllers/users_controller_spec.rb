require 'spec_helper'

describe UsersController, :controller do
  subject { described_class }

  it 'should have a hello world' do
    get '/'
    expect(response.body).to include('hello world')
  end
end
