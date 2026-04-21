---
title: "Live Sound Engineering 101"
subtitle: "From Stage to Speakers"
author: "Sam & Friends"
date: "2026"
theme: "AnnArbor"
colortheme: "crane"
fontfamily: "dejavu"
fontsize: 12pt
geometry: "paperwidth=297mm,paperheight=210mm"
header-includes:
  - \usepackage{booktabs}
  - \setbeamertemplate{navigation symbols}{}
---

# Course Overview

### What You Will Learn

- **Module 1:** The Stage Setup — Power, cabling, DIs, IEMs
- **Module 2:** Connectivity, Impedance & Signal Levels
- **Module 3:** Ground Loops & Noise
- **Module 4:** The Mixer Signal Path
- **Module 5:** Routing & Aux Sends
- **Module 6:** Processing & Effects
- **Module 7:** Stage Monitors vs. PA Speakers
- **Module 8:** Feedback & Sources
- **Module 9:** Practice, Multitracking & Drills
- **Module 10:** The Gig Workflow


# MODULE 1
## The Stage Setup

### Module 1 — Power Distribution

**Dedicated Circuits**

- Audio must be on separate circuits from lighting, HVAC, and catering
- Lighting dimmers chop the AC sine wave → "dimmer hash" (harsh buzz)
- HVAC motors and refrigerators create voltage spikes and EMI
- In venues: request a dedicated breaker panel for audio

**Outlet Placement**

- Every 100 ft of 14-gauge extension cord at 15A drops ~5V
- Keep amplifiers within 25 ft of a power outlet
- Use the shortest, heaviest-gauge cable possible
- For large shows: dedicated power distro from a 50A/100A cam-lock feed

### Module 1 — Star Ground Principle

- A **ground loop** occurs when equipment is on different earth-ground references
- Even a fraction of a volt difference → current flows through cable shield → 50/60 Hz hum
- **Star ground:** Plug ALL audio equipment into a single power distribution source

```
     ┌──────────────────────────────────────┐
     │          POWER DISTRIBUTION          │
     │         (Single Ground Point)        │
     └──┬───────┬───────┬───────┬───────┬───┘
        │       │       │       │       │
     ┌──┴──┐ ┌──┴──┐ ┌──┴──┐ ┌──┴──┐ ┌──┴──┐
     │ FOH │ │Bass │ │Gtr  │ │Keys │ │Drum │
     │Console│ │Amp  │ │Amp  │ │Rig  │ │Amps │
     └─────┘ └─────┘ └─────┘ └─────┘ └─────┘
```

### Module 1 — Cable Management

**The Cardinal Rule:** Audio and power cables must NEVER run parallel

- AC power cables induce 50/60 Hz hum into nearby audio cables via electromagnetic coupling
- If they must cross → cross at exactly **90 degrees** (the "X pattern")

```
    Audio Cable ─────────────┐
                            │  ← 90° crossing
    Power Cable ─────────────┘
```

- Secure every floor cable with **gaffer tape** (never duct tape — residue ruins cables)
- Use different color gaffer tape for audio vs. power runs

### Module 1 — Stage Box / Snake

**Analog Snake**

- Heavy multi-core cable: 16, 24, or 32 channel pairs
- Stage box (male XLR inputs) → Fan-out at FOH (female XLR to mixer)

**Digital Stage Box**

- Single Cat5e/fiber or AES50/MADI connection
- Carries up to 64 channels bidirectionally
- Built-in remote-controlled preamps
- **Always carry a spare cable** — if it fails, you lose everything

### Module 1 — DI Boxes (Direct Injection)

Converts high-Z unbalanced signal → low-Z balanced signal for long cable runs

| | **Passive DI** | **Active DI** |
|---|---|---|
| **Power** | None (transformer) | Phantom or battery |
| **Best for** | Strong signals (bass, speaker emu) | Weak signals (piezo, keyboards, laptops) |
| **Input Z** | Medium | High (1MΩ+) |
| **Distortion risk** | Handles hot signals well | Can distort on very hot sources |
| **Examples** | Radial JDI, Whirlwind IMP 2 | Radial J48, Countryman Type 85 |

**Ground Lift Switch:** Disconnects Pin 1 (shield) to break ground loops. Always try both positions — use whichever is quieter.

### Module 1 — In-Ear Monitors (IEMs)

- Replacing wedge monitors on professional stages
- Custom-molded or universal-fit earpieces + wireless transmitter / belt pack
- Provide **20–35 dB of isolation** → musicians hear detail at lower SPL
- Require **stereo aux sends** → hard-pan elements for spatial separation
- Dramatically reduce stage volume → cleaner FOH mix

**Pro tip:** Add a small amount of room ambience (audience mic) to IEM mixes so musicians stay connected to the crowd

### Module 1 — Key Takeaways

1. **Audio needs dedicated power** — separate from lighting, HVAC, catering
2. **Star grounding eliminates ground loops** — single power distro for all audio
3. **Cross audio and power cables at 90°** — never run them parallel
4. **Match the DI to the source** — passive for strong signals, active for weak
5. **IEMs reduce stage volume and improve FOH clarity**
6. **Secure every cable** — gaffer tape (never duct tape)


# MODULE 2
## Connectivity, Impedance & Signal Levels

### Module 2 — Connectors: XLR

**XLR — The Professional Standard**

- 3-pin: standard for mics and balanced line-level audio
- Pin 1 = Ground/Shield, Pin 2 = Hot (+), Pin 3 = Cold (−)
- Latching lock mechanism — won't pull out
- Carries balanced signal → rejects noise over long runs
- 4-pin: intercoms/headsets | 5-pin: DMX lighting control
- **Always carry more XLR than you think you need** — most commonly failed item

### Module 2 — Connectors: TRS, TS, Speakon, RCA

**TRS (Tip-Ring-Sleeve)**

- 3 conductors: balanced mono (Tip=Hot, Ring=Cold, Sleeve=GND) **or** stereo unbalanced (Tip=L, Ring=R, Sleeve=GND)
- Used for: balanced line-level connections, headphones, insert cables

**TS (Tip-Sleeve)**

- 2 conductors: unbalanced. Keep under 15–20 ft to avoid noise
- Used for: instrument cables (guitar, bass, keyboard)

**Speakon (NL4/NL2)**

- Industry standard for amp-to-speaker connections
- Locks with a twist, no exposed pins, handles high current safely
- **NEVER use 1/4" TS for speaker connections** — can arc, weld, and destroy equipment

**RCA/Phono**

- Unbalanced consumer-level (−10 dBV). Use DI box with ground lift for PA connection

### Module 2 — Impedance (Z)

Impedance = total opposition to AC flow, measured in ohms. Varies with frequency.

**High-Z (Hi-Z):** 10kΩ – 1MΩ (guitar/bass pickups)

- Interacts with cable capacitance → rolls off high frequencies over distance
- A 25 ft cable on a guitar pickup loses audible highs above 5 kHz
- Use short cables (10–15 ft) or DI boxes for long runs

**Low-Z (Lo-Z):** 150–600Ω (professional mics, balanced outputs)

- Can travel hundreds of feet without degradation
- Low source impedance "drives" cable capacitance effectively

**The 10:1 Rule:** Input impedance ≥ 10 × source impedance for proper signal transfer

### Module 2 — Signal Levels: The Hierarchy

```
Mic Level ──── Instrument Level ──── Line Level ──── Speaker Level
  ~−56 to −20 dBu    ~−20 to 0 dBu     +4 dBu (pro)     20–100+ V
                                         −10 dBV (consumer)
```

| Level | Typical Range | Key Notes |
|---|---|---|
| **Mic** | −56 to −20 dBu | Needs 30–60 dB preamp gain. Use balanced XLR |
| **Instrument** | −20 to 0 dBu | High-Z. Use DI box for long runs |
| **Line (Pro)** | +4 dBu (1.228V) | Mixers, outboard, keyboards |
| **Line (Consumer)** | −10 dBV (0.316V) | Laptops, phones. 12 dB below pro line level |
| **Speaker** | 20–100+ V | **Dangerous.** Never connect to line input |

### Module 2 — Balanced vs. Unbalanced

**Balanced (XLR, TRS):** 3 conductors — Ground, Hot (+), Cold (−)

- Sending device: same signal on Hot and Cold, but Cold is **inverted** (180°)
- Noise induced equally on both wires (same polarity)
- At receiver: Cold is inverted again → audio adds (+6 dB), noise cancels (0)
- This is **common-mode rejection**
- Can run **hundreds of feet** without noise

**Unbalanced (TS, RCA):** 2 conductors — Signal and Ground

- No common-mode rejection — noise is added directly to signal
- Keep under **15–20 feet**
- Acts as antenna for RFI and EMI over longer distances

### Module 2 — Key Takeaways

1. **XLR is the professional audio standard** — balanced, locking, noise-rejecting
2. **Never use 1/4" TS for speaker connections** — use Speakon
3. **Impedance matters** — High-Z needs short cables or DI boxes; Low-Z runs clean for hundreds of feet
4. **The 10:1 impedance rule** — input Z ≥ 10× source Z
5. **Know your signal levels** — Mic < Instrument < Line < Speaker. Mismatch = noise or distortion
6. **Balanced cables reject noise** via common-mode rejection. Unbalanced = keep short


# MODULE 3
## Ground Loops & Noise

### Module 3 — What is a Ground Loop?

- Two or more devices connected to **different earth-ground points**
- Voltage difference between grounds → current flows through audio cable shield
- Result: **50 Hz hum** (230V countries) or **60 Hz hum** (120V countries) + harmonics

```
     Wall Outlet A          Wall Outlet B
     (Stage Left)           (Stage Right)
         |                       |
     +---+---+               +---+---+
     |Keyboard+--- DI Cable --+ Mixer  |
     +-------+    (Shield     +-------+
                   carries
                  ground
                  current)
              ^
         GROUND LOOP HUM
```

**Common culprits:** Laptops, keyboards with local amps, bass amp DI outputs, video/projector connections

### Module 3 — Fixing Ground Loops

**1. Star Grounding (Best Prevention)**

- Plug ALL audio equipment into a single power distro
- Eliminates voltage difference between grounds → no loop current

**2. DI Box Ground Lift**

- Disconnects Pin 1 (shield) between source and mixer
- Breaks the loop while passing audio on Pins 2 & 3
- Always try both positions — leave grounded if no hum

**3. Isolation Transformer (Last Resort)**

- Magnetically couples audio with NO electrical connection
- Completely breaks the ground loop
- Examples: Ebtech Hum Eliminator, Radial Iso-Box

### Module 3 — NEVER Defeat the Safety Ground

**Removing the third prong (cheater plug / widow maker):**

- Eliminates the hum BUT removes electrical safety
- If a fault makes the chassis live → no path to trip the breaker
- **This has killed musicians and technicians**
- There is **no situation** where this is acceptable

**Proper solutions:** DI ground lifts, isolation transformers, power distribution

**Laptops** are notorious ground loop sources — switching power supplies couple digital noise into audio ground. Fix with: DI + ground lift, USB audio interface, or battery power.

### Module 3 — Key Takeaways

1. **Ground loops = different ground references** → current flows through cable shield → hum
2. **Star grounding is the best prevention** — single power distro for all audio
3. **Ground lift switches break the loop at the DI** — use only when you hear hum
4. **Isolation transformers** — for stubborn loops that ground lifting can't solve
5. **Never defeat the safety ground** — it's a lethal electrocution risk
6. **Laptops are notorious ground loop sources** — use DI + ground lift, USB interface, or battery


# MODULE 4
## The Mixer Signal Path

### Module 4 — Signal Flow: Source to Speaker

```
SOURCE ──► CABLE ──► DI/PREAMP ──► A/D ──► HPF ──► EQ ──► DYNAMICS ──► INSERT
                                                                  │
 Mic/     XLR/     Converts to   (digital  High   Shape  Comp/Gate/  External
 DI/      Balanced  mic level    consoles  Pass   tone   De-esser   processor
 Instrument          only         only)    Filter

 INSERT ──► AUX SENDS ──► PAN ──► CHANNEL FADER ──► SUMMING BUS
              │                                         │
        Pre/Post Fader                         Sets channel's
        for monitors/effects                   level in the mix
                                                      │
                                                      ▼
                                          GROUP/MASTER FADER ──► D/A ──► AMP ──► SPEAKER
                                                                (digital    Power    Sound
                                                                 consoles    amp     waves
                                                                 only)
```

**The #1 troubleshooting skill:** Trace the signal. The problem is at the **first point** where signal fails.

### Module 4 — Gain Staging (The Most Critical Step)

**Gain sets the signal-to-noise ratio. Faders set the mix balance.**

| Problem | Cause | Symptom |
|---|---|---|
| Gain too low | Signal near noise floor | Hiss when fader is raised |
| Gain too high | Signal clips at preamp | Harsh digital distortion |
| Faders inconsistent | Poor gain structure | Some at +10 dB, others at −30 dB |

**Proper gain setting:**

1. Start with fader at unity (0 dB)
2. Musician plays at loudest expected level
3. Adjust gain so peaks hit **−18 to −12 dBFS** (digital) or **0 VU** (analog)
4. Leave 6–12 dB of headroom — signal should never hit the clip indicator

### Module 4 — The Channel Strip

**High-Pass Filter (HPF)** — Engage on virtually every channel

| Source | HPF Starting Point |
|---|---|
| Vocals | 80–120 Hz |
| Snare | 80–100 Hz |
| Hi-hat / Overheads | 120–200 Hz |
| Electric guitar | 80–100 Hz |
| Bass / Kick | 30–40 Hz (gentle) |

**EQ — Cut before you boost**

- "Sweep and cut": Boost narrow band 8–12 dB → sweep → find where it sounds worse → cut 3–6 dB

**Dynamics**

- **Compressor:** Reduces dynamic range (threshold, ratio, attack, release, makeup gain)
- **Noise gate:** Silences channel below threshold (toms, snare)
- **De-esser:** Frequency-specific compressor targeting sibilance (4–8 kHz)

### Module 4 — Groups vs. VCAs/DCAs

**Groups (Subgroups)** — Audio passes through; can have inserts

```
  Ch 1 (Kick) ─────┐
  Ch 2 (Snare) ────┤
  Ch 3 (Hi-Hat) ───┼──► Group 1-2 Fader ──► Master L/R
  Ch 4 (Toms) ─────┤    (Drum Subgroup)
  Ch 5 (OH L) ─────┤
  Ch 6 (OH R) ─────┘
```

**VCAs/DCAs** — Remote gain control only; no audio passes through

```
  Ch 1 (Kick) ────────────────────► Master L/R
  Ch 2 (Snare) ──────────────────► Master L/R    ← Audio path unchanged
       │  │  │
       ▼  ▼  ▼
     VCA 1 Fader (Drum VCA)       ← Remote control only
```

**Key difference:** Groups carry audio and can have inserts; VCAs/DCAs only control levels.

### Module 4 — Phase vs. Polarity

The **Ø button reverses polarity**, not phase — it flips the entire waveform 180°

**When to use it:**

- Top and bottom snare mics → bottom mic sees opposite pressure → invert to align
- Front and back of open-back guitar amp

**When it WON'T help:**

- Comb filtering from time alignment issues → polarity is frequency-independent; comb filtering is frequency-dependent
- Fix: time alignment (delay) or the **3:1 rule** (distant mic ≥ 3× the close mic distance)

### Module 4 — Key Takeaways

1. **Memorize the signal flow** — trace source to speaker to find problems
2. **Gain = signal-to-noise ratio; Faders = mix balance** — set gain to peak at −18 to −12 dBFS
3. **HPF everything** (except kick/bass get gentle 30–40 Hz)
4. **Cut before you boost** — subtractive EQ is more transparent
5. **Groups process audio; VCAs/DCAs control levels** — use groups for shared processing
6. **Ø = polarity, not phase** — use for mic alignment, not time-based issues


# MODULE 5
## Routing & Aux Sends

### Module 5 — Pre-Fader vs. Post-Fader Aux Sends

| | **Pre-Fader** | **Post-Fader** |
|---|---|---|
| **Signal tap** | Before the fader | After the fader |
| **Fader effect** | Independent of fader | Follows fader |
| **Used for** | **Monitors** | **Effects (reverb, delay)** |
| **If fader pulled down** | Send stays the same | Send goes down too |

**Pre-Fader = Monitors:** Musicians need a consistent mix regardless of FOH fader moves

**Post-Fader = Effects:** Reverb should fade when the dry signal fades (prevents "wash" on muted channels)

### Module 5 — Pre/Post Fader Diagrams

**Pre-Fader (Monitors):**

```
                    ┌──────────────┐
                    │  Pre-Fader   │────→ Monitor Wedge
                    │  Aux Send    │     (Independent of fader)
Source → Preamp → ──┤              │
                    │  Channel     │
                    │  Fader       │────→ Main L/R Mix
                    └──────────────┘
```

**Post-Fader (Effects):**

```
                    ┌──────────────┐
                    │              │
Source → Preamp → ──┤  Channel     │
                    │  Fader       │────→ Main L/R Mix
                    │              │
                    │  Post-Fader  │────→ Effects Processor
                    │  Aux Send    │     (Follows fader)
                    └──────────────┘
```

### Module 5 — Matrix Routing & Speaker Zones

**Matrix outputs** = post-master sends with independent level, EQ, and delay

| Matrix | Purpose | Processing |
|---|---|---|
| 1–2 | Front fills | Level/EQ adjustment |
| 3–4 | Under-balcony fills | HF boost + delay |
| 5–6 | Delay towers | Calculated delay time |
| 7–8 | Subwoofers | Low-pass filter 80–120 Hz |

**Delay Tower Calculation:**

$$\text{Delay (ms)} = \frac{\text{Distance (m)}}{0.343}$$

Example: Delay tower 50 m from main PA → Delay = 50 ÷ 0.343 = **145.8 ms**

### Module 5 — PFL / AFL

**PFL (Pre-Fader Listen):** Taps signal BEFORE the fader

- Shows preamp level regardless of fader position
- **Primary uses:** Setting gain, troubleshooting (upstream vs downstream)

**AFL (After Fader Listen):** Taps signal AFTER fader and pan

- Shows actual mix level and position
- **Primary uses:** Checking monitor mixes, effects returns, group buses

**PFL is your #1 diagnostic tool:**

- Signal on PFL but no speaker output → problem is **downstream** (fader, routing, amp)
- No signal on PFL → problem is **upstream** (cable, mic, phantom power)

### Module 5 — Key Takeaways

1. **Pre-fader aux = monitors; post-fader aux = effects** — non-negotiable
2. **Matrix outputs feed speaker zones** — front fills, delay towers, subs each get their own send
3. **Delay towers need time alignment** — Delay (ms) = Distance (m) ÷ 0.343
4. **PFL is your primary diagnostic tool** — isolates upstream vs. downstream problems in seconds
5. **AFL shows actual mix level** — for checking monitors and effects returns


# MODULE 6
## Processing & Effects

### Module 6 — Subtractive EQ: The Sweep & Cut

**The technique:**

1. Select one parametric EQ band
2. Boost by 8–12 dB with a narrow Q
3. Sweep slowly across the frequency spectrum
4. When the sound gets **worse** → you've found the problem frequency
5. Change boost to a **cut of 3–6 dB**
6. Adjust Q — wider sounds more natural; narrower is more surgical

**Why cut instead of boost?**

- Subtractive EQ is more transparent and musical
- Boosting adds gain → pushes signal closer to clipping
- Cutting removes the problem → allows raising overall level

### Module 6 — Instrument EQ Quick Reference

| Source | HPF | Cut | Boost |
|---|---|---|---|
| **Voice** | 80–100 Hz | 200–300 Hz (mud), 2–3 kHz (harsh) | 5 kHz (presence), 10–12 kHz (air) |
| **Electric Guitar** | 80–100 Hz | 400 Hz (boxy) | 3 kHz (pick attack) |
| **Bass Guitar** | 30–40 Hz | 200–300 Hz (muddy) | 60–80 Hz (thump), 700–1 kHz (growl) |
| **Kick Drum** | 30–40 Hz | 200–400 Hz (boxy) | 50–80 Hz (thump), 3–5 kHz (beater click) |
| **Snare Drum** | 80–100 Hz | 800 Hz–1 kHz (honky) | 2–4 kHz (snap), 5–8 kHz (sizzle) |

### Module 6 — Compression Settings Guide

| Source | Threshold | Ratio | Attack | Release | Notes |
|---|---|---|---|---|---|
| **Lead Vocal** | −18 dB | 3:1–5:1 | 5–10 ms | 100–200 ms | Aim for 3–6 dB gain reduction |
| **Bass Guitar** | −12 dB | 4:1 | 10–20 ms | 150–200 ms | Smooths slap vs. fingerstyle |
| **Kick Drum** | −6 dB | 4:1 | 10–20 ms | 100–150 ms | Tames initial transient |
| **Snare Drum** | −6 dB | 3:1 | 5–10 ms | 80–150 ms | Adds sustain and punch |
| **Acoustic Guitar** | −15 dB | 2:1–3:1 | 10–20 ms | 150–200 ms | Evens strumming vs. picking |
| **Full Mix (Bus)** | −3 dB | 2:1 | 30 ms | 100–200 ms | Gentle glue compression |

### Module 6 — Noise Gates & De-Essers

**Noise Gate Settings (for toms):**

- **Threshold:** Just above bleed, below lightest hit
- **Attack:** 1–5 ms (fast — gate opens immediately)
- **Hold:** 50–150 ms (keeps gate open for natural decay)
- **Release:** 100–200 ms (smooth fade-out)
- **Range:** −40 to −60 dB (full mute can sound unnatural)

**De-Esser:** Frequency-selective compressor targeting sibilance (4–8 kHz for vocals)

- Only compresses the sibilant frequency range when it exceeds threshold
- Reduces harsh "s" and "sh" sounds without affecting rest of vocal

### Module 6 — Reverb & Delay for Live Sound

**Reverb — Keep it subtle!**

| Type | Character | Best For |
|---|---|---|
| **Plate** | Bright, smooth, dense | Lead vocals |
| **Hall** | Rich, warm, spacious | Drums, orchestral |
| **Room** | Short, tight, intimate | Drums, acoustic instruments |
| **Spring** | Vintage, metallic | Retro guitar (not vocals) |

**Reverb settings:** Pre-delay 20–80 ms | Decay 0.8–1.5 s | Level −15 to −20 dB below dry

**Delay types:**

- **Slapback:** 80–150 ms, no feedback → adds thickness
- **Tempo-synced:** Synced to song tempo → rhythmic echoes
- **Long:** 250–500 ms, 1–2 repeats → dramatic effect
- **Feedback:** Keep below 30% in live sound. **100% = infinite repeats (dangerous!)**

### Module 6 — System Tuning with Pink Noise

**Pink noise vs. White noise:**

- **White noise:** Equal energy per Hz → sounds increasingly bright
- **Pink noise:** Equal energy per octave → sounds balanced to the ear. **This is the standard for tuning**

**Procedure:**

1. Play pink noise through PA at moderate level
2. Place measurement mic at mix position (ear height)
3. Observe the RTA display
4. Use system EQ to cut peaks and (sparingly) boost dips
5. **Broad, gentle corrections only** — 3–6 dB maximum
6. Always cut more than you boost
7. Verify with familiar reference tracks

**If you need >6 dB of correction, the problem is physical** (speaker placement, room mode, comb filtering) — not equalizable.

### Module 6 — Key Takeaways

1. **Cut before you boost** — sweep with narrow boost to find problems, then cut
2. **Compression controls dynamics** — threshold/ratio for peaks, attack for transients, release for musical timing
3. **Reverb should be subtle** — start low, use pre-delay for intelligibility
4. **Gates clean up drum bleed** — threshold just above bleed, fast attack, moderate hold/release
5. **Pink noise = equal energy per octave** — the standard for system tuning
6. **System EQ is for broad corrections only** — >6 dB means the problem is physical


# MODULE 7
## Stage Monitors vs. PA Speakers

### Module 7 — PA Speakers: Line Arrays vs. Point-Source

**Line Arrays** (medium-large venues)

- Column of speaker elements flown or ground-stacked
- Controlled vertical dispersion → less energy wasted on ceilings/floors
- More consistent SPL from front to back
- Splay angles determine coverage pattern

**Point-Source Speakers** (small venues, fills)

- Single cabinet radiating from one point
- Fixed dispersion pattern (e.g., 90° × 60°)
- Used for: front fills, delay fills, side fills, small venues
- Simpler setup but less scalable

### Module 7 — Bi-Amping, Tri-Amping & Subwoofers

**Amplification Modes:**

| Mode | Amp Channels | Configuration |
|---|---|---|
| **Single-amp** | 1 | Passive crossover inside speaker splits frequencies |
| **Bi-amp** | 2 | Active crossover → one amp for lows, one for highs |
| **Tri-amp** | 3 | Active crossover → separate amps for lows, mids, highs |

**Subwoofer Configurations:**

- **Stacked L/R:** Simple, but creates "power alley" and side cancellation
- **Center cluster:** Even bass coverage, requires more space
- **Cardioid array:** Directional — reduces bass behind subs (on stage)

### Module 7 — Stage Monitors (Wedges)

- Designed for **near-field listening** (3–10 ft distance)
- **Coaxial drivers:** HF driver mounted inside LF cone → point-source radiation
  - Sound doesn't change as musician moves off-axis
  - Critical on a crowded stage

**Monitor Mix Philosophy:**

1. Start with the musician's own voice/instrument (most important)
2. Add minimal other elements for pitch and timing reference
3. "More of everything" usually means they can't hear themselves → turn up their own voice first
4. **Less is more** on stage — lean mixes are clearer at lower volume

### Module 7 — Active vs. Passive Speakers

| | **Active** | **Passive** |
|---|---|---|
| **Amplifier** | Built-in, DSP-matched | External required |
| **Crossover** | DSP-controlled | Passive (internal) or active (external) |
| **Cabling** | Power + signal | Speakon from external amp |
| **Setup** | Simpler | More complex |
| **Failure mode** | Amp failure = dead speaker | Single amp failure ≠ total loss |
| **Weight** | Heavier per unit | Lighter speakers, heavy amp racks |

**Impedance matching (passive):**

- Two 8Ω speakers in parallel = **4Ω**
- Two 4Ω speakers in parallel = **2Ω**
- **Never** run an amp below its rated minimum impedance

### Module 7 — The Volume War

```
Singer can't hear  →  Monitor turned up  →  Wedge bleeds into mic
       ↑                                                    │
       │                                                    ▼
Musician asks ←  FOH turns up PA  ←  Vocal sounds muddy ←─┘
for more         (to overcome         at FOH
monitor          bleed)
```

**Solutions:**

- **Turn DOWN, don't turn up** — reduce everything by 3 dB first
- **Use directional microphones** — cardioid/hypercardioid
- **Position monitors in the null zone** — align with mic's rejection angle
- **Use IEMs** — eliminate stage volume entirely
- **Improve the monitor mix** — leaner mix = clearer at lower volume
- **Educate musicians** — a quieter stage benefits everyone

### Module 7 — Key Takeaways

1. **PA for audience; monitors for musicians** — different design priorities
2. **Line arrays control vertical dispersion** — focus sound on audience, not ceilings
3. **Monitor mixes should be lean** — own voice first, minimal other elements
4. **The volume war is a vicious cycle** — break it by reducing stage volume
5. **Active = built-in amps; Passive = external amps** — tradeoffs in setup, weight, reliability
6. **Never exceed amp's minimum impedance** — parallel speakers reduce impedance


# MODULE 8
## Feedback & Sources

### Module 8 — The Feedback Loop

Acoustic feedback: speaker → mic → mixer → amp → speaker (louder). Loop gain > 0 dB = sustained tone.

```
    ┌──────────────────────────────────────────────┐
    │               FEEDBACK LOOP                  │
    │                                              │
    │    Speaker ─────→ Air ─────→ Microphone      │
    │       ↑                          │           │
    │       │                          ↓           │
    │    Amplifier ←── Mixer ←── Preamp            │
    │                                              │
    └──────────────────────────────────────────────┘

    When the gain around this loop exceeds 1 (0 dB),
    the system feeds back at the resonant frequency.
```

**Gain Before Feedback (GBF)** = maximum volume before ringing. Every improvement to acoustics, mic placement, or speaker placement increases GBF.

### Module 8 — Polar Patterns & Null Zones

```
         Cardioid                    Hypercardioid
              Front                        Front
               │                            │
        ───────┼───────               ───────┼───────
       /       │        \             /       │        \
      /  Pickup Zone     \           /  Pickup Zone      \
     |       │ │         |         |       │ │          |
     |       │ │         |         |       │ │          |
      \     Null│        /           \ Null │ │ Null    /
       \    Zone│       /             \Zone │ │ Zone  /
        ───────┼───────               ──────┼─┼──────
               │││                          /││\
              Back                      (Slight pickup
                                         at 180°)
         Null at 180°              Nulls at ~125° and ~235°
```

- **Cardioid:** Place wedge directly in front → null at 180° (rear)
- **Hypercardioid:** Do NOT place wedge directly behind → slight lobe at 180°
- **Hypercardioid nulls:** ~125° and ~235° off-axis

### Module 8 — Inverse Square Law & Mic Technique

**Sound intensity decreases 6 dB for every doubling of distance**

| Distance from mic | Relative level | GBF impact |
|---|---|---|
| Lips on grille (0 in) | 0 dB (reference) | Maximum GBF |
| 1 inch | −6 dB | Lost 6 dB GBF |
| 6 inches | −12 dB | Lost 12 dB GBF |
| 12 inches | −18 dB | Lost 18 dB GBF |

**"Eat the mic"** = the single most effective feedback prevention technique

- 12 dB of free GBF just by moving from 6 inches to lips-on-grille
- No EQ, no speaker repositioning needed

### Module 8 — Number of Open Microphones (NOM)

**GBF decreases by 3 dB for every doubling of open microphones**

| Open Mics | GBF Loss |
|---|---|
| 1 | 0 dB |
| 2 | −3 dB |
| 4 | −6 dB |
| 8 | −9 dB |
| 16 | −12 dB |

**Implications:**

- Mute unused channels
- Use noise gates on drums
- Only unmute what's needed at any moment

### Module 8 — Ringing Out Monitors

**Procedure:**

1. Set up mic and wedge in performance positions
2. Slowly increase monitor send while speaking into mic
3. When system **rings** → stop
4. Identify the feedback frequency (RTA or trained ear)
5. Apply **narrow parametric cut** (Q 8–16, cut 3–6 dB)
6. Increase monitor send until next ring
7. Repeat for **3–5 frequencies maximum**
8. Stop when adequate volume achieved OR monitor sounds thin

**Critical rule:** If still feeding back after 4–5 cuts, the problem is **physical** — not equalizable. Move the monitor, change the mic, reduce stage volume, or switch to IEMs.

**Auto-feedback destroyers:** Useful as safety nets, but can mistake sustained notes for feedback. Not a substitute for proper technique.

### Module 8 — Key Takeaways

1. **Feedback = loop gain > 0 dB** — speaker → mic → mixer → amp → speaker
2. **"Eat the mic"** — every doubling of distance costs 6 dB of GBF
3. **Place monitors in the mic's null zone** — know your polar patterns
4. **Every open mic reduces GBF by 3 dB per doubling** — mute unused channels
5. **Ringing out: 3–5 narrow cuts maximum** — more = thin sound; problem is physical
6. **Auto-feedback destroyers are a safety net**, not a primary tool


# MODULE 9
## Practice, Multitracking & Drills

### Module 9 — Multitrack Recording & Virtual Soundcheck

**Multitrack** = recording each channel separately (kick, snare, vocal, etc.)

**Why?**

- **Virtual soundcheck:** Practice mixing without the band — unlimited time to experiment
- **Live recording:** High-quality captures for the band or release
- **Post-show analysis:** Diagnose problems masked during the show

**Setup methods:**

1. **Console USB/Firewire/AES67** → DAW (Reaper, Pro Tools, Logic)
2. **Dedicated hardware recorder** (Behringer SD8, Zoom LiveTrak)
3. **Multi-channel audio interface** from console direct outputs

### Module 9 — Virtual Soundcheck Procedure

1. Record a full soundcheck or performance (all channels)
2. Connect multitrack playback to console inputs
3. Switch console input source from stage box to playback
4. **Reset to flat:** All EQ flat, dynamics bypassed, faders at unity
5. Build mix from scratch: gains → HPF → EQ → compression → effects → balance
6. Compare your mix to the live mix — what did you do differently?
7. **Repeat regularly** to build muscle memory and ear training

> "Virtual soundcheck is the single fastest way to improve as a live sound engineer."

### Module 9 — Troubleshooting: The Golden Rule

**Follow the signal flow. The problem is at the FIRST point where signal fails to appear.**

```
Source → Cable → DI/Preamp → Channel Strip → Fader → Bus → Master → Processor → Amp → Speaker

    ←─── Check each point in this order ───→
```

**Drill 1: "Bass player can't hear themselves"**

1. Bass amp on? Bass plugged in? Volume up?
2. Channel unmuted? Preamp gain up? Meters showing signal?
3. Correct aux send up for their wedge?
4. Aux master up? Wedge powered? Speaker cable seated?

**Drill 2: "Massive hum on keyboard"**

1. Ground loop? → Engage DI ground lift
2. Swap DI box
3. Cable balanced? → Replace with known-good balanced cable
4. Keyboard power supply? → Try different circuit or isolation transformer

### Module 9 — Preventive Maintenance

- **Test every cable** with a cable tester before every show
- **Label every channel** — on a dark stage, you need to know what Ch 17 is instantly
- **Verify every connection** during line check
- **Carry spares:** cables, DI boxes, microphones, fuses
- **Have a backup plan** for critical components (spare wireless, backup console)

### Module 9 — Key Takeaways

1. **Virtual soundcheck is the best practice tool** — unlimited time to experiment without the band
2. **Follow the signal flow** — problem is at the first point where signal fails
3. **Systematic troubleshooting beats guessing** — source → cable → preamp → channel → fader → bus → output → amp → speaker
4. **Ground loops are the #1 cause of hum** — DI ground lift first, swap cables, then isolation transformer
5. **Preventive maintenance saves shows** — test cables, label channels, carry spares


# MODULE 10
## The Gig Workflow

### Module 10 — Load-In Sequence

**The order matters — a disorganized load-in = a rushed soundcheck**

1. **Survey the venue** — FOH position, stage dimensions, power locations, rigging points, obstacles
2. **Power first** — Run distro, verify power at every position before connecting audio
3. **Rig and fly the PA** — Requires clear space; must happen before stage setup
4. **Run snake/network cables** — Label both ends
5. **Set up the stage** — Monitors, mic stands, DIs, backline, AC power
6. **Cable everything** — Shortest cable that reaches; dress and tape at walkways

**Rigging safety:**

- Never fly PA without proper certification and hardware
- Always use safety cables on all flown objects
- Inspect all rigging hardware before every use
- Know weight limits — never exceed them
- When in doubt, ground-stack

### Module 10 — Line Check & Soundcheck

**Line Check** (5–10 min): Verify every channel passes signal

1. Channel 1 through last — tap each mic / play each instrument
2. Verify correct channel meters, signal level, and label
3. Check each aux send at correct wedge/IEM
4. Fix problems immediately

**Soundcheck** (30–60 min): Dial in tones and build mixes

**Order — Rhythm section first:**

1. **Drums:** Kick → Snare → Toms → Overheads
2. **Bass:** Check kick/bass relationship
3. **Guitars/Keys:** Add one at a time
4. **Vocals last:** Most feedback-sensitive, must sit on top of the mix

**Monitor mixes:** Start with musician's own voice/instrument, add minimally, use pre-fader aux

### Module 10 — The Show

**Mixing Philosophy:**

- **Serve the song** — quiet when it needs to be quiet, loud when it needs to be loud
- **Ride the faders** — a live mix is dynamic, not "set and forget"
- **Listen, don't look** — trust your ears, not the meters
- **Less is more** — if unsure whether to add something, don't
- **Manage dynamics** — compression for vocals/bass, master fader for overall energy

**Common situations:**

| Situation | Action |
|---|---|
| Feedback during show | Identify frequency, cut with EQ. If severe, pull fader immediately |
| Mic dies mid-song | Mute dead channel, unmute spare. Always have backup vocal mic |
| Band too loud on stage | Talk to bandleader at break. Explain the volume war |
| Room fills up, sound goes dull | Bodies absorb HF. Add 1–3 dB above 4 kHz to compensate |

### Module 10 — Strike / Load-Out

**Power-down sequence (Critical!):**

- **OFF:** Amplifiers FIRST → Processors → Mixer → Sources
- **ON:** Sources FIRST → Mixer → Processors → Amplifiers LAST

*Why?* Turn-on/off transients from mixer/processors blast through speakers if amps are on.

**Over-Under Cable Wrap:**

1. Hold connector in left hand
2. Grab cable ~18" away — natural twist → "over" loop
3. Reverse twist → "under" loop (alternating direction)
4. Continue alternating until fully coiled
5. Secure with velcro strap or cable tie

**Why?** Prevents twisting and kinking. Cable uncoils smoothly without knots — saves enormous time on next load-in.

### Module 10 — Key Takeaways

1. **Load-in order matters** — power → PA → snake → stage → cables
2. **Line check before soundcheck** — catches 90% of problems early
3. **Soundcheck rhythm section out** — drums → bass → guitars/keys → vocals last
4. **Amplifiers on last, off first** — prevents transients from damaging speakers
5. **Over-under cable wrapping** — extends cable life and saves time
6. **A live mix is dynamic** — ride faders, manage dynamics, listen to the room


# COURSE SUMMARY

### The 10 Commandments of Live Sound

1. **Audio needs dedicated power** — separate from everything else
2. **Star ground everything** — single power distro for all audio
3. **Gain sets SNR; faders set balance** — set gain to peak at −18 to −12 dBFS
4. **Pre-fader = monitors; Post-fader = effects** — non-negotiable
5. **Cut before you boost** — subtractive EQ is more transparent
6. **Follow the signal flow** — the problem is at the first point where signal fails
7. **Eat the mic** — proximity is the cheapest GBF improvement
8. **Less is more on stage** — lean monitor mixes, subtle reverb, minimal processing
9. **Amplifiers on last, off first** — protect your speakers
10. **A live mix is dynamic** — ride the faders, serve the song, listen to the room
