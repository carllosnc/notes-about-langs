# relative
from modules.calc import mult, sub, sum, div

# absolute
import modules.calc as calc

print(__name__)

print(mult(2, 2))
print(sub(2, 2))
print(sum(2, 2))
print(div(2, 2))

print(calc.mult(2, 2))
print(calc.sub(2, 2))
print(calc.sum(2, 2))
print(calc.div(2, 2))
