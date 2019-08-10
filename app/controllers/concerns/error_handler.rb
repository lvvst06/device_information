module ErrorHandler
  def self.included(clazz)
    clazz.class_eval do
      rescue_from ActiveRecord::RecordInvalid, with: :handle_record_invalid
      rescue_from ActionController::ParameterMissing, with: :handle_parameter_missing
    end
  end

  private

  def handle_record_invalid(exception)
    render json: json_with_error(message: :record_invalid, errors: exception.record&.errors&.messages), status: :unprocessable_entity
  end

  def handle_parameter_missing(_)
    render json: json_with_error(errors: :parameters_missing), status: :bad_request
  end
end
