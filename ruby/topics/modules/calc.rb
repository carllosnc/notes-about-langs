module Calc
  # Local constant
  PI = 3.1415

  # Instance method
  def getPi
    PI
  end

  # Instance method
  def sum(a=0, b=0)
    a+b
  end

  # Instance method
  def subs(a=0, b=0)
    a-b
  end

  # Module method
  def Calc.info()
    "|| Calc Module ||"
  end
end
