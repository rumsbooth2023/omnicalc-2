class MathController < ApplicationController
  def addition_form
    render({ :template => "math_templates/addition_form.html.erb"})
  end

  def addition_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f

    @addition = @first + @second
    render({ :template => "math_templates/addition_results.html.erb" })
  end

  def subtraction_form
    render({ :template => "math_templates/subtraction_form.html.erb"})
  end

  def subtraction_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f

    @subtraction = @second - @first
    render({ :template => "math_templates/subtraction_results.html.erb" })
  end

  def multiplication_form
    render({ :template => "math_templates/multiplication_form.html.erb"})
  end

  def multiplication_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f

    @multiplication = @first * @second
    render({ :template => "math_templates/multiplication_results.html.erb" })
  end

  def division_form
    render({ :template => "math_templates/division_form.html.erb"})
  end

  def division_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f

    @division = @first/@second
    render({ :template => "math_templates/division_results.html.erb" })
  end
end
