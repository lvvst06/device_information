module ResponseHelper
  SUCCESS_STATUS = :success
  ERROR_STATUS = :fail

  def json_with_success(message: :success, data: nil)
    {
      status: :success,
      message: message,
      data: data
    }
  end

  def json_with_error(message: :fail, errors: nil)
    {
      status: ERROR_STATUS,
      message: message,
      errors: errors
    }
  end
end
