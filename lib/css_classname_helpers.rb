module CSSClassnameHelpers
  include ClassNames

  module_function

  def cn(*args)
    # https://github.com/mikker/classnames
    classnames(*args)
  end
end