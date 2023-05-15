# App

## Joysticks
- App hat zwei Joysticks
  - für linkes und rechtes Rad
- selbst implementiert, von "View" Klasse abgeleitet
- können hoch und runter bewegt werden
- Werte von -100 bis 100 Prozent
  - werden auf nächste Fünf gerundet

## Senden der Daten
- Bluetooth Classic 4.0
- Daten zur Übertragung:
  - Position der Joysticks in Prozent
  - Gesichts ID
- Einweg-Kommunikation

### Android-Bluetooth-Serial Bibliothek
- einfach mit Gerät verbinden
  - kann verfügbare Geräte auflisten und per Name mit Gerät verbinden
- einfach Daten senden und empfangen
- gibt Feedback ob Verbindung erfolgreich, Daten gesendet und empfangen wurden

---

# Datenübertragung und Verarbeitung

## Empfang der Daten
- ESP32 empfängt Daten mit BluetoothSerial Bibliothek
- empfangene Daten müssen weiter verarbeitet werden
- ließt einen String ein

## Verarbeitung der Daten
- String besteht aus cmd und value
- cmd (char) gibt an welche Funktion der ESP ausführen soll
- value (int) gibt den Wert für diese Funktion an

## Befehle
- L/R - setzt Geschwindigkeit vom linken/rechten Rad
  - value wird von Prozent zu Schritte pro Sekunde umgerechnet
  - Ergebnis wird an `setSpeed()` Funktion weitergegeben
- F - ändert am Display angezeigtes Gesicht
  - value wird an `drawFace()` Funktion weitergegeben

---

# Fahrwerk

## Motoren
- Schrittmotoren
- präzise
- schnell
- leistungsstark

## Schrittmotor-Treiber
- erleichtert Ansteuerung der Motoren
- nur 2 Pins pro Motor am ESP32
- Unterstützt Microstepping
  - erlaubt kleinere Schritte
  - weniger Vibrationen
  - verringertes Dreh- und Haltemoment

## Ansteuerung der Motoren
- AccelStepper Bibliothek
  - Funktionen zur einfachen Ansteuerung von Schrittmotoren und Treibern
- `setSpeed()` Funktion setzt Drehgeschwindigkeit des Motors
- `runSpeed()` so oft wie möglich aufrufen um Treibern Step-Pulse zu senden

### Multitasking
- ESP32 hat zwei Kerne
- können parallel zwei Aufgaben ausführen
- Kern 0 - ruft durchgehend `runSpeed()` auf
- Kern 1 - Bluetooth-Kommunikation, Datenverarbeitung, setzen der Drehgeschwindigkeit <br>
  und Ansteuerung des Displays

## Räder
- 3D modelliert und gedruckt
- aus PLA Kunststoff
- Profil zur besseren Haftung
