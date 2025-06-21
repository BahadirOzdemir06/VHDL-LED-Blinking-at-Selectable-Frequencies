# VHDL-LED-Blinking-at-Selectable-Frequencies


## Açıklama (Türkçe)

Bu proje, bir LED'in farklı frekanslarda yanıp sönmesini sağlayan VHDL tabanlı bir sayıcı tasarımıdır. Giriş anahtarları (`sw`) ile 1/16 Hz'den 8 Hz'e kadar değişen önceden tanımlı frekanslar seçilebilir. Bir başka giriş (`sw_e`) aktif olduğunda, LED ilgili frekansta yanıp söner.

Her frekans için ayrı bir sayaç süreci tanımlanmıştır ve bu sayaçlar, `clk` sinyali ile senkronize çalışarak belirli aralıklarla çıkış üretir. Seçilen frekansa göre LED çıkışı `led_0` portuna yönlendirilir.

### Özellikler

- 8 farklı frekansta yanıp sönme (1/16 Hz - 8 Hz)
- Donanım tabanlı frekans üretimi (sayıcılar)
- VHDL ile modüler tasarım
- FPGA uygulamaları için uygun yapı

### Frekans Seçim Tablosu

| sw Değeri | Frekans   |
|-----------|-----------|
| "000"     | 1 Hz      |
| "001"     | 2 Hz      |
| "010"     | 4 Hz      |
| "011"     | 8 Hz      |
| "100"     | 0.5 Hz    |
| "101"     | 0.25 Hz   |
| "110"     | 0.125 Hz  |
| "111"     | 0.0625 Hz |

### Portlar

| Port     | Yön | Açıklama                         |
|----------|-----|----------------------------------|
| clk      | in  | Sistem saat sinyali (genelde 50 MHz) |
| sw       | in  | Frekans seçim anahtarları (3-bit) |
| sw_e     | in  | LED çıkışını aktif etme anahtarı |
| led_0    | out | Yanıp sönen LED çıkışı          |

### Nasıl Kullanılır

1. `led_blinking_selective_frequencies.vhd` dosyasını projenize ekleyin.
2. FPGA saat frekansına göre sabitleri (counter değerleri) uyarlayın.
3. Frekans seçimini `sw` portu üzerinden yapın.
4. `sw_e` girişini '1' yaparak LED çıkışını etkinleştirin.
5. Tasarımı simüle edin veya FPGA'ya yükleyerek test edin.

---

## Description (English)

This project implements an LED blinking system in VHDL, where the LED can blink at various predefined frequencies ranging from 0.0625 Hz up to 8 Hz. The frequency is selected through a 3-bit input switch (`sw`). When the enable signal (`sw_e`) is active, the LED toggles at the selected frequency.

Each frequency has its own independent counter process synchronized with the input clock signal (`clk`). The selected frequency output is routed to the output port `led_0`.

### Features

- 8 selectable blinking frequencies (from 1/16 Hz to 8 Hz)
- Hardware-based frequency generation using counters
- Modular VHDL design
- Suitable for FPGA applications

### Frequency Selection Table

| sw Value | Frequency  |
|----------|------------|
| "000"    | 1 Hz       |
| "001"    | 2 Hz       |
| "010"    | 4 Hz       |
| "011"    | 8 Hz       |
| "100"    | 0.5 Hz     |
| "101"    | 0.25 Hz    |
| "110"    | 0.125 Hz   |
| "111"    | 0.0625 Hz  |

### Ports

| Port     | Direction | Description                     |
|----------|-----------|---------------------------------|
| clk      | in        | System clock signal (typically 50 MHz) |
| sw       | in        | Frequency selection (3-bit switch) |
| sw_e     | in        | LED output enable signal        |
| led_0    | out       | Blinking LED output             |

### How to Use

1. Add the `led_blinking_selective_frequencies.vhd` file to your project.
2. Adjust frequency constants according to your system clock.
3. Select the desired frequency using the `sw` input.
4. Set `sw_e` high ('1') to activate the LED output.
5. Simulate or deploy the design on an FPGA board.




