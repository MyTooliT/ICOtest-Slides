<!--
theme: default
paginate: true
_paginate: false
-->

<style>
section::after {
  content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
}
</style>

# ICOtest • Production Tests for the ICOtronic System

![bg opacity:.15](Pictures/ICOtronic-System.webp)

---

# 📚 ICOtest

- Collection of [pytest](https://pytest.org) tests for [ICOtronic system](https://www.mytoolit.com/ICOtronic/):
  - STU (Stationary Transceiver Unit)
  - Sensor Nodes:
    - SHA (Sensory Holder Assembly)
    - STH (Sensory Tool Holder)
    - SMH (Sensory Milling Head)
- Python package available at [PyPI](https://pypi.org/project/icotest/):

  ```sh
  pip install icotest
  ```

- Documentation available at [Read The Docs](https://icotest.readthedocs.io)

![bg fit right:38%](Pictures/Read-the-Docs.webp)

---

# 📋 Requirements

## Hardware

- CAN adapter
- ICOtronic hardware
- USB Programmer <br/> (for firmware upload)

![bg fit right:55% 150%](Pictures/CAN-Adapter.jpg)
![bg 100%](Pictures/STU.webp)
![bg 120%](Pictures/Programmer.webp)

## Software

- Driver for CAN adapter
- Python
- ICOtest

---

# ⚙️ Usage

- ICOtest CLI tool to run tests:

  ```sh
  icotest run -k 'sensor_node or sth'
  ```

  Run test that contain pattern `sensor_node` or <br/> pattern `sth`

- Config of test parameters via YAML (`icotest config`):

  ```yaml
  # Product name for the  manufacturer (maximum of 128 byte UTF-8 encoded text)
  product name: "0"
  # The production date of the STH PCB in the format YYYY-MM-DD
  production date: 2025-01-01
  # Serial number for the manufacturer (maximum of 32 byte UTF-8 encoded text)
  serial number: "0"
  ```

![bg fit right:28% 200%](Pictures/icotest.webp)

---

# 🚧 Current State

- Tests still need refinement
- Works on my machine 😅
- We probably need to add some **additional tests**
- **Default parameters** should be **updated** <br/> (by hardware expert)
- **Proper description** of test **procedure**
  - Which test commands do we need for which hardware
  - How do we document test results?
    - Output of test commands
    - Version of ICOtest

![bg right:30% opacity:.15](Pictures/ICOtronic-System.webp)
