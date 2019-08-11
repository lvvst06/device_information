describe Api::DeviceEventLogsController do
  describe 'POST /api/event_logs' do
    let(:response_data) { JSON.parse(response.body).with_indifferent_access }
    let(:event_name) { 'text' }
    let(:timestamp) { '2017-10-01 06:00:01' }
    let(:params) do
      {
        event_name: event_name,
        timestamp: timestamp
      }
    end

    before { post api_event_logs_path, params: params }

    context 'when params is valid' do
      specify do
        expect(response).to have_http_status :success
        expect(response_data.dig(:message)).to eq 'created successfully'
      end
    end

    context 'when event_name param is invalid' do
      let(:event_name) { nil }

      specify do
        expect(response).to have_http_status :bad_request
        expect(response_data.dig(:errors)).to eq 'parameters_missing'
      end
    end

    context 'when timestamp param is invalid' do
      let(:timestamp) { nil }

      specify do
        expect(response).to have_http_status :bad_request
        expect(response_data.dig(:errors)).to eq 'parameters_missing'
      end
    end
  end
end
