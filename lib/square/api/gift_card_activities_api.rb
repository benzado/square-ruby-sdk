module Square
  # GiftCardActivitiesApi
  class GiftCardActivitiesApi < BaseApi
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Lists gift card activities. By default, you get gift card activities for
    # all
    # gift cards in the seller's account. You can optionally specify query
    # parameters to
    # filter the list. For example, you can get a list of gift card activities
    # for a gift card,
    # for all gift cards in a specific region, or for activities within a time
    # window.
    # @param [String] gift_card_id Optional parameter: If a gift card ID is
    # provided, the endpoint returns activities related  to the specified gift
    # card. Otherwise, the endpoint returns all gift card activities for  the
    # seller.
    # @param [String] type Optional parameter: If a
    # [type]($m/GiftCardActivityType) is provided, the endpoint returns gift
    # card activities of the specified type.  Otherwise, the endpoint returns
    # all types of gift card activities.
    # @param [String] location_id Optional parameter: If a location ID is
    # provided, the endpoint returns gift card activities for the specified
    # location.  Otherwise, the endpoint returns gift card activities for all
    # locations.
    # @param [String] begin_time Optional parameter: The timestamp for the
    # beginning of the reporting period, in RFC 3339 format. This start time is
    # inclusive. The default value is the current time minus one year.
    # @param [String] end_time Optional parameter: The timestamp for the end of
    # the reporting period, in RFC 3339 format. This end time is inclusive. The
    # default value is the current time.
    # @param [Integer] limit Optional parameter: If a limit is provided, the
    # endpoint returns the specified number  of results (or fewer) per page. The
    # maximum value is 100. The default value is 50. For more information, see
    # [Pagination](https://developer.squareup.com/docs/working-with-apis/paginat
    # ion).
    # @param [String] cursor Optional parameter: A pagination cursor returned by
    # a previous call to this endpoint. Provide this cursor to retrieve the next
    # set of results for the original query. If a cursor is not provided, the
    # endpoint returns the first page of the results. For more information, see
    # [Pagination](https://developer.squareup.com/docs/working-with-apis/paginat
    # ion).
    # @param [String] sort_order Optional parameter: The order in which the
    # endpoint returns the activities, based on `created_at`. - `ASC` - Oldest
    # to newest. - `DESC` - Newest to oldest (default).
    # @return [ListGiftCardActivitiesResponse Hash] response from the API call
    def list_gift_card_activities(gift_card_id: nil,
                                  type: nil,
                                  location_id: nil,
                                  begin_time: nil,
                                  end_time: nil,
                                  limit: nil,
                                  cursor: nil,
                                  sort_order: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/gift-cards/activities'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'gift_card_id' => gift_card_id,
        'type' => type,
        'location_id' => location_id,
        'begin_time' => begin_time,
        'end_time' => end_time,
        'limit' => limit,
        'cursor' => cursor,
        'sort_order' => sort_order
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Creates a gift card activity to manage the balance or state of a [gift
    # card]($m/GiftCard).
    # For example, you create an `ACTIVATE` activity to activate a gift card
    # with an initial balance
    # before the gift card can be used.
    # @param [CreateGiftCardActivityRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [CreateGiftCardActivityResponse Hash] response from the API call
    def create_gift_card_activity(body:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/gift-cards/activities'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end
  end
end
