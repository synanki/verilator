SIM_MODELS_DIR = /home/nandani/Downloads/efinity/efinity/2023.2/sim_models/verilog
PRIMITIVES = $(SIM_MODELS_DIR)/efx_ff.v \
             $(SIM_MODELS_DIR)/efx_lut4.v \
             $(SIM_MODELS_DIR)/efx_comb4.v \
             $(SIM_MODELS_DIR)/efx_add.v \
             $(SIM_MODELS_DIR)/efx_ram_5k.v \
             $(SIM_MODELS_DIR)/efx_gbufce.v

NETLIST_FILE = uart_interface.map.v
CPP_WRAPPER  = sim_main.cpp
TOP_MODULE   = uart_top
OBJ_DIR      = obj_dir
GRAPH_DIR    = graphs
V_FLAGS = --cc --exe --build -j 0 \
          --top-module $(TOP_MODULE) \
          -Wall -Wno-fatal \
          -Wno-PINCONNECTEMPTY \
          -Wno-DECLFILENAME \
          -Wno-DEFPARAM \
          --stats --timing \
          --dump-tree --dump-tree-all \
          --dump-json \
          --dump-dfg \
          --dump-graph \
          --dump-tree-dot

.PHONY: all clean build run graphs

all: run

build:
	@echo "--- Building Verilator Model + Dumping Graphs ---"
	verilator $(V_FLAGS) $(PRIMITIVES) $(NETLIST_FILE) $(CPP_WRAPPER)

graphs:
	@echo "--- Generating Graphviz Charts ---"
	mkdir -p $(GRAPH_DIR)
	find $(OBJ_DIR) -type f -name "*.dot" | while read f; do \
	    echo "Rendering $$f ..."; \
	    dot -Tpdf "$$f" -o "$(GRAPH_DIR)/$$(basename "$$f" .dot).pdf"; \
	done

run: build graphs
	@echo "--- Running Simulation ---"
	./$(OBJ_DIR)/V$(TOP_MODULE)

clean:
	rm -rf $(OBJ_DIR) waveform.vcd $(GRAPH_DIR)

