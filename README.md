# 8-to-1 multiplexer using-3-to-8 decoder

## Learning Outcomes
After completing this project, we were able to:
- Design and develop a **3-to-8 decoder**
- Design and develop an **8-to-1 multiplexer**
- Verify their functionality via simulation and hardware implementation

---

## Introduction
This project focuses on two critical combinational circuits:
- **Decoder:** Converts `n`-bit binary input to a maximum of `2^n` unique outputs.
- **Multiplexer:** Connects one of the `2^n` inputs to a single output based on an `n`-bit selector.

Both circuits will include an **Enable (EN)** signal to control their activation.

---

## Instructions

### Step 1: 2-to-4 Decoder
- Create a new Vivado project named `Lab4`.
- Create a design file named `Decoder_2_to_4.vhd`.

**Entity Declaration:**
```vhdl
entity Decoder_2_to_4 is
    Port (
        I : in STD_LOGIC_VECTOR (1 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Decoder_2_to_4;
```

- Use **buses** for inputs and outputs.
- Implement functionality where EN must be active for outputs to be valid.

### Step 2: Simulation of 2-to-4 Decoder
- Create a test bench named `TB_Decoder_2_to_4.vhd`.
- Simulate using **XSim** to verify the output.

### Step 3: 3-to-8 Decoder
- Create a new design file named `Decoder_3_to_8.vhd`.
- Label inputs `I (2 downto 0)`, `EN`, and outputs `Y (7 downto 0)`.
- Use **two instances** of `Decoder_2_to_4` and additional logic to build the 3-to-8 decoder.

**Entity and Architecture Outline:**
```vhdl
entity Decode_3_to_8 is
    Port (
        I : in STD_LOGIC_VECTOR (2 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Decode_3_to_8;
```

- Simulate using **XSim**.
- Test input patterns.

### Step 4: 8-to-1 Multiplexer
- Create a design file named `Mux_8_to_1.vhd`.
- Build an 8-to-1 multiplexer using the `3-to-8 decoder`, **AND gates**, and an **OR gate**.
- Inputs:
  - `D(7 downto 0)` : Data inputs
  - `S(2 downto 0)` : Select inputs
  - `EN` : Enable
- Output:
  - `Y`

- Simulate the multiplexer using patterns.

### Step 5: FPGA Board Implementation (BASYS 3)
- Set `Mux_8_to_1` as the top module.
- Connect:
  - `SW0-SW7` to `D0-D7`
  - `BTN0` to `EN`
  - `SW13-SW15` to `S0-S2`
  - `LD0` as output `Y`

- Generate the programming file (.bit) and upload it to the BASYS 3 board.
- Test by changing switches and observing the LED.

---

Good luck and happy coding! 🚀
