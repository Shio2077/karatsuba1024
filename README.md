# Karatsuba Multiplier in Verilog

This project implements a Karatsuba multiplier in Verilog. The source files are located in the `karatsuba.srcs/sources_1/new` directory, and include the following design modules:

- **ka8.v** – 8-bit and 4-bit Karatsuba multiplier  
- **ka16.v** – 16-bit Karatsuba multiplier (implemented using 8-bit multipliers, and so on)  
- **ka32.v** – 32-bit Karatsuba multiplier (implemented using Zynq DSP Slices; an alternative version using 16-bit karatsuba multipliers is included as commented-out code)  
- **ka64.v** – 64-bit Karatsuba multiplier  
- **ka128.v** – 128-bit Karatsuba multiplier  
- **ka256.v** – 256-bit Karatsuba multiplier (*difficult to deploy on FPGA*)  
- **ka512.v** – 512-bit Karatsuba multiplier (*cannot be deployed on FPGA; for reference only*)  
- **ka1024.v** – 1024-bit Karatsuba multiplier (*cannot be deployed on FPGA; for reference only*)  
- **kaReduce128.v** – A 1024-bit Karatsuba multiplier implemented using the 128-bit module and adder components; deployable on Zynq-7020 SoC  
- **wide_adder.v** – Adder module  
- **wire_conn.v** – Connection module, for testing only  

## Performance

The `kaReduce128` module can operate at a 100 MHz clock frequency and completes a single multiplication in approximately 22 µs.

## Resource Utilization (Zynq-7020)

| Resource | Used  | Available | Utilization |
|----------|-------|-----------|-------------|
| LUT      | 14,438 | 53,200     | 27.14%      |
| LUTRAM   | 346   | 17,400     | 1.99%       |
| FF       | 24,836 | 106,400    | 23.34%      |
| BRAM     | 4     | 140        | 2.86%       |
| DSP      | 27    | 220        | 12.27%      |
| IO       | 1     | 200        | 0.50%       |
| BUFG     | 1     | 32         | 3.13%       |

## License

This project is distributed under the MIT License. See [LICENSE](LICENSE) for details.

