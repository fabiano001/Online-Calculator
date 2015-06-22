class Calculator

	def initialize(num1, num2)
		@num1 = num1
		@num2 = num2
	end

	def add
		num = @num1 + @num2
	end

	def subtract
		num = @num1 - @num2
	end

	def multiply
		num = @num1 * @num2
	end

	def divide
		num = @num1 / @num2
	end
end