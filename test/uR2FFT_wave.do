onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/FFT_LENGTH
add wave -noupdate /testbench/FFT_DW
add wave -noupdate /testbench/PL_DEPTH
add wave -noupdate /testbench/FFT_N
add wave -noupdate /testbench/M_PI
add wave -noupdate -divider {Control Signals}
add wave -noupdate -color Yellow /testbench/uR2FFT/clk
add wave -noupdate -color Yellow /testbench/uR2FFT/rst
add wave -noupdate -color Yellow /testbench/uR2FFT/autorun
add wave -noupdate -color Yellow /testbench/uR2FFT/run
add wave -noupdate -color Yellow /testbench/uR2FFT/fin
add wave -noupdate -divider {End Signals}
add wave -noupdate /testbench/uR2FFT/ifft
add wave -noupdate /testbench/uR2FFT/done
add wave -noupdate -radix unsigned /testbench/uR2FFT/status
add wave -noupdate -divider {Input stream}
add wave -noupdate /testbench/uR2FFT/sact_istream
add wave -noupdate -radix hexadecimal /testbench/uR2FFT/sdw_istream_real
add wave -noupdate -divider DMA
add wave -noupdate -color Pink /testbench/uR2FFT/bfpexp
add wave -noupdate -color Pink /testbench/uR2FFT/sdw_istream_imag
add wave -noupdate -color Pink /testbench/uR2FFT/dmaact
add wave -noupdate -color Pink -radix hexadecimal /testbench/uR2FFT/dmaa
add wave -noupdate -color Pink -radix hexadecimal /testbench/uR2FFT/dmadr_real
add wave -noupdate -color Pink -radix hexadecimal /testbench/uR2FFT/dmadr_imag
add wave -noupdate -divider {Twiddle Factor}
add wave -noupdate /testbench/uR2FFT/twact
add wave -noupdate -radix hexadecimal /testbench/uR2FFT/twa
add wave -noupdate -radix decimal /testbench/uR2FFT/twdr_cos
add wave -noupdate -divider Ram0
add wave -noupdate -radix unsigned /testbench/uR2FFT/status
add wave -noupdate -divider {Ram0 Read}
add wave -noupdate -color Turquoise /testbench/uR2FFT/ract_ram0
add wave -noupdate -color Turquoise /testbench/uR2FFT/ra_ram0
add wave -noupdate -color Turquoise /testbench/uR2FFT/rdr_ram0
add wave -noupdate -divider {Ram0 Write}
add wave -noupdate -color Turquoise -radix binary /testbench/uR2FFT/wact_ram0
add wave -noupdate -color Turquoise -radix hexadecimal -childformat {{{/testbench/uR2FFT/wa_ram0[6]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[5]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[4]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[3]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[2]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[1]} -radix hexadecimal} {{/testbench/uR2FFT/wa_ram0[0]} -radix hexadecimal}} -subitemconfig {{/testbench/uR2FFT/wa_ram0[6]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[5]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[4]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[3]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[2]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[1]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wa_ram0[0]} {-color Turquoise -height 15 -radix hexadecimal}} /testbench/uR2FFT/wa_ram0
add wave -noupdate -color Turquoise -radix hexadecimal -childformat {{{/testbench/uR2FFT/wdw_ram0[15]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[14]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[13]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[12]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[11]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[10]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[9]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[8]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[7]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[6]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[5]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[4]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[3]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[2]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[1]} -radix hexadecimal} {{/testbench/uR2FFT/wdw_ram0[0]} -radix hexadecimal}} -subitemconfig {{/testbench/uR2FFT/wdw_ram0[15]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[14]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[13]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[12]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[11]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[10]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[9]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[8]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[7]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[6]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[5]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[4]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[3]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[2]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[1]} {-color Turquoise -height 15 -radix hexadecimal} {/testbench/uR2FFT/wdw_ram0[0]} {-color Turquoise -height 15 -radix hexadecimal}} /testbench/uR2FFT/wdw_ram0
add wave -noupdate -divider Ram1
add wave -noupdate -divider {Ram1 Read}
add wave -noupdate -color Blue /testbench/uR2FFT/ract_ram1
add wave -noupdate -color Blue /testbench/uR2FFT/ra_ram1
add wave -noupdate -color Blue /testbench/uR2FFT/rdr_ram1
add wave -noupdate -divider {Ram1 Write}
add wave -noupdate -color Blue /testbench/uR2FFT/wact_ram1
add wave -noupdate -color Blue -radix hexadecimal /testbench/uR2FFT/wa_ram1
add wave -noupdate -color Blue -radix hexadecimal /testbench/uR2FFT/wdw_ram1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13579697 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {242184 ps}
