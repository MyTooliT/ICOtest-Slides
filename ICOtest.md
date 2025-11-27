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

