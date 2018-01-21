vsim -novopt e 
add wave -radix hex {sim:/e/clk} {sim:/e/resetn} {sim:/e/a0 } {sim:/e/b0 } {sim:/e/a1 } {sim:/e/b1} {sim:/e/a2 } {sim:/e/b2 } {sim:/e/a3 } {sim:/e/b3} {sim:/e/result0 } {sim:/e/result1 } {sim:/e/result2 } {sim:/e/result3}    
restart -f ; run 300 ns