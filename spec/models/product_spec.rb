require 'rails_helper'

RSpec.describe Product, type: :model do
  it { validate_presence_of(:name) }
  it { validate_presence_of(:type) }
  it { validate_presence_of(:length) }
  it { validate_presence_of(:height) }
  it { validate_presence_of(:width) }
end
