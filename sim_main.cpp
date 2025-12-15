#include <verilated.h>
//#include <verilated_vcd_c.h>
#include "Vuart_top.h"
#include <iostream>
#include <vector>

#define SYSTEM_CLOCK_HZ 20000000 // 20 MHz
#define BAUD_RATE       9600     // Target Baud
#define CYCLES_PER_BIT  (SYSTEM_CLOCK_HZ / BAUD_RATE) // ~2083 cycles

vluint64_t main_time = 0;

double sc_time_stamp() {
    return main_time;
}

class Testbench {
public:
    Vuart_top* dut;
    //VerilatedVcdC* tfp;

    Testbench() {
        Verilated::traceEverOn(true);
        dut = new Vuart_top;
        //tfp = new VerilatedVcdC;
        //dut->trace(tfp, 99);
        //tfp->open("waveform.vcd");

        dut->clk = 0;
        dut->uart_rx_pin = 1; // UART Idle state is HIGH (1)
    }

    ~Testbench() {
        //tfp->close();
        delete dut;
        //delete tfp;
    }

    void tick() {
        dut->clk = 0;
        dut->eval();
        //tfp->dump(main_time++);

        dut->clk = 1;
        dut->eval();
        //tfp->dump(main_time++);
    }

    void wait_cycles(int n) {
        for (int i = 0; i < n; i++) {
            tick();
        }
    }

    void uart_send_byte(uint8_t data) {
        dut->uart_rx_pin = 0;
        wait_cycles(CYCLES_PER_BIT);

        for (int i = 0; i < 8; i++) {
            int bit = (data >> i) & 1; 
            dut->uart_rx_pin = bit;
            wait_cycles(CYCLES_PER_BIT);
        }

        dut->uart_rx_pin = 1;
        wait_cycles(CYCLES_PER_BIT);
        
        wait_cycles(CYCLES_PER_BIT); 
    }
};

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Testbench tb;

    std::cout << "--- Starting Simulation ---" << std::endl;
    std::cout << "Clock: " << SYSTEM_CLOCK_HZ << " Hz" << std::endl;
    std::cout << "Baud:  " << BAUD_RATE << " bps" << std::endl;
    std::cout << "Cycles Per Bit: " << CYCLES_PER_BIT << std::endl;

    tb.wait_cycles(100);

    std::vector<uint8_t> sequence = {0x00, 0x00, 0x00, 0x1E};

    for (uint8_t byte : sequence) {
        std::cout << "Sending Byte: 0x" << std::hex << (int)byte << std::endl;
        tb.uart_send_byte(byte);
    }

    std::cout << "Data Sent. Waiting for processor..." << std::endl;
    tb.wait_cycles(10000); 

    std::cout << "--- Simulation Finished ---" << std::endl;
    return 0;
}
