# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Usps::Api::Endpoints::CityStateLookup do
  let(:client) { Usps::Client.new }

  context 'city_state_lookup' do
    it 'returns city and state for zip code' do
      response = client.city_state_lookup({
                                            city_state_lookup_request: {
                                              zip_code: {
                                                zip5: 33_626
                                              }
                                            }
                                          })

      expect(response).to eq({ 'CityStateLookupResponse' => { 'ZipCode' => { 'City' => 'TAMPA',
                                                                             'State' => 'FL', 'Zip5' => '33626' } } })
    end
  end
end
