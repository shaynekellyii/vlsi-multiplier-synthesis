onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /e/clk
add wave -noupdate -format Logic -radix hexadecimal /e/resetn
add wave -noupdate -format Literal -radix hexadecimal /e/a0
add wave -noupdate -format Literal -radix hexadecimal /e/b0
add wave -noupdate -format Literal -radix hexadecimal /e/a1
add wave -noupdate -format Literal -radix hexadecimal /e/b1
add wave -noupdate -format Literal -radix hexadecimal /e/a2
add wave -noupdate -format Literal -radix hexadecimal /e/b2
add wave -noupdate -format Literal -radix hexadecimal /e/a3
add wave -noupdate -format Literal -radix hexadecimal /e/b3
add wave -noupdate -format Literal -radix hexadecimal /e/result0
add wave -noupdate -format Literal -radix hexadecimal /e/result1
add wave -noupdate -format Literal -radix hexadecimal /e/result2
add wave -noupdate -format Literal -radix hexadecimal /e/result3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {147 ns} {187 ns}
