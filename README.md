# Verilog Development Environment with GitHub Codespaces

A ready-to-use **Verilog development environment** powered by **GitHub Codespaces**, **Dev Containers**, and **VS Code**.
This repository allows you to start writing, compiling, and simulating Verilog code instantly without installing tools locally.

## 🚀 Features

* Preconfigured **Dev Container** for hardware development
* Full **VS Code setup** for Verilog/SystemVerilog
* Ready-to-use **GitHub Codespaces environment**
* Integrated **simulation tools**
* Syntax highlighting and linting
* Zero local installation required

## 📦 Included Tools

The development container includes common Verilog tools such as:

* **Icarus Verilog** – Verilog compiler and simulator
* **GTKWave** – Waveform viewer
* **Verilog/SystemVerilog VS Code extensions**

## 🛠 Requirements

You only need:

* A **GitHub account**
* Access to **GitHub Codespaces**

No local installation of Verilog tools is required.

## ▶️ Getting Started

### 1. Open in Codespaces

1. Go to this repository.
2. Click **Code**
3. Select **Codespaces**
4. Click **Create codespace on main**

GitHub will automatically build the dev container and open the environment in VS Code.

### 2. Write Verilog Code

Create a Verilog file:

```verilog
module hello;
  initial begin
    $display("Hello, Verilog!");
    $finish;
  end
endmodule
```

Save it as:

```
hello.v
```

### 3. Compile and Run

Compile the code using **Icarus Verilog**:


Run the simulation: By clicking on the Green Button in the top right corner 

Output:

```
Hello, Verilog!
```

## 📊 Viewing Waveforms

If your design generates a `.vcd` waveform file, you can open the file, and you will see Netlist View:

Click on option -->Netlist View  
And add variables to the Scope

<img width="1810" height="949" alt="image" src="https://github.com/user-attachments/assets/e6bf4c2f-15b2-4893-b96d-5e9a73ba7d08" />


```
gtkwave waveform.vcd 
```

## 📁 Project Structure

```
.
├── .devcontainer/
│   ├── devcontainer.json
├── .vscode/
│   └── extensions.json
├── verilog/
│   └── example.v
└── README.md
```

## 🔧 Customization

You can modify the container configuration inside:

```
.devcontainer/
```

To add additional tools such as:

* Verilator
* Yosys
* FPGA toolchains
* Additional VS Code extensions

## 🤝 Contributing

Contributions are welcome. Feel free to:

* Improve the development container
* Add new examples
* Enhance documentation

Create a pull request or open an issue.

## 📜 License

This project is open-source and available under the **MIT License**.

---

⭐ If this repository helps you, consider giving it a star!
