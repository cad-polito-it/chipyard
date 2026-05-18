![CHIPYARD](https://github.com/ucb-bar/chipyard/raw/main/docs/_static/images/chipyard-logo-full.png)
![CAD](https://raw.githubusercontent.com/cad-polito-it/.github/refs/heads/main/profile/cad.png)

# VLSI Benchmarks for Hardware Testing

![Status](https://img.shields.io/badge/Status-Research--Prototype-orange.svg)

This repository implements a playground for an **Agile Framework for Prototyping Hardware Testing Structural and Functional Methodologies**. 

It leverages the [Chipyard](https://github.com/ucb-bar/chipyard) ecosystem and extends the [HAMMER](https://github.com/ucb-bar/hammer) VLSI flow. This repository is a fork of the main Chipyard and Hammer repositories (please see the Chipyard [README](https://github.com/cad-polito-it/chipyard/blob/working/cad_servers/README_chipyard.md) for further details).

---

## Overview
As modern silicon devices increase in complexity, traditional benchmarks (ISCAS-85, ITC-99, etc.) are becoming insufficient. Furthermore, test engineers often spend excessive time manually adapting EDA-dependent scripts, which is error-prone and inefficient.

This framework provides an **Unified Hardware Testing Support** for both **Structural** and **Functional** testing:
* **Modern Benchmarks:** Access to complex, open-source SoC designs (Rocket Chip, BOOM, hardware accelerators) via Chipyard.
* **Agile VLSI Flow:** Automation and abstraction of EDA tool-dependent commands using Python-based wrappers in Hammer.

The framework is built on two primary pillars:

1. **Chipyard:** Handles system-to-RTL design. It provides a library of ready-to-use IPs, including in-order/out-of-order processors, vector processors, and various interconnects.
2. **Hammer (Highly Agile Masks Made Effortlessly from RTL):** Handles the RTL-to-physical design flow. The following steps have been introduced for hardware testing, covering different fault models (Stuck-at faults, Transition Delay faults, Small Delay faults, Transient faults):
    * **DfT Insertion:** Automated Design-for-Testability (scan chain insertion) during the synthesis phase.
    * **ATPG Flow:** A dedicated Automatic Test Pattern Generation infrastructure.
    * **Functional Fault Simulation:** Evaluation of firmware-based tests through a specialized infrastructure.

> **NOTE:** This framework aims to allow researchers to focus on testing methodologies rather than "bug-hunting" in adapted scripts and "benchmark-hunting".

---

## Getting Started

To get started with these VLSI benchmarks, you can proceed in two ways:
* **Full Setup:** If you are ready to dive in, please visit this [README](https://github.com/cad-polito-it/chipyard/blob/working/cad_servers/README_cad.md) for a comprehensive guide on installing the framework and using the various steps. Both Structural and Functional testing flows are supported.
* **Pre-synthesized Benchmarks:** If you would like to use your existing workspace, you can find a set of synthesized benchmarks [here](https://github.com/cad-polito-it/chipyard/releases). For logic simulation of existing released benchmarks, you will need to set up your own simulation infrastructure.

---
## Citation

If you use this framework in your research, please cite the following publication (not yet available in IEEExplorer, to be presented at [IEEE ETS 2026](https://ets2026.uniwa.gr/conference-program/)):

```
@INPROCEEDINGS{benchmarks,
  author={Angione, Francesco and Bernardi, Paolo and di Gruttola Giardino, Nicola and Filipponi, Gabriele and Iaria, Giusy and Perlo, Giacomo and Pomeranz, Irith and Porsia, Antonio and Ruospo, Annachiara and Sanchez, Ernesto and Turco, Vittorio},
  booktitle={2026 IEEE European Test Symposium (ETS)}, 
  title={Advances in Testing and Reliability Benchmarks}, 
  year={2026},
  volume={},
  number={},
  pages={1-10},
  }
```


If used for research, please cite Chipyard and Hammer by the following publications:

```
@article{chipyard,
  author={Amid, Alon and Biancolin, David and Gonzalez, Abraham and Grubb, Daniel and Karandikar, Sagar and Liew, Harrison and Magyar,   Albert and Mao, Howard and Ou, Albert and Pemberton, Nathan and Rigge, Paul and Schmidt, Colin and Wright, John and Zhao, Jerry and Shao, Yakun Sophia and Asanovi\'{c}, Krste and Nikoli\'{c}, Borivoje},
  journal={IEEE Micro},
  title={Chipyard: Integrated Design, Simulation, and Implementation Framework for Custom SoCs},
  year={2020},
  volume={40},
  number={4},
  pages={10-21},
  doi={10.1109/MM.2020.2996616},
  ISSN={1937-4143},
}
```


```
@inproceedings{10.1145/3489517.3530672,
author = {Liew, Harrison and Grubb, Daniel and Wright, John and Schmidt, Colin and Krzysztofowicz, Nayiri and Izraelevitz, Adam and Wang, Edward and Asanovi\'{c}, Krste and Bachrach, Jonathan and Nikoli\'{c}, Borivoje},
title = {Hammer: a modular and reusable physical design flow tool: invited},
year = {2022},
isbn = {9781450391429},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3489517.3530672},
doi = {10.1145/3489517.3530672},
abstract = {Process technology scaling and hardware architecture specialization have vastly increased the need for chip design space exploration, while optimizing for power, performance, and area. Hammer is an open-source, reusable physical design (PD) flow generator that reduces design effort and increases portability by enforcing a separation among design-, tool-, and process technology-specific concerns with a modular software architecture. In this work, we outline Hammer's structure and highlight recent extensions that support both physical chip designers and hardware architects evaluating the merit and feasibility of their proposed designs. This is accomplished through the integration of more tools and process technologies---some open-source---and the designer-driven development of flow step generators. An evaluation of chip designs in process technologies ranging from 130nm down to 12nm across a series of RISC-V-based chips shows how Hammer-generated flows are reusable and enable efficient optimization for diverse applications.},
booktitle = {Proceedings of the 59th ACM/IEEE Design Automation Conference},
pages = {1335–1338},
numpages = {4},
location = {San Francisco, California},
series = {DAC '22}
}
```

# Contacts 
Feel free to contribute with issues, PRs.
You can contact us at:
- Francesco Angione (francesco.angione@polito.it)
- Nicola di Gruttola Giardino (nicola.digruttola@polito.it)
- Gabriele Filipponi (gabriele.filipponi@polito.it)
- Giusy Iaria (giusy.iaria@polito.it)
