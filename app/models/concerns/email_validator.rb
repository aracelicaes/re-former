class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[atrribute] << (option[:message]||'is not an email') unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
  end
end