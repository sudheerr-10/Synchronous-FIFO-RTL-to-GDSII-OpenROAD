# Synchronous FIFO Physical Design Flow using OpenROAD

## Overview

This project demonstrates a complete **RTL-to-PostSTA implementation** of a **Synchronous FIFO (First-In First-Out)** memory using the **OpenROAD physical design flow**, **Yosys synthesis tool**, **OpenSTA timing analysis**, and the **Nangate45 standard cell library**.

The objective of this project is to understand and implement the complete ASIC physical design flow, beginning from RTL design and ending with post-route timing verification.

---

# Design Specifications

## Design Name

**Synchronous FIFO**

## Inputs

* `clk` : Clock Input
* `rst` : Active High Reset
* `wr_en` : Write Enable
* `rd_en` : Read Enable
* `din` : Data Input

## Outputs

* `dout` : Data Output
* `full` : FIFO Full Flag
* `empty` : FIFO Empty Flag

## Functionality

The FIFO stores incoming data on every positive clock edge when `wr_en` is asserted and the FIFO is not full.

Similarly, data is read from the FIFO when `rd_en` is asserted and the FIFO is not empty.

The design maintains separate read and write pointers to support sequential data storage and retrieval.

---

# Technology and Tools

| Item                 | Details      |
| -------------------- | ------------ |
| Physical Design Tool | OpenROAD     |
| Synthesis Tool       | Yosys        |
| Timing Analysis      | OpenSTA      |
| Technology Library   | Nangate45    |
| HDL                  | Verilog      |
| Design Type          | Digital ASIC |

---

# Project Directory Structure

```text
.
├── fifo.v
├── fifo.ys
├── fifo_netlist.v
├── fifo.sdc
│
├── floorplan.tcl
├── placement.tcl
├── tapcell.tcl
├── pdn.tcl
├── place_pins.tcl
├── cts.tcl
├── route.tcl
├── sta.tcl
├── post_sta.tcl
│
├── floorplan.def
├── tapcell.def
├── pdn.def
├── pins.def
├── placed.def
├── cts.def
├── routed.def
│
├── NangateOpenCellLibrary_typical.lib
└── README.md
```

---

# Physical Design Flow

## 1. RTL Design

The Verilog RTL of the synchronous FIFO was developed and functionally verified.

### Output

```text
fifo.v
```

### Result

* FIFO logic implemented successfully.
* Read and write pointer logic verified.
* Full and empty status flags generated correctly.

---

## 2. Logic Synthesis

RTL was synthesized using **Yosys** with the **Nangate45** standard cell library.

### Output

```text
fifo_netlist.v
```

### Result

* Gate-level netlist generated successfully.
* Technology mapping completed.
* Logic optimized for physical implementation.

---

## 3. Static Timing Analysis (Pre-Layout STA)

Timing analysis was performed on the synthesized netlist before physical implementation.

### Input Files

```text
fifo_netlist.v
fifo.sdc
NangateOpenCellLibrary_typical.lib
```

### Result

* Clock constraints applied successfully.
* Initial timing verified before layout.

---

## 4. Floorplanning

Floorplanning defines the physical dimensions of the chip.

### Includes

* Die Area
* Core Area
* Standard Cell Rows
* Placement Site Generation

### Output

```text
floorplan.def
```

### Result

* Die initialized successfully.
* Core utilization established.
* Placement rows generated.

---

## 5. Tapcell Insertion

Tap cells are inserted to prevent latch-up and satisfy fabrication requirements.

### Output

```text
tapcell.def
```

### Result

* Tap cells inserted successfully.
* Design prepared for power planning.

---

## 6. Power Distribution Network (PDN)

Power planning creates the VDD and VSS distribution network.

### Output

```text
pdn.def
```

### Result

* Power rails generated.
* Stable power delivery network established.

---

## 7. IO Pin Placement

Input and output pins are placed along the chip boundary.

### Output

```text
pins.def
```

### Result

* IO pins placed successfully.
* Pin accessibility optimized for routing.

---

## 8. Global and Detailed Placement

Standard cells are positioned within the core area while minimizing wirelength and congestion.

### Output

```text
placed.def
```

### Result

* Cell placement legalized.
* Congestion reduced.
* Optimized placement achieved.

---

## 9. Clock Tree Synthesis (CTS)

Clock Tree Synthesis distributes the clock signal uniformly across the design.

### Output

```text
cts.def
```

### Result

* Clock buffers inserted.
* Clock skew minimized.
* Balanced clock network generated.

---

## 10. Global and Detailed Routing

Physical interconnections are created between all cells.

### Output

```text
routed.def
```

### Result

* Signal routing completed successfully.
* Routing guides satisfied.
* Physical connectivity established.

---

## 11. Post-Route Static Timing Analysis

Final timing verification is performed after routing.

### Input Files

```text
routed.def
fifo_netlist.v
fifo.sdc
NangateOpenCellLibrary_typical.lib
```

### Result

* Setup timing checked.
* Hold timing verified.
* Critical paths analyzed.
* Final timing closure confirmed.

---

# GUI Visualization

The design can be visualized at different stages using the OpenROAD GUI.

## Floorplan

```bash
openroad -gui floorplan.tcl
```

## Placement

```bash
openroad -gui placement.tcl
```

## Clock Tree Synthesis

```bash
openroad -gui cts.tcl
```

## Routing

```bash
openroad -gui route.tcl
```

---

# Results Summary

| Flow Stage           | Status |
| -------------------- | ------ |
| RTL Design           | ✅      |
| Logic Synthesis      | ✅      |
| Pre-Layout STA       | ✅      |
| Floorplanning        | ✅      |
| Tapcell Insertion    | ✅      |
| Power Planning       | ✅      |
| IO Pin Placement     | ✅      |
| Cell Placement       | ✅      |
| Clock Tree Synthesis | ✅      |
| Routing              | ✅      |
| Post-Route STA       | ✅      |

---

# Key Learning Outcomes

* RTL Design using Verilog
* Logic Synthesis using Yosys
* Static Timing Analysis using OpenSTA
* Floorplanning
* Tapcell Insertion
* Power Distribution Network Generation
* IO Pin Placement
* Standard Cell Placement
* Clock Tree Synthesis
* Global and Detailed Routing
* Complete Open-Source RTL-to-Physical Design Flow

---

# Conclusion

A complete **RTL-to-PostSTA implementation of a Synchronous FIFO** was successfully carried out using **Yosys**, **OpenROAD**, and **OpenSTA** with the **Nangate45 technology library**.

The project demonstrates the end-to-end ASIC physical design flow, from RTL synthesis through floorplanning, placement, clock tree synthesis, routing, and final timing verification, providing practical exposure to industry-standard digital physical design methodologies.

---

## Author

**Sudheer**

**RTL-to-Physical Design Flow using Yosys, OpenROAD, OpenSTA, and Nangate45 Technology**

