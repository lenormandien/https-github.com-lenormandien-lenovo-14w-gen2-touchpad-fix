/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Fri Mar 13 18:34:43 2026
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00009B6F (39791)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xB3
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "AMD"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180313 (538444563)
 */
DefinitionBlock ("", "DSDT", 1, "LENOVO", "AMD", 0x00001000)
{
    External (_PR_.C000, DeviceObj)
    External (_PR_.C000.PPCV, IntObj)
    External (_PR_.C001, DeviceObj)
    External (_PR_.C001.PPCV, IntObj)
    External (_PR_.C002, DeviceObj)
    External (_PR_.C002.PPCV, IntObj)
    External (_PR_.C003, DeviceObj)
    External (_PR_.C003.PPCV, IntObj)
    External (_PR_.POWS, UnknownObj)
    External (_SB_.ACAD.ACDC, IntObj)
    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (_SB_.APTS, MethodObj)    // 1 Arguments
    External (_SB_.AWAK, MethodObj)    // 1 Arguments
    External (_SB_.IETM, DeviceObj)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)
    External (_SB_.PCI0.GFX0.IUER, DeviceObj)
    External (_SB_.PCI0.GP17.VGA_.AFN4, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GP17.VGA_.AFN7, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC0.H_EC.ADP1.ACDC, IntObj)
    External (_SB_.PCI0.LPC0.H_EC.BKLI, IntObj)
    External (_SB_.PCI0.LPC0.H_EC.ECRD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC0.H_EC.ECWT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPC0.H_EC.PSD1, FieldUnitObj)
    External (_SB_.PCI0.LPC0.H_EC.PSKU, FieldUnitObj)
    External (_SB_.PCI0.LPC0.H_EC.TPTA, IntObj)
    External (_SB_.PCI0.LPC0.H_EC.TPTY, IntObj)
    External (_SB_.PCI0.LPC0.RTIP, UnknownObj)
    External (_SB_.PCI0.LPC0.UP1D, UnknownObj)
    External (_SB_.PCI0.M013, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.M017, MethodObj)    // 6 Arguments
    External (_SB_.PCI0.M019, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.M020, MethodObj)    // 5 Arguments
    External (_SB_.PCI0.M037, DeviceObj)
    External (_SB_.PCI0.M046, DeviceObj)
    External (_SB_.PCI0.M047, DeviceObj)
    External (_SB_.PCI0.M050, DeviceObj)
    External (_SB_.PCI0.M051, DeviceObj)
    External (_SB_.PCI0.M052, DeviceObj)
    External (_SB_.PCI0.M053, DeviceObj)
    External (_SB_.PCI0.M054, DeviceObj)
    External (_SB_.PCI0.M055, DeviceObj)
    External (_SB_.PCI0.M056, DeviceObj)
    External (_SB_.PCI0.M057, DeviceObj)
    External (_SB_.PCI0.M058, DeviceObj)
    External (_SB_.PCI0.M059, DeviceObj)
    External (_SB_.PCI0.M062, DeviceObj)
    External (_SB_.PCI0.M068, DeviceObj)
    External (_SB_.PCI0.M069, DeviceObj)
    External (_SB_.PCI0.M070, DeviceObj)
    External (_SB_.PCI0.M071, DeviceObj)
    External (_SB_.PCI0.M072, DeviceObj)
    External (_SB_.PCI0.M074, DeviceObj)
    External (_SB_.PCI0.M075, DeviceObj)
    External (_SB_.PCI0.M076, DeviceObj)
    External (_SB_.PCI0.M077, DeviceObj)
    External (_SB_.PCI0.M078, DeviceObj)
    External (_SB_.PCI0.M079, DeviceObj)
    External (_SB_.PCI0.M080, DeviceObj)
    External (_SB_.PCI0.M081, DeviceObj)
    External (_SB_.PCI0.M082, FieldUnitObj)
    External (_SB_.PCI0.M083, FieldUnitObj)
    External (_SB_.PCI0.M084, FieldUnitObj)
    External (_SB_.PCI0.M085, FieldUnitObj)
    External (_SB_.PCI0.M086, FieldUnitObj)
    External (_SB_.PCI0.M087, FieldUnitObj)
    External (_SB_.PCI0.M088, FieldUnitObj)
    External (_SB_.PCI0.M089, FieldUnitObj)
    External (_SB_.PCI0.M090, FieldUnitObj)
    External (_SB_.PCI0.M091, FieldUnitObj)
    External (_SB_.PCI0.M092, FieldUnitObj)
    External (_SB_.PCI0.M093, FieldUnitObj)
    External (_SB_.PCI0.M094, FieldUnitObj)
    External (_SB_.PCI0.M095, FieldUnitObj)
    External (_SB_.PCI0.M096, FieldUnitObj)
    External (_SB_.PCI0.M097, FieldUnitObj)
    External (_SB_.PCI0.M098, FieldUnitObj)
    External (_SB_.PCI0.M099, FieldUnitObj)
    External (_SB_.PCI0.M100, FieldUnitObj)
    External (_SB_.PCI0.M101, FieldUnitObj)
    External (_SB_.PCI0.M102, FieldUnitObj)
    External (_SB_.PCI0.M103, FieldUnitObj)
    External (_SB_.PCI0.M104, FieldUnitObj)
    External (_SB_.PCI0.M105, FieldUnitObj)
    External (_SB_.PCI0.M106, FieldUnitObj)
    External (_SB_.PCI0.M107, FieldUnitObj)
    External (_SB_.PCI0.M108, FieldUnitObj)
    External (_SB_.PCI0.M109, FieldUnitObj)
    External (_SB_.PCI0.M110, FieldUnitObj)
    External (_SB_.PCI0.M115, BuffObj)
    External (_SB_.PCI0.M116, BuffFieldObj)
    External (_SB_.PCI0.M117, BuffFieldObj)
    External (_SB_.PCI0.M118, BuffFieldObj)
    External (_SB_.PCI0.M119, BuffFieldObj)
    External (_SB_.PCI0.M120, BuffFieldObj)
    External (_SB_.PCI0.M122, FieldUnitObj)
    External (_SB_.PCI0.M127, DeviceObj)
    External (_SB_.PCI0.M128, FieldUnitObj)
    External (_SB_.PCI0.M131, FieldUnitObj)
    External (_SB_.PCI0.M132, FieldUnitObj)
    External (_SB_.PCI0.M133, FieldUnitObj)
    External (_SB_.PCI0.M134, FieldUnitObj)
    External (_SB_.PCI0.M135, FieldUnitObj)
    External (_SB_.PCI0.M136, FieldUnitObj)
    External (_SB_.PCI0.M220, FieldUnitObj)
    External (_SB_.PCI0.M221, FieldUnitObj)
    External (_SB_.PCI0.M226, FieldUnitObj)
    External (_SB_.PCI0.M227, DeviceObj)
    External (_SB_.PCI0.M229, FieldUnitObj)
    External (_SB_.PCI0.M231, FieldUnitObj)
    External (_SB_.PCI0.M233, FieldUnitObj)
    External (_SB_.PCI0.M235, FieldUnitObj)
    External (_SB_.PCI0.M251, FieldUnitObj)
    External (_SB_.PCI0.M280, FieldUnitObj)
    External (_SB_.PCI0.M290, FieldUnitObj)
    External (_SB_.PCI0.M310, FieldUnitObj)
    External (_SB_.PCI0.M320, FieldUnitObj)
    External (_SB_.PCI0.M321, FieldUnitObj)
    External (_SB_.PCI0.M322, FieldUnitObj)
    External (_SB_.PCI0.M323, FieldUnitObj)
    External (_SB_.PCI0.M324, FieldUnitObj)
    External (_SB_.PCI0.M325, FieldUnitObj)
    External (_SB_.PCI0.M326, FieldUnitObj)
    External (_SB_.PCI0.M327, FieldUnitObj)
    External (_SB_.PCI0.M328, FieldUnitObj)
    External (_SB_.PCI0.M329, DeviceObj)
    External (_SB_.PCI0.M330, DeviceObj)
    External (_SB_.PCI0.M378, FieldUnitObj)
    External (_SB_.PCI0.M379, FieldUnitObj)
    External (_SB_.PCI0.M380, FieldUnitObj)
    External (_SB_.PCI0.M381, FieldUnitObj)
    External (_SB_.PCI0.M382, FieldUnitObj)
    External (_SB_.PCI0.M383, FieldUnitObj)
    External (_SB_.PCI0.M384, FieldUnitObj)
    External (_SB_.PCI0.M385, FieldUnitObj)
    External (_SB_.PCI0.M386, FieldUnitObj)
    External (_SB_.PCI0.M387, FieldUnitObj)
    External (_SB_.PCI0.M388, FieldUnitObj)
    External (_SB_.PCI0.M389, FieldUnitObj)
    External (_SB_.PCI0.M390, FieldUnitObj)
    External (_SB_.PCI0.M391, FieldUnitObj)
    External (_SB_.PCI0.M392, FieldUnitObj)
    External (_SB_.PCI0.M404, DeviceObj)
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments
    External (_TZ_.TZ01, ThermalZoneObj)
    External (M083, IntObj)
    External (MWAK, MethodObj)    // 1 Arguments
    External (ODV0, IntObj)

    OperationRegion (SYST, SystemMemory, 0xCE3ADF98, 0x00000001)
    Field (SYST, AnyAcc, Lock, Preserve)
    {
        RV2,    8
    }

    Name (WOLD, "_S5WOL_#0117EF00000000#")
    Scope (_PR)
    {
        Processor (C000, 0x00, 0x00000410, 0x06){}
        Processor (C001, 0x01, 0x00000410, 0x06){}
        Processor (C002, 0x02, 0x00000410, 0x06){}
        Processor (C003, 0x03, 0x00000410, 0x06){}
        Processor (C004, 0x04, 0x00000410, 0x06){}
        Processor (C005, 0x05, 0x00000410, 0x06){}
        Processor (C006, 0x06, 0x00000410, 0x06){}
        Processor (C007, 0x07, 0x00000410, 0x06){}
    }

    Name (TZFG, 0x00)
    OperationRegion (DBG0, SystemIO, 0x80, 0x01)
    Field (DBG0, ByteAcc, NoLock, Preserve)
    {
        IO80,   8
    }

    OperationRegion (EC01, SystemIO, 0x0666, One)
    Field (EC01, ByteAcc, NoLock, Preserve)
    {
        E666,   8
    }

    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    OperationRegion (PSMI, SystemIO, 0xB0, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Method (TPST, 1, Serialized)
    {
        Local0 = (Arg0 + 0xB0000000)
        OperationRegion (VARM, SystemIO, 0x80, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        VARR = Local0
    }

    OperationRegion (P01, SystemIO, 0x0401, 0x01)
    Field (P01, ByteAcc, NoLock, Preserve)
    {
        PST1,   8
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        PRWP [One] = Arg1
        If ((DAS3 == Zero))
        {
            If ((Arg1 <= 0x03))
            {
                PRWP [One] = Zero
            }
        }

        Return (PRWP) /* \PRWP */
    }

    OperationRegion (ECMM, SystemMemory, 0xFEEC2000, 0x0100)
    Field (ECMM, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA3), 
        EMA3,   8, 
        Offset (0xEE), 
        EMEE,   8
    }

    OperationRegion (GNVS, SystemMemory, 0xCE4F9C98, 0x0000000B)
    Field (GNVS, AnyAcc, NoLock, Preserve)
    {
        BRTL,   8, 
        IGDS,   8, 
        CSTE,   16, 
        BVAL,   32, 
        CNSB,   8, 
        DAS3,   8, 
        WKPM,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xCE3ADE98, 0x00000008)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        M2WL,   8, 
        THPN,   8, 
        PBAR,   8, 
        THPD,   8, 
        SDMO,   8, 
        TBEN,   8, 
        TBNH,   8, 
        RV2I,   8
    }

    OperationRegion (PNVS, SystemMemory, 0xCE3ADF18, 0x00000002)
    Field (PNVS, AnyAcc, NoLock, Preserve)
    {
        HDSI,   8, 
        HDSO,   8
    }

    Name (LINX, 0x00)
    Name (OSSP, 0x00)
    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = 0x00
                TPOS = 0x00
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSSP = 0x01
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = 0x01
                    OSTB = 0x50
                    TPOS = 0x50
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = 0x01
                    OSTB = 0x60
                    TPOS = 0x60
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = 0x01
                    OSTB = 0x61
                    TPOS = 0x61
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = 0x01
                    OSTB = 0x70
                    TPOS = 0x70
                }

                If (_OSI ("Linux"))
                {
                    LINX = 0x01
                    OSTB = 0x80
                    TPOS = 0x80
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    OSTB = 0x01
                    TPOS = 0x01
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTB = 0x02
                    TPOS = 0x02
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    OSTB = 0x04
                    TPOS = 0x04
                }
                Else
                {
                    OSTB = 0x00
                    TPOS = 0x00
                }
            }
            Else
            {
                OSTB = 0x00
                TPOS = 0x00
            }

            If ((TPOS == 0x80)){}
        }

        Return (OSTB) /* \OSTB */
    }

    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0){})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        0x03, 
        0x00, 
        0x00
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        0x04, 
        0x00, 
        0x00
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If ((Arg0 == 0x05)){}
        If ((Arg0 == 0x04)){}
        If ((Arg0 == 0x03))
        {
            \_SB.PCI0.SMB.RSTU = Zero
        }

        \_SB.PCI0.SMB.CLPS = 0x01
        \_SB.PCI0.SMB.SLPS = 0x01
        \_SB.PCI0.SMB.PEWS = \_SB.PCI0.SMB.PEWS
        \_SB.APTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If ((Arg0 == 0x03))
        {
            \_SB.PCI0.SMB.RSTU = One
        }

        \_SB.PCI0.SMB.PEWS = \_SB.PCI0.SMB.PEWS
        \_SB.PCI0.SMB.PWDE = 0x01
        \_SB.PCI0.SMB.PEWD = Zero
        \_SB.AWAK (Arg0)
        If ((Arg0 == 0x03))
        {
            If (GPIC)
            {
                \_SB.PCI0.LPC0.DSPI ()
            }

            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            If (GPIC)
            {
                \_SB.PCI0.LPC0.DSPI ()
            }

            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        \_SB.PCI0.LPC0.H_EC.ADP1.ACDC = 0xFF
        MWAK (Arg0)
        Notify (\_SB.PCI0, 0x00) // Bus Check
        \_SB.PCI0.LPC0.H_EC.BKLI = 0x01
        E666 = 0x82
        Return (Zero)
    }

    Scope (_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If ((Arg0 == 0x01))
            {
                Debug = "===== SST Working ====="
            }

            If ((Arg0 == 0x02))
            {
                Debug = "===== SST Waking ====="
            }

            If ((Arg0 == 0x03))
            {
                Debug = "===== SST Sleeping ====="
            }

            If ((Arg0 == 0x04))
            {
                Debug = "===== SST Sleeping S4 ====="
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        If (Arg0)
        {
            \_SB.PCI0.LPC0.DSPI ()
        }
    }

    Scope (_SB)
    {
        Mutex (MSGF, 0x00)
        Scope (\_SB)
        {
            Device (DMIC)
            {
                Name (_HID, "DMIC0001")  // _HID: Hardware ID
                Name (_UID, "BTLD")  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((V089 == 0x00))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (0x00)
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("7790c86f-4ec3-4c09-ba2a-f9f7720f9816") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Return (Buffer (0x01)
                                {
                                     0x0F                                             // .
                                })
                            }
                            Case (0x01)
                            {
                                Return (O086) /* \_SB_.O086 */
                            }
                            Case (0x02)
                            {
                                O086 = 0x00
                                Return (O086) /* \_SB_.O086 */
                            }
                            Case (0x03)
                            {
                                O086 = 0x01
                                Return (O086) /* \_SB_.O086 */
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((GPIC != Zero))
                {
                    ^LPC0.DSPI ()
                }

                OSTP ()
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If ((TBEN == One))
                    {
                        If ((TBNH != Zero))
                        {
                            CTRL &= 0xFFFFFFF5
                        }
                        Else
                        {
                            CTRL &= 0xFFFFFFF4
                        }
                    }

                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & 0x01))
                    {
                        If ((CTRL & 0x01)){}
                        If ((CTRL & 0x04)){}
                        If ((CTRL & 0x10)){}
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            OperationRegion (K8ST, SystemMemory, 0xCE4F9B98, 0x00000068)
            Field (K8ST, AnyAcc, NoLock, Preserve)
            {
                C0_0,   16, 
                C2_0,   16, 
                C4_0,   16, 
                C6_0,   16, 
                C8_0,   16, 
                CA_0,   16, 
                CC_0,   16, 
                CE_0,   16, 
                D0_0,   16, 
                D2_0,   16, 
                D4_0,   16, 
                D6_0,   16, 
                D8_0,   16, 
                DA_0,   16, 
                DC_0,   16, 
                DE_0,   16, 
                E0_0,   16, 
                E2_0,   16, 
                E4_0,   16, 
                E6_0,   16, 
                E8_0,   16, 
                EA_0,   16, 
                EC_0,   16, 
                EE_0,   16, 
                F0_0,   16, 
                F2_0,   16, 
                F4_0,   16, 
                F6_0,   16, 
                F8_0,   16, 
                FA_0,   16, 
                FC_0,   16, 
                FE_0,   16, 
                TOML,   32, 
                TOMH,   32, 
                PCIB,   32, 
                PCIS,   32, 
                T1MN,   64, 
                T1MX,   64, 
                T1LN,   64
            }

            Name (RSRC, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, SubDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C2000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C6000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000C9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CA000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CE000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D2000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D6000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000D9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DA000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DE000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E2000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E6000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000E9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EA000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EE000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC000000,         // Range Minimum
                    0xFDFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02000000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MIN, BT1S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MAX, BT1M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y00._LEN, BT1L)  // _LEN: Length
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MIN, BT2S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MAX, BT2M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y01._LEN, BT2L)  // _LEN: Length
                Local0 = PCIB /* \_SB_.PCI0.PCIB */
                BT1S = TOML /* \_SB_.PCI0.TOML */
                BT1M = (Local0 - 0x01)
                BT1L = (Local0 - TOML) /* \_SB_.PCI0.TOML */
                CreateQWordField (RSRC, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateQWordField (RSRC, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateQWordField (RSRC, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                M1MN = T1MN /* \_SB_.PCI0.T1MN */
                M1MX = T1MX /* \_SB_.PCI0.T1MX */
                M1LN = T1LN /* \_SB_.PCI0.T1LN */
                Return (RSRC) /* \_SB_.PCI0.RSRC */
            }

            Device (MEMR)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (MEM1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0F50,             // Range Minimum
                        0x0F50,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y03)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y04)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y05)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._BAS, MB01)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._LEN, ML01)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._BAS, MB02)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._LEN, ML02)  // _LEN: Length
                    If (GPIC)
                    {
                        MB01 = 0xFEC00000
                        MB02 = 0xFEE00000
                        ML01 = 0x2000
                        ML02 = 0x1000
                    }

                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._BAS, MB03)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._LEN, ML03)  // _LEN: Length
                    MB03 = PCIB /* \_SB_.PCI0.PCIB */
                    ML03 = PCIS /* \_SB_.PCI0.PCIS */
                    Return (MEM1) /* \_SB_.PCI0.MEMR.MEM1 */
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (Package (0x0A)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            0x00, 
                            0x28
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            0x00, 
                            0x29
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            0x00, 
                            0x2A
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x03, 
                            0x00, 
                            0x2B
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x00, 
                            0x00, 
                            0x2B
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x01, 
                            0x00, 
                            0x24
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            0x00, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            0x00, 
                            0x13
                        }
                    })
                }
                Else
                {
                    Return (Package (0x0A)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x03, 
                            ^LPC0.LNKD, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x00, 
                            ^LPC0.LNKD, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x01, 
                            ^LPC0.LNKE, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            ^LPC0.LNKD, 
                            0x00
                        }
                    })
                }
            }

            OperationRegion (BAR1, PCI_Config, 0x14, 0x04)
            Field (BAR1, ByteAcc, NoLock, Preserve)
            {
                NBBA,   32
            }

            Method (M017, 6, Serialized)
            {
                Local0 = M083 /* External reference */
                Local1 = (M083 >> 0x14)
                Local2 = (Local1 & 0x0F00)
                Local2 += 0x0100
                If (((Local1 + Arg0) >= Local2))
                {
                    Local3 = 0x7FFFFFFF
                    Local3 |= 0x80000000
                    Local4 = ((Local3 >> Arg4) & (Local3 >> (0x20 - Arg5)
                        ))
                    Return (Local4)
                }

                Local0 += (Arg0 << 0x14)
                Local0 += (Arg1 << 0x0F)
                Local0 += (Arg2 << 0x0C)
                Return (M013 (Local0, Arg3, Arg4, Arg5))
            }

            Method (WMEM, 5, Serialized)
            {
                Local0 = (Arg0 + Arg1)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Local1 = VARR /* \_SB_.PCI0.WMEM.VARR */
                Local5 = 0x7FFFFFFF
                Local5 |= 0x80000000
                Local2 = (Arg2 + Arg3)
                Local2 = (0x20 - Local2)
                Local2 = (((Local5 << Local2) & Local5) >> Local2)
                Local2 = ((Local2 >> Arg2) << Arg2)
                Local3 = (Arg4 << Arg2)
                Local4 = ((Local1 & (Local5 ^ Local2)) | Local3)
                VARR = Local4
            }

            Method (WFIO, 2, Serialized)
            {
                Local0 = (Arg0 << 0x02)
                WMEM (0xFED81500, Local0, 0x16, 0x01, Arg1)
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x18
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x19
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x1A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x1B
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x1C
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x1D
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x1E
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x1F
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DEV1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Method (QWRD, 0, Serialized)
                    {
                        Name (QWRY, Package (0x07)
                        {
                            0x02, 
                            0x01, 
                            0x24, 
                            0x1E, 
                            0x1E, 
                            0x1E, 
                            0x1E
                        })
                        Return (QWRY) /* \_SB_.PCI0.GPP1.DEV1.QWRD.QWRY */
                    }
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x20
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x21
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x22
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x23
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((M2WL == One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00010004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x24
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x25
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x26
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x27
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00010005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x28
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x29
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2B
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00010006)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x2C
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x2D
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2E
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2F
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00010007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x30
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x31
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x32
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x33
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }
            }

            Device (GP17)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x19, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x19, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x34
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x35
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x36
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x37
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x07)
                        {
                            0x00010110, 
                            0x00010210, 
                            0x00010220, 
                            0x00010230, 
                            0x00010240, 
                            0x00031000, 
                            0x00032000
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x66)
                        {
                            0x5A, 
                            0x3C, 
                            0x01, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GP17.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                            AFN7 (Local0)
                            BRTL = Arg0
                        }
                    }
                }

                Device (PSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (ACP)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        Return (0x00)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x03))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (GPLF, 0, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x24, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // $.......
                                }
                            })
                            Return (PCKG) /* \_SB_.PCI0.GP17.XHC0.RHUB.GPLF.PCKG */
                        }

                        Method (GPLR, 0, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x2C, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ,.......
                                }
                            })
                            Return (PCKG) /* \_SB_.PCI0.GP17.XHC0.RHUB.GPLR.PCKG */
                        }

                        Method (GUPC, 2, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            PCKG [0x00] = Arg0
                            PCKG [0x01] = Arg1
                            Return (PCKG) /* \_SB_.PCI0.GP17.XHC0.RHUB.GUPC.PCKG */
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape              = "OVAL",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x1,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "RIGHT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "HORIZONTALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x2,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "RIGHT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "HORIZONTALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x5,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (0xFF, 0xFF))
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x14)
                                    {
                                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                    }
                                })
                                Return (PLDP) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT4._PLD.PLDP */
                            }

                            Device (RCAM)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (GUPC (0xFF, 0xFF))
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLR ())
                                }
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (UPC2, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC2) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT5.UPC2 */
                            }

                            Name (PLD2, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x58, 0x1E, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   // X.......
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD2) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT5.PLD2 */
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (0xFF, 0xFF))
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x14)
                                    {
                                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                    }
                                })
                                Return (PLDP) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT6._PLD.PLDP */
                            }

                            Device (FCAM)
                            {
                                Name (_ADR, 0x06)  // _ADR: Address
                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (GUPC (0xFF, 0xFF))
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLF ())
                                }
                            }
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape              = "OVAL",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x1,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRT8)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x03, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "RIGHT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "HORIZONTALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x2,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRT9)
                        {
                            Name (_ADR, 0x09)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x03, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "RIGHT",
                                    PLD_VerticalPosition   = "CENTER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "HORIZONTALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x5,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0)

                            })
                        }

                        Device (PRTA)
                        {
                            Name (_ADR, 0x0A)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0x00, 
                                0x00, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "LOWER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape              = "UNKNOWN",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x4,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x1,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }
                    }
                }

                Device (XHC1)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x03))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x00)
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "VERTICALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x5,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x1,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x0,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "VERTICALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x6,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x1,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                            Name (UPC2, Package (0x04)
                            {
                                Zero, 
                                0x03, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT3.UPC1 */
                            }

                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x1,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x0,
                                    PLD_Panel              = "LEFT",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "LEFT",
                                    PLD_Shape              = "VERTICALRECTANGLE",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x5,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x1,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }
                    }
                }

                Device (MP2C)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x00)
                    }
                }
            }

            Device (GP18)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x36
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x37
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x34
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x35
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKH, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKF, 
                                0x00
                            }
                        })
                    }
                }

                Device (SATA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Scope (GPP1)
            {
                Method (RHRS, 0, NotSerialized)
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x00AC
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.GPP1.RHRS.RBUF */
                }

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                    OperationRegion (CMIO, SystemIO, 0x72, 0x02)
                    Field (CMIO, ByteAcc, Lock, Preserve)
                    {
                        CINX,   8, 
                        CDAT,   8
                    }

                    IndexField (CINX, CDAT, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        MTKS,   8
                    }

                    Method (MTDS, 0, Serialized)
                    {
                        Name (MSA0, Package (0x02)
                        {
                            0x00, 
                            0x00
                        })
                        Name (MSA1, Package (0x12)
                        {
                            0x4D, 
                            0x54, 
                            0x44, 
                            0x53, 
                            0x01, 
                            0x02, 
                            0x01, 
                            0x19, 
                            0x17, 
                            0x1D, 
                            0x15, 
                            0x1D, 
                            0x02, 
                            0x19, 
                            0x17, 
                            0x1D, 
                            0x15, 
                            0x1D
                        })
                        If ((MTKS == 0x01))
                        {
                            Return (MSA1) /* \_SB_.PCI0.GPP1.WLAN.MTDS.MSA1 */
                        }
                        Else
                        {
                            Return (MSA0) /* \_SB_.PCI0.GPP1.WLAN.MTDS.MSA0 */
                        }
                    }

                    OperationRegion (FLDR, PCI_Config, 0x00, 0xFF)
                    Field (FLDR, ByteAcc, NoLock, Preserve)
                    {
                        MTVD,   16, 
                        MTDD,   16, 
                        Offset (0x84), 
                        DCAP,   32, 
                        DCTR,   16
                    }

                    Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
                    {
                        PWFR
                    })
                    PowerResource (PWFR, 0x00, 0x0000)
                    {
                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((MTVD == 0x14C3))
                            {
                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PCI0.GPP1.WLAN.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((MTKS == 0xFF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }
            }

            Scope (GPP1.DEV0)
            {
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            }

            Scope (GPP2)
            {
                Method (RHRS, 0, NotSerialized)
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x00AC
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.GPP2.RHRS.RBUF */
                }
            }

            Scope (GPP2.DEV0)
            {
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            }

            Method (PXCR, 3, Serialized)
            {
                Local0 = Zero
                Local1 = M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08)
                While ((Local1 != Zero))
                {
                    Local2 = M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08)
                    If (((Local2 == Zero) || (Local2 == 0xFF)))
                    {
                        Break
                    }

                    If ((Local2 == 0x10))
                    {
                        Local0 = Local1
                        Break
                    }

                    Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero, 0x08)
                }

                Return (Local0)
            }

            Scope (\_SB)
            {
                OperationRegion (PM80, SystemMemory, 0xFED80590, 0x10)
                Field (PM80, AnyAcc, NoLock, Preserve)
                {
                    SI3R,   1
                }

                Name (NBRI, Zero)
                Name (NBAR, Zero)
                Name (NCMD, Zero)
                Name (PXDC, Zero)
                Name (PXLC, Zero)
                Name (PXD2, Zero)
            }

            Scope (GPP4)
            {
                PowerResource (P0NV, 0x00, 0x0000)
                {
                    Name (D0NV, One)
                    Name (SLPS, 0x01)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (D0NV) /* \_SB_.PCI0.GPP4.P0NV.D0NV */
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If ((SI3R && Zero))
                        {
                            Local1 = PXCR (NBRI, Zero, Zero)
                            M020 (NBRI, Zero, Zero, (Local1 + 0x08), PXDC)
                            M020 (NBRI, Zero, Zero, (Local1 + 0x10), (PXLC & 0xFFFFFEFC))
                            M020 (NBRI, Zero, Zero, (Local1 + 0x28), PXD2)
                            M020 (NBRI, Zero, Zero, 0x10, NBAR)
                            M020 (NBRI, Zero, Zero, 0x04, (NCMD | 0x06))
                            APMC = HDSI /* \HDSI */
                            SI3R = Zero
                        }

                        D0NV = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        Local0 = M019 (Zero, One, 0x05, 0x18)
                        NBRI = ((Local0 & 0xFF00) >> 0x08)
                        NCMD = M019 (NBRI, Zero, Zero, 0x04)
                        NBAR = M019 (NBRI, Zero, Zero, 0x10)
                        Local1 = PXCR (NBRI, Zero, Zero)
                        PXDC = M019 (NBRI, Zero, Zero, (Local1 + 0x08))
                        PXLC = M019 (NBRI, Zero, Zero, (Local1 + 0x10))
                        PXD2 = M019 (NBRI, Zero, Zero, (Local1 + 0x28))
                        D0NV = Zero
                    }
                }

                Device (NVME)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        P0NV
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        P0NV
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        P0NV
                    })
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                    {
                        ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "StorageD3Enable", 
                                One
                            }
                        }
                    })
                }
            }

            Device (SMB)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (SBRV, PCI_Config, 0x08, 0x0100)
                Field (SBRV, AnyAcc, NoLock, Preserve)
                {
                    RVID,   8, 
                    Offset (0x5A), 
                    I1F,    1, 
                    I12F,   1, 
                    Offset (0x7A), 
                        ,   2, 
                    G31O,   1, 
                    Offset (0xD9), 
                        ,   6, 
                    ACIR,   1
                }

                OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
                Field (PMIO, ByteAcc, NoLock, Preserve)
                {
                    INPM,   8, 
                    DAPM,   8
                }

                IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
                {
                        ,   6, 
                    HPEN,   1, 
                    Offset (0x60), 
                    P1EB,   16, 
                    Offset (0xF0), 
                        ,   3, 
                    RSTU,   1
                }

                OperationRegion (ERMG, SystemMemory, 0xFED81500, 0x03FF)
                Field (ERMG, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x1A), 
                    GE10,   1, 
                    Offset (0x1C), 
                    Offset (0x1E), 
                    GE11,   1, 
                    Offset (0x40), 
                    Offset (0x42), 
                    GE12,   1, 
                    Offset (0x46), 
                    GS17,   1, 
                        ,   5, 
                    GV17,   1, 
                    GE17,   1, 
                    Offset (0x108), 
                    Offset (0x10A), 
                    P33I,   1, 
                    Offset (0x10C), 
                    Offset (0x10E), 
                    P37I,   1, 
                    Offset (0x118), 
                    Offset (0x11A), 
                    P3BI,   1, 
                    Offset (0x11C), 
                    Offset (0x11E), 
                    P40I,   1
                }

                OperationRegion (ERMM, SystemMemory, 0xFED80000, 0x1000)
                Field (ERMM, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x200), 
                        ,   1, 
                    E01S,   1, 
                        ,   3, 
                    E05S,   1, 
                        ,   9, 
                    E15S,   1, 
                    E16S,   1, 
                        ,   5, 
                    E22S,   1, 
                    Offset (0x204), 
                        ,   1, 
                    E01E,   1, 
                        ,   3, 
                    E05E,   1, 
                        ,   9, 
                    E15E,   1, 
                    E16E,   1, 
                        ,   5, 
                    E22E,   1, 
                    Offset (0x208), 
                        ,   1, 
                    E01C,   1, 
                        ,   3, 
                    E05C,   1, 
                        ,   4, 
                    E10C,   1, 
                        ,   4, 
                    E15C,   1, 
                    E16C,   1, 
                        ,   4, 
                    E21C,   1, 
                    E22C,   1, 
                        ,   3, 
                    E26C,   1, 
                    Offset (0x20C), 
                        ,   1, 
                    E01L,   1, 
                        ,   3, 
                    E05L,   1, 
                        ,   9, 
                    E15L,   1, 
                    E16L,   1, 
                        ,   5, 
                    E22L,   1, 
                    Offset (0x288), 
                        ,   1, 
                    CLPS,   1, 
                    Offset (0x299), 
                        ,   7, 
                    G15A,   1, 
                    Offset (0x2AC), 
                        ,   6, 
                    SRBT,   2, 
                    Offset (0x2B0), 
                        ,   2, 
                    SLPS,   2, 
                    Offset (0x2B2), 
                        ,   4, 
                    SPBT,   2, 
                    Offset (0x362), 
                        ,   6, 
                    MT3A,   1, 
                    Offset (0x377), 
                    EPNM,   1, 
                    DPPF,   1, 
                    Offset (0x3BB), 
                        ,   6, 
                    PWDE,   1, 
                    Offset (0x3BE), 
                        ,   5, 
                    ALLS,   1, 
                    Offset (0x3C8), 
                        ,   2, 
                    TFTE,   1, 
                    Offset (0x3DF), 
                    BLNK,   2, 
                    Offset (0x3F0), 
                    PHYD,   1, 
                        ,   1, 
                        ,   1, 
                    US5R,   1, 
                    Offset (0x400), 
                    F0CT,   8, 
                    F0MS,   8, 
                    F0FQ,   8, 
                    F0LD,   8, 
                    F0MD,   8, 
                    F0MP,   8, 
                    LT0L,   8, 
                    LT0H,   8, 
                    MT0L,   8, 
                    MT0H,   8, 
                    HT0L,   8, 
                    HT0H,   8, 
                    LRG0,   8, 
                    LHC0,   8, 
                    Offset (0x410), 
                    F1CT,   8, 
                    F1MS,   8, 
                    F1FQ,   8, 
                    F1LD,   8, 
                    F1MD,   8, 
                    F1MP,   8, 
                    LT1L,   8, 
                    LT1H,   8, 
                    MT1L,   8, 
                    MT1H,   8, 
                    HT1L,   8, 
                    HT1H,   8, 
                    LRG1,   8, 
                    LHC1,   8, 
                    Offset (0x420), 
                    F2CT,   8, 
                    F2MS,   8, 
                    F2FQ,   8, 
                    F2LD,   8, 
                    F2MD,   8, 
                    F2MP,   8, 
                    LT2L,   8, 
                    LT2H,   8, 
                    MT2L,   8, 
                    MT2H,   8, 
                    HT2L,   8, 
                    HT2H,   8, 
                    LRG2,   8, 
                    LHC2,   8, 
                    Offset (0x430), 
                    F3CT,   8, 
                    F3MS,   8, 
                    F3FQ,   8, 
                    F3LD,   8, 
                    F3MD,   8, 
                    F3MP,   8, 
                    LT3L,   8, 
                    LT3H,   8, 
                    MT3L,   8, 
                    MT3H,   8, 
                    HT3L,   8, 
                    HT3H,   8, 
                    LRG3,   8, 
                    LHC3,   8, 
                    Offset (0x700), 
                    SEC,    8, 
                    Offset (0x702), 
                    MIN,    8, 
                    Offset (0xD01), 
                    MX01,   8, 
                    Offset (0xD07), 
                    MX07,   8, 
                    Offset (0xD0E), 
                    MX14,   8, 
                    MX15,   8, 
                    MX16,   8, 
                    Offset (0xD15), 
                    MX21,   8, 
                    MX22,   8, 
                    MX23,   8, 
                    Offset (0xD1B), 
                    MX27,   8, 
                    MX28,   8, 
                    Offset (0xD20), 
                    MX32,   8, 
                    MX33,   8, 
                    MX34,   8, 
                    Offset (0xD29), 
                    MX41,   8, 
                    Offset (0xD2C), 
                    MX44,   8, 
                    Offset (0xD33), 
                    MX51,   8, 
                    Offset (0xD35), 
                    MX53,   8, 
                    Offset (0xD39), 
                    MX57,   8, 
                    MX58,   8, 
                    MX59,   8, 
                    Offset (0xD42), 
                    MX66,   8, 
                    Offset (0xD66), 
                    M102,   8, 
                    Offset (0xD6C), 
                    M108,   8, 
                    Offset (0xDAA), 
                    M170,   8, 
                    Offset (0xDAF), 
                    M175,   8, 
                    M176,   8, 
                    Offset (0xDB4), 
                    M180,   8, 
                    M181,   8, 
                    M182,   8, 
                    Offset (0xDC5), 
                    M197,   8, 
                    Offset (0xDC7), 
                    M199,   8, 
                    M200,   8, 
                    Offset (0xE00), 
                    MS00,   8, 
                    MS01,   8, 
                    MS02,   8, 
                    MS03,   8, 
                    MS04,   8, 
                    Offset (0xE40), 
                    MS40,   8, 
                    Offset (0xE81), 
                        ,   2, 
                    ECES,   1
                }

                OperationRegion (P1E0, SystemIO, P1EB, 0x04)
                Field (P1E0, ByteAcc, NoLock, Preserve)
                {
                        ,   14, 
                    PEWS,   1, 
                    WSTA,   1, 
                        ,   14, 
                    PEWD,   1
                }

                Method (TRMD, 0, NotSerialized)
                {
                    TFTE = Zero
                }

                Method (HTCD, 0, NotSerialized)
                {
                }

                OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
                Field (ABIO, DWordAcc, NoLock, Preserve)
                {
                    INAB,   32, 
                    DAAB,   32
                }

                Method (RDAB, 1, NotSerialized)
                {
                    INAB = Arg0
                    Return (DAAB) /* \_SB_.PCI0.SMB_.DAAB */
                }

                Method (WTAB, 2, NotSerialized)
                {
                    INAB = Arg0
                    DAAB = Arg1
                }

                Method (RWAB, 3, NotSerialized)
                {
                    Local0 = (RDAB (Arg0) & Arg1)
                    Local1 = (Local0 | Arg2)
                    WTAB (Arg0, Local1)
                }

                Method (CABR, 3, NotSerialized)
                {
                    Local0 = (Arg0 << 0x05)
                    Local1 = (Local0 + Arg1)
                    Local2 = (Local1 << 0x18)
                    Local3 = (Local2 + Arg2)
                    Return (Local3)
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
                Field (PIRQ, ByteAcc, NoLock, Preserve)
                {
                    PIID,   8, 
                    PIDA,   8
                }

                IndexField (PIID, PIDA, ByteAcc, NoLock, Preserve)
                {
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x0C), 
                    SIRA,   8, 
                    SIRB,   8, 
                    SIRC,   8, 
                    SIRD,   8, 
                    PIRS,   8, 
                    Offset (0x13), 
                    HDAD,   8, 
                    Offset (0x17), 
                    SDCL,   8, 
                    Offset (0x1A), 
                    SDIO,   8, 
                    Offset (0x30), 
                    USB1,   8, 
                    Offset (0x34), 
                    USB3,   8, 
                    Offset (0x41), 
                    SATA,   8, 
                    Offset (0x62), 
                    GIOC,   8, 
                    Offset (0x70), 
                    I2C0,   8, 
                    I2C1,   8, 
                    I2C2,   8, 
                    I2C3,   8, 
                    URT0,   8, 
                    URT1,   8
                }

                Name (IPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {3,4,5,7,10,11,12,14,15}
                })
                Name (UPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Exclusive, )
                        {3,4,5,7}
                })
                OperationRegion (KBDD, SystemIO, 0x64, 0x01)
                Field (KBDD, ByteAcc, NoLock, Preserve)
                {
                    PD64,   8
                }

                Method (DSPI, 0, NotSerialized)
                {
                    INTA (0x1F)
                    INTB (0x1F)
                    INTC (0x1F)
                    INTD (0x1F)
                    Local1 = PD64 /* \_SB_.PCI0.LPC0.PD64 */
                    PIRE = 0x1F
                    PIRF = 0x1F
                    PIRG = 0x1F
                    PIRH = 0x1F
                }

                Method (INTA, 1, NotSerialized)
                {
                    PIRA = Arg0
                    If (GPIC)
                    {
                        HDAD = Arg0
                        SDCL = Arg0
                    }
                }

                Method (INTB, 1, NotSerialized)
                {
                    PIRB = Arg0
                }

                Method (INTC, 1, NotSerialized)
                {
                    PIRC = Arg0
                    If (GPIC)
                    {
                        USB1 = Arg0
                        USB3 = Arg0
                    }
                }

                Method (INTD, 1, NotSerialized)
                {
                    PIRD = Arg0
                    If (GPIC)
                    {
                        SATA = Arg0
                    }
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRA)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTA (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRA) /* \_SB_.PCI0.LPC0.PIRA */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTA (Local0)
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRB)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTB (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRB) /* \_SB_.PCI0.LPC0.PIRB */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTB (Local0)
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRC)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTC (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRC) /* \_SB_.PCI0.LPC0.PIRC */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTC (Local0)
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRD)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTD (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRD) /* \_SB_.PCI0.LPC0.PIRD */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTD (Local0)
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRE)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRE = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRE) /* \_SB_.PCI0.LPC0.PIRE */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRE = Local0
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRF)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRF = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRF) /* \_SB_.PCI0.LPC0.PIRF */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRF = Local0
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRG)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRG = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRG) /* \_SB_.PCI0.LPC0.PIRG */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRG = Local0
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x08)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRH)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRH = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRH) /* \_SB_.PCI0.LPC0.PIRH */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRH = Local0
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((^^^SMB.HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.RTC_.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.RTC_.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TIME)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((^^^SMB.HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.TIME.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.TIME.BUF1 */
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, "PTL0001")  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                    }
                }

                Device (MSE0)
                {
                    Name (_HID, "PTL0003")  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                    }

                    Name (MSP0, 0x00)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (MSP0) /* \_SB_.PCI0.LPC0.MSE0.MSP0 */
                    }
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0xD0,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                    })
                }

                OperationRegion (LPCS, PCI_Config, 0xA0, 0x04)
                Field (LPCS, DWordAcc, NoLock, Preserve)
                {
                    SPBA,   32
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y06)
                        Memory32Fixed (ReadWrite,
                            0xFEC10000,         // Address Base
                            0x00000020,         // Address Length
                            _Y07)
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED61000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED80000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._BAS, BARX)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._LEN, GALN)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y07._BAS, MB01)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y07._LEN, ML01)  // _LEN: Length
                        Local0 = SPBA /* \_SB_.PCI0.LPC0.SPBA */
                        MB01 = (Local0 & 0xFFFFFFE0)
                        Local0 = NBBA /* \_SB_.PCI0.NBBA */
                        If (Local0)
                        {
                            GALN = 0x1000
                            BARX = (Local0 & 0xFFFFFFF0)
                        }

                        Return (MSRC) /* \_SB_.PCI0.LPC0.MEM_.MSRC */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                }

                Name (\MIEC, 0x01)
                Name (\LIDF, 0x01)
                Device (H_EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (ECFG, Zero)
                    Name (WIBT, Zero)
                    Name (_UID, One)  // _UID: Unique ID
                    Name (APST, Zero)
                    Name (ECON, One)
                    Name (B1CC, Zero)
                    Name (B2CC, Zero)
                    Name (B2ST, Zero)
                    Name (CFAN, Zero)
                    Name (CMDR, Zero)
                    Name (DOCK, Zero)
                    Name (EJET, Zero)
                    Name (MCAP, Zero)
                    Name (PLMX, Zero)
                    Name (PECH, Zero)
                    Name (PECL, Zero)
                    Name (PENV, Zero)
                    Name (PINV, Zero)
                    Name (PPSH, Zero)
                    Name (PPSL, Zero)
                    Name (PSTP, Zero)
                    Name (RPWR, Zero)
                    Name (LIDS, Zero)
                    Name (SLPC, Zero)
                    Name (WTMS, Zero)
                    Name (AWT2, Zero)
                    Name (AWT1, Zero)
                    Name (AWT0, Zero)
                    Name (DLED, Zero)
                    Name (IBT1, Zero)
                    Name (ECAV, One)
                    Name (SPT2, Zero)
                    Name (PB10, Zero)
                    Name (IWCW, Zero)
                    Name (IWCR, Zero)
                    Name (VPWR, Zero)
                    Name (PVOL, Zero)
                    Name (RCMD, Zero)
                    Name (ONTM, Zero)
                    Name (BNUM, Zero)
                    Name (RDHW, 0x00)
                    Mutex (ECMT, 0x00)
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0662,             // Range Minimum
                                0x0662,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0666,             // Range Minimum
                                0x0666,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                        })
                        Return (BFFR) /* \_SB_.PCI0.LPC0.H_EC._CRS.BFFR */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((ECON == One))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    OperationRegion (ECF2, EmbeddedControl, Zero, 0xFF)
                    Field (ECF2, ByteAcc, Lock, Preserve)
                    {
                        VCMD,   8, 
                        VDAT,   8, 
                        VPCS,   8, 
                        Offset (0x0F), 
                            ,   4, 
                        CREC,   1, 
                        UCST,   1, 
                            ,   1, 
                        CIBM,   1, 
                        Offset (0x14), 
                        HTKS,   8, 
                        HTKE,   8, 
                        Offset (0x17), 
                        TSR1,   8, 
                        TSR2,   8, 
                        Offset (0x1A), 
                        TSR3,   8, 
                        Offset (0x1E), 
                        TSR4,   8, 
                        Offset (0x20), 
                        LSTE,   1, 
                            ,   1, 
                        BNOV,   1, 
                        FNHK,   1, 
                        HKST,   1, 
                            ,   1, 
                        KBT0,   1, 
                        BKLI,   1, 
                        TROM,   8, 
                        TLCL,   8, 
                        MCRI,   8, 
                        PATC,   8, 
                        PAT0,   8, 
                        PAT1,   8, 
                        Offset (0x28), 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCD,   8, 
                        SDAT,   16, 
                        SDA2,   16, 
                        SDA4,   32, 
                        SDA5,   32, 
                        SDA6,   32, 
                        SDA7,   32, 
                        SDA8,   32, 
                        SDA9,   32, 
                        SDAA,   32, 
                        SMCN,   8, 
                        Offset (0x60), 
                        ECWR,   8, 
                        Offset (0x64), 
                        B1DC,   16, 
                        B1FV,   16, 
                        B1FC,   16, 
                        Offset (0x6C), 
                        B1CR,   16, 
                        B1RC,   16, 
                        B1VT,   16, 
                        Offset (0x74), 
                        BCYC,   16, 
                        Offset (0x77), 
                            ,   7, 
                        XX10,   1, 
                        Offset (0x7D), 
                        MIDL,   8, 
                        MIDH,   8, 
                        HIDL,   8, 
                        HIDH,   8, 
                        FWVL,   8, 
                        FWVH,   8, 
                        DAVL,   8, 
                        DAVH,   8, 
                        Offset (0x88), 
                        SCPU,   8, 
                        B1ST,   8, 
                        BPCN,   8, 
                        Offset (0x8C), 
                            ,   1, 
                        SWBL,   1, 
                        Offset (0x90), 
                            ,   1, 
                        FUEN,   1, 
                        Offset (0x91), 
                        EDCC,   1, 
                        ALSC,   1, 
                        CDMB,   1, 
                        CCSB,   1, 
                        BTSM,   1, 
                        BTCM,   1, 
                        LBTM,   1, 
                        CSBM,   1, 
                        HYMS,   1, 
                        HDME,   1, 
                        HGMF,   1, 
                        SWCS,   1, 
                        CREA,   1, 
                        DCRC,   1, 
                        ALSS,   1, 
                        UCFG,   1, 
                        IPEN,   1, 
                        MBBD,   1, 
                        SBBD,   1, 
                        QCFG,   1, 
                        QCEN,   1, 
                        UCSA,   1, 
                        CGBE,   1, 
                        CVEC,   1, 
                        EDCF,   1, 
                        BTCF,   1, 
                        HSMG,   1, 
                        O72H,   1, 
                        BLEG,   1, 
                        BTMF,   1, 
                        ATOM,   1, 
                        Offset (0x9F), 
                        TPTY,   8, 
                        PSD1,   8, 
                        WAKS,   8, 
                        Offset (0xBA), 
                        FAN2,   16, 
                        Offset (0xBE), 
                        DREQ,   8, 
                        DACK,   8, 
                        TCPU,   8, 
                        SCHG,   8, 
                        Offset (0xC3), 
                        PSTE,   8, 
                        Offset (0xE0), 
                        DGPU,   8, 
                        Offset (0xE4), 
                        ITSM,   8, 
                        GPUP,   8, 
                        Offset (0xE9), 
                        PSKU,   8, 
                        Offset (0xF0), 
                            ,   3, 
                        BLOF,   1, 
                            ,   2, 
                        DRMD,   1, 
                        Offset (0xF1)
                    }

                    Method (SECC, 1, NotSerialized)
                    {
                        RCMD = Arg0
                    }

                    Method (ECMD, 1, Serialized)
                    {
                        SECC (Arg0)
                    }

                    Method (ECRD, 1, Serialized)
                    {
                        Local0 = Acquire (ECMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If (ECAV)
                            {
                                Local1 = DerefOf (Arg0)
                                Release (ECMT)
                                Return (Local1)
                            }
                            Else
                            {
                                Release (ECMT)
                            }
                        }

                        Return (0x00)
                    }

                    Method (ECWT, 2, Serialized)
                    {
                        Local0 = Acquire (ECMT, 0x03E8)
                        If ((Local0 == Zero))
                        {
                            If (ECAV)
                            {
                                Arg1 = Arg0
                            }

                            Release (ECMT)
                        }
                    }

                    Method (_GPE, 0, NotSerialized)  // _GPE: General Purpose Events
                    {
                        Local0 = 0x04
                        Return (Local0)
                    }

                    Device (ADP1)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (ACDC, 0xFF)
                        Name (XX00, Buffer (0x03){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((ECRD (RefOf (ECWR)) & One))
                            {
                                Return (0x0F)
                            }

                            Return (0x0F)
                        }

                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            Local0 = (ECRD (RefOf (ECWR)) & One)
                            If (((Local0 != ACDC) || (ACDC == 0xFF)))
                            {
                                CreateWordField (XX00, 0x00, SSZE)
                                CreateByteField (XX00, 0x02, ACST)
                                SSZE = 0x03
                                ACDC = Local0
                                If (ACDC)
                                {
                                    ^^^^GP17.VGA.AFN4 (0x01)
                                    ACST = 0x00
                                }
                                Else
                                {
                                    ^^^^GP17.VGA.AFN4 (0x02)
                                    ACST = 0x01
                                }

                                ALIB (0x01, XX00)
                            }

                            Return (Local0)
                        }

                        Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                        {
                            Return (_SB) /* \_SB_ */
                        }
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Local0 = 0x0F
                            If ((ECWR & 0x02))
                            {
                                Local0 = 0x1F
                            }

                            Return (Local0)
                        }

                        Method (_BIX, 0, Serialized)  // _BIX: Battery Information Extended
                        {
                            Name (BPK1, Package (0x15)
                            {
                                0x01, 
                                0x00, 
                                0xFFFFFFFF, 
                                0xFFFFFFFF, 
                                0x01, 
                                0xFFFFFFFF, 
                                0x00, 
                                0x00, 
                                0x64, 
                                0x00017318, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x64, 
                                0x00, 
                                "SR Real Battery", 
                                "123456789", 
                                "LiP", 
                                "LENOVO", 
                                0x01
                            })
                            If ((XX10 == 0x01))
                            {
                                Local0 = (B1DC * B1FV)
                                Local0 = (Local0 / 0x03E8)
                                BPK1 [0x02] = Local0
                            }
                            Else
                            {
                                Local0 = (B1DC * 0x0A)
                                BPK1 [0x02] = Local0
                            }

                            If ((XX10 == 0x01))
                            {
                                Local1 = (B1FC * B1FV)
                                Local1 = (Local1 / 0x03E8)
                                BPK1 [0x03] = Local1
                            }
                            Else
                            {
                                Local1 = (B1FC * 0x0A)
                                BPK1 [0x03] = Local1
                            }

                            BPK1 [0x06] = (Local1 / 0x0A)
                            BPK1 [0x07] = (Local1 / 0x19)
                            BPK1 [0x08] = BCYC /* \_SB_.PCI0.LPC0.H_EC.BCYC */
                            SMST = 0x00
                            SMCD = 0x20
                            SMAD = 0x16
                            SMPR = 0x0B
                            Local0 = 0x32
                            While (Local0)
                            {
                                Sleep (0x02)
                                If ((SMPR == Zero))
                                {
                                    BPK1 [0x13] = SM2S ()
                                    Local0 = 0x00
                                }
                                Else
                                {
                                    Local0--
                                }
                            }

                            Return (BPK1) /* \_SB_.PCI0.LPC0.H_EC.BAT0._BIX.BPK1 */
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Name (PKG1, Package (0x04)
                            {
                                Ones, 
                                Ones, 
                                Ones, 
                                Ones
                            })
                            Local0 = 0x00
                            If ((ECWR & 0x04))
                            {
                                Local0 = 0x02
                            }
                            ElseIf ((ECWR & 0x08))
                            {
                                Local0 = 0x01
                            }

                            If ((ECWR & 0x40))
                            {
                                Local0 |= 0x04
                            }

                            PKG1 [0x00] = Local0
                            If ((B1ST & One))
                            {
                                If ((XX10 == 0x01))
                                {
                                    Local0 = (B1CR * B1FV)
                                    Local0 = (Local0 / 0x03E8)
                                    PKG1 [0x01] = Local0
                                }
                                Else
                                {
                                    Local0 = (B1CR * 0x0A)
                                    PKG1 [0x01] = Local0
                                }
                            }
                            ElseIf ((XX10 == 0x01))
                            {
                                Local0 = (B1CR * B1FV)
                                Local0 = (Local0 / 0x03E8)
                                PKG1 [0x01] = Local0
                            }
                            Else
                            {
                                Local0 = (B1CR * 0x0A)
                                PKG1 [0x01] = Local0
                            }

                            If ((XX10 == 0x01))
                            {
                                Local1 = (B1RC * B1FV)
                                Local1 = (Local1 / 0x03E8)
                                PKG1 [0x02] = Local1
                            }
                            Else
                            {
                                PKG1 [0x02] = (B1RC * 0x0A)
                            }

                            PKG1 [0x03] = B1FV /* \_SB_.PCI0.LPC0.H_EC.B1FV */
                            Return (PKG1) /* \_SB_.PCI0.LPC0.H_EC.BAT0._BST.PKG1 */
                        }

                        Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                        {
                            Return (_SB) /* \_SB_ */
                        }
                    }

                    Scope (^^GP17.VGA)
                    {
                        OperationRegion (BAR6, PCI_Config, 0x24, 0x04)
                        Field (BAR6, ByteAcc, NoLock, Preserve)
                        {
                            VGBA,   32
                        }

                        OperationRegion (PWML, SystemMemory, VGBA, 0x00013200)
                        Field (PWML, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x131C4), 
                            BPUL,   8
                        }
                    }

                    Method (_Q05, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^^^GP17.VGA.BPUL <= 0x05))
                        {
                            SWBL = 0x01
                            VDAT = 0x00
                            VCMD = 0x33
                        }

                        Acquire (MSGF, 0xFFFF)
                        Notify (^^^GP17.VGA.LCD, 0x87) // Device-Specific
                        Release (MSGF)
                    }

                    Method (_Q06, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((SWBL == 0x01))
                        {
                            SWBL = 0x00
                            VDAT = 0x01
                            VCMD = 0x33
                        }

                        Acquire (MSGF, 0xFFFF)
                        Notify (^^^GP17.VGA.LCD, 0x86) // Device-Specific
                        Release (MSGF)
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x0258)
                        Notify (BAT0, 0x80) // Status Change
                        Notify (ADP1, 0x80) // Status Change
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x01F4)
                        Notify (BAT0, 0x81) // Information Change
                        Sleep (0x01F4)
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (ECAV)
                        {
                            If ((Acquire (ECMT, 0xA000) == 0x00))
                            {
                                If (MIEC)
                                {
                                    If (((LSTE && 0x01) == 0x00))
                                    {
                                        LIDF = 0x01
                                        LIDS = 0x01
                                    }
                                    Else
                                    {
                                        LIDF = 0x00
                                        LIDS = 0x00
                                    }
                                }

                                Release (ECMT)
                            }
                        }

                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_QD1, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DGPU = 0xD1
                    }

                    Method (_QD2, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        DGPU = 0xD2
                    }

                    Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (PWRB, 0x80) // Status Change
                        Sleep (0x32)
                    }

                    Method (_Q21, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x01F4)
                        Notify (BAT0, 0x81) // Information Change
                        Sleep (0x01F4)
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((PSTE <= 0x02))
                        {
                            \_PR.C000.PPCV = PSTE /* \_SB_.PCI0.LPC0.H_EC.PSTE */
                            \_PR.C001.PPCV = PSTE /* \_SB_.PCI0.LPC0.H_EC.PSTE */
                            \_PR.C002.PPCV = PSTE /* \_SB_.PCI0.LPC0.H_EC.PSTE */
                            \_PR.C003.PPCV = PSTE /* \_SB_.PCI0.LPC0.H_EC.PSTE */
                            Notify (\_PR.C000, 0x80) // Performance Capability Change
                            Notify (\_PR.C001, 0x80) // Performance Capability Change
                            Notify (\_PR.C002, 0x80) // Performance Capability Change
                            Notify (\_PR.C003, 0x80) // Performance Capability Change
                        }
                    }

                    Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                    }

                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        BKLI = 0x01
                        E666 = 0x82
                    }

                    Name (PSEV, Package (0x02)
                    {
                        Package (0x08)
                        {
                            Zero, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x08
                        }, 

                        Package (0x08)
                        {
                            Zero, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x07, 
                            0x09
                        }
                    })
                    Device (LID0)
                    {
                        Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                        {
                            If (ECAV)
                            {
                                If ((Acquire (ECMT, 0xA000) == 0x00))
                                {
                                    If (MIEC)
                                    {
                                        If (((LSTE && 0x01) == 0x00))
                                        {
                                            LIDF = 0x01
                                            LIDS = 0x01
                                        }
                                        Else
                                        {
                                            LIDF = 0x00
                                            LIDS = 0x00
                                        }
                                    }

                                    Release (ECMT)
                                }
                            }

                            Return (LIDF) /* \LIDF */
                        }
                    }

                    Method (\SM2S, 0, NotSerialized)
                    {
                        Name (CHAR, 0x00)
                        Name (STR1, Buffer (0x25)
                        {
                            "0000000000                          "
                        })
                        If (\_SB.PCI0.LPC0.H_EC.ECAV)
                        {
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDAT
                            STR1 [0x00] = CHAR /* \SM2S.CHAR */
                            STR1 [0x01] = (CHAR >> 0x08)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA2
                            STR1 [0x02] = CHAR /* \SM2S.CHAR */
                            STR1 [0x03] = (CHAR >> 0x08)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA4
                            STR1 [0x04] = (CHAR >> 0x00)
                            STR1 [0x05] = (CHAR >> 0x08)
                            STR1 [0x06] = (CHAR >> 0x10)
                            STR1 [0x07] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA5
                            STR1 [0x08] = (CHAR >> 0x00)
                            STR1 [0x09] = (CHAR >> 0x08)
                            STR1 [0x0A] = (CHAR >> 0x10)
                            STR1 [0x0B] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA6
                            STR1 [0x0C] = (CHAR >> 0x00)
                            STR1 [0x0D] = (CHAR >> 0x08)
                            STR1 [0x0E] = (CHAR >> 0x10)
                            STR1 [0x0F] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA7
                            STR1 [0x10] = (CHAR >> 0x00)
                            STR1 [0x11] = (CHAR >> 0x08)
                            STR1 [0x12] = (CHAR >> 0x10)
                            STR1 [0x13] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA8
                            STR1 [0x14] = (CHAR >> 0x00)
                            STR1 [0x15] = (CHAR >> 0x08)
                            STR1 [0x16] = (CHAR >> 0x10)
                            STR1 [0x17] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDA9
                            STR1 [0x18] = (CHAR >> 0x00)
                            STR1 [0x19] = (CHAR >> 0x08)
                            STR1 [0x1A] = (CHAR >> 0x10)
                            STR1 [0x1B] = (CHAR >> 0x18)
                            CHAR = \_SB.PCI0.LPC0.H_EC.SDAA
                            STR1 [0x1C] = (CHAR >> 0x00)
                            STR1 [0x1D] = (CHAR >> 0x08)
                            STR1 [0x1E] = (CHAR >> 0x10)
                            STR1 [0x1F] = (CHAR >> 0x18)
                            STR1 [\_SB.PCI0.LPC0.H_EC.SMCN] = 0x00
                        }

                        Return (STR1) /* \SM2S.STR1 */
                    }
                }

                Name (APTG, Zero)
                Name (APEJ, Zero)
                Name (PRNA, Zero)
                Scope (H_EC)
                {
                    Device (CYMC)
                    {
                        Name (_HID, "YMC2017")  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x00)
                        }
                    }

                    Device (HKDV)
                    {
                        Name (_HID, "LHK2019")  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (VPC0)
                    {
                        Name (_HID, "VPC2004")  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_VPC, 0xF40D0005)
                        Name (VPCD, 0x00)
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_CFG, 0, NotSerialized)
                        {
                            Return (_VPC) /* \_SB_.PCI0.LPC0.H_EC.VPC0._VPC */
                        }

                        Method (VPCR, 1, Serialized)
                        {
                            If (ECAV)
                            {
                                If ((Arg0 == 0x01))
                                {
                                    VPCD = ECRD (RefOf (VCMD))
                                }
                                Else
                                {
                                    VPCD = ECRD (RefOf (VDAT))
                                }
                            }

                            Return (VPCD) /* \_SB_.PCI0.LPC0.H_EC.VPC0.VPCD */
                        }

                        Method (VPCW, 2, Serialized)
                        {
                            If (ECAV)
                            {
                                If ((Arg0 == 0x01))
                                {
                                    ECWT (Arg1, RefOf (VCMD))
                                }
                                Else
                                {
                                    ECWT (Arg1, RefOf (VDAT))
                                }
                            }

                            Return (0x00)
                        }

                        Method (SVCR, 1, Serialized)
                        {
                        }

                        Method (HALS, 0, NotSerialized)
                        {
                            Local0 = Zero
                            Local0 |= 0x40
                            Local0 |= 0x4000
                            If ((One == ECRD (RefOf (UCSA))))
                            {
                                Local0 |= 0x80
                            }

                            If ((One == ECRD (RefOf (CGBE))))
                            {
                                Local0 |= 0x8000
                            }

                            Local0 |= 0x0200
                            If ((Zero == ECRD (RefOf (FNHK))))
                            {
                                Local0 |= 0x0400
                            }

                            Return (Local0)
                        }

                        Method (SALS, 1, Serialized)
                        {
                            Local0 = Arg0
                            If ((Local0 == 0x0A))
                            {
                                ECWT (One, RefOf (CVEC))
                                ECWT (One, RefOf (UCSA))
                                Return (0x00)
                            }

                            If ((Local0 == 0x0B))
                            {
                                ECWT (One, RefOf (CVEC))
                                ECWT (Zero, RefOf (UCSA))
                                Return (0x00)
                            }

                            If ((Local0 == 0x0E))
                            {
                                ECWT (0x00, RefOf (FNHK))
                                ECWT (One, RefOf (HKST))
                            }

                            If ((Local0 == 0x0F))
                            {
                                ECWT (0x01, RefOf (FNHK))
                                ECWT (One, RefOf (HKST))
                            }

                            If ((Local0 == 0x12))
                            {
                                ECWT (One, RefOf (CREC))
                                ECWT (0x00, RefOf (CGBE))
                                Return (0x00)
                            }

                            If ((Local0 == 0x13))
                            {
                                ECWT (One, RefOf (CREC))
                                ECWT (One, RefOf (CGBE))
                                Return (0x00)
                            }
                        }

                        Method (GBMD, 0, NotSerialized)
                        {
                            Local0 = 0x10020000
                            If ((Zero == CSBM))
                            {
                                Local0 |= 0x02
                            }

                            If ((One == QCEN))
                            {
                                Local0 |= 0x04
                            }

                            If ((One == BTSM))
                            {
                                Local0 |= 0x20
                            }

                            If ((One == MBBD))
                            {
                                Local0 |= 0x08
                            }

                            If ((BLEG == One))
                            {
                                Local0 |= 0x80
                            }

                            If ((HYMS == One))
                            {
                                Local0 |= 0x0100
                            }

                            If ((BTSM == One))
                            {
                                Local0 &= 0xFFFFFDFF
                            }
                            Else
                            {
                                Local0 |= 0x0200
                            }

                            Return (Local0)
                        }

                        Method (SBMC, 1, NotSerialized)
                        {
                            If (ECAV)
                            {
                                If ((Arg0 == Zero))
                                {
                                    ECWT (Zero, RefOf (CDMB))
                                    ECWT (One, RefOf (EDCC))
                                    ECWT (One, RefOf (EDCF))
                                    Return (Zero)
                                }

                                If ((Arg0 == One))
                                {
                                    ECWT (Zero, RefOf (EDCC))
                                    ECWT (One, RefOf (CDMB))
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x03))
                                {
                                    ECWT (One, RefOf (BTSM))
                                    ECWT (Zero, RefOf (LBTM))
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x05))
                                {
                                    ECWT (One, RefOf (LBTM))
                                    ECWT (One, RefOf (BTCF))
                                    ECWT (Zero, RefOf (BTSM))
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x06))
                                {
                                    ECWT (One, RefOf (CSBM))
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x07))
                                {
                                    ECWT (One, RefOf (QCEN))
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x08))
                                {
                                    ECWT (Zero, RefOf (QCEN))
                                    Return (Zero)
                                }
                            }

                            Return (Zero)
                        }

                        Name (BIDF, Package (0x04)
                        {
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            }, 

                            Buffer (0x02)
                            {
                                 0xFF, 0xFF                                       // ..
                            }, 

                            Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                            }, 

                            Buffer (0x08)
                            {
                                 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   // ........
                            }
                        })
                        Method (GBID, 0, Serialized)
                        {
                            DerefOf (BIDF [0x00]) [0x00] = BCYC /* \_SB_.PCI0.LPC0.H_EC.BCYC */
                            DerefOf (BIDF [0x02]) [0x00] = MIDL /* \_SB_.PCI0.LPC0.H_EC.MIDL */
                            DerefOf (BIDF [0x02]) [0x01] = MIDH /* \_SB_.PCI0.LPC0.H_EC.MIDH */
                            DerefOf (BIDF [0x02]) [0x02] = HIDL /* \_SB_.PCI0.LPC0.H_EC.HIDL */
                            DerefOf (BIDF [0x02]) [0x03] = HIDH /* \_SB_.PCI0.LPC0.H_EC.HIDH */
                            DerefOf (BIDF [0x02]) [0x04] = FWVL /* \_SB_.PCI0.LPC0.H_EC.FWVL */
                            DerefOf (BIDF [0x02]) [0x05] = FWVH /* \_SB_.PCI0.LPC0.H_EC.FWVH */
                            DerefOf (BIDF [0x02]) [0x06] = DAVL /* \_SB_.PCI0.LPC0.H_EC.DAVL */
                            DerefOf (BIDF [0x02]) [0x07] = DAVH /* \_SB_.PCI0.LPC0.H_EC.DAVH */
                            Sleep (0x32)
                            Return (BIDF) /* \_SB_.PCI0.LPC0.H_EC.VPC0.BIDF */
                        }

                        Name (VBST, 0x00)
                        Name (VBAC, 0x00)
                        Name (VBPR, 0x00)
                        Name (VBRC, 0x00)
                        Name (VBPV, 0x00)
                        Name (VBFC, 0x00)
                        Name (VBCT, 0x00)
                        Method (MHCF, 1, NotSerialized)
                        {
                            Local0 = Arg0
                            If ((Local0 && 0x20))
                            {
                                FUEN = 0x01
                            }
                            Else
                            {
                                FUEN = 0x00
                            }

                            Return (Local0)
                        }

                        Method (MHPF, 1, NotSerialized)
                        {
                            Name (BFWB, Buffer (0x25){})
                            CreateByteField (BFWB, 0x00, FB0)
                            CreateByteField (BFWB, 0x01, FB1)
                            CreateByteField (BFWB, 0x02, FB2)
                            CreateByteField (BFWB, 0x03, FB3)
                            CreateWordField (BFWB, 0x04, FB4A)
                            CreateWordField (BFWB, 0x06, FB4B)
                            CreateDWordField (BFWB, 0x08, FB4C)
                            CreateDWordField (BFWB, 0x0C, FB4D)
                            CreateDWordField (BFWB, 0x10, FB4E)
                            CreateDWordField (BFWB, 0x14, FB4F)
                            CreateDWordField (BFWB, 0x18, FB4G)
                            CreateDWordField (BFWB, 0x1C, FB4H)
                            CreateDWordField (BFWB, 0x20, FB4I)
                            CreateByteField (BFWB, 0x24, FB5)
                            If ((SizeOf (Arg0) <= 0x25))
                            {
                                If ((SMPR != 0x00))
                                {
                                    FB1 = SMST /* \_SB_.PCI0.LPC0.H_EC.SMST */
                                }
                                Else
                                {
                                    BFWB = Arg0
                                    SMAD = FB2 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB2_ */
                                    SMCD = FB3 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB3_ */
                                    SMCN = FB5 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB5_ */
                                    Local0 = FB0 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB0_ */
                                    If (((Local0 & 0x01) == 0x00))
                                    {
                                        SDAT = FB4A /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4A */
                                        SDA2 = FB4B /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4B */
                                        SDA4 = FB4C /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4C */
                                        SDA5 = FB4D /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4D */
                                        SDA6 = FB4E /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4E */
                                        SDA7 = FB4F /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4F */
                                        SDA8 = FB4G /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4G */
                                        SDA9 = FB4H /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4H */
                                        SDAA = FB4I /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB4I */
                                    }

                                    SMST = 0x00
                                    SMPR = FB0 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB0_ */
                                    Local1 = 0x00
                                    While ((0x0A > Local1))
                                    {
                                        Sleep (0x01)
                                        Local1++
                                        If ((SMPR == 0x00))
                                        {
                                            Break
                                        }
                                    }

                                    Local0 = FB0 /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.FB0_ */
                                    If (((Local0 & 0x01) != 0x00))
                                    {
                                        FB4A = SDAT /* \_SB_.PCI0.LPC0.H_EC.SDAT */
                                        FB4B = SDA2 /* \_SB_.PCI0.LPC0.H_EC.SDA2 */
                                        FB4C = SDA4 /* \_SB_.PCI0.LPC0.H_EC.SDA4 */
                                        FB4D = SDA5 /* \_SB_.PCI0.LPC0.H_EC.SDA5 */
                                        FB4E = SDA6 /* \_SB_.PCI0.LPC0.H_EC.SDA6 */
                                        FB4F = SDA7 /* \_SB_.PCI0.LPC0.H_EC.SDA7 */
                                        FB4G = SDA8 /* \_SB_.PCI0.LPC0.H_EC.SDA8 */
                                        FB4H = SDA9 /* \_SB_.PCI0.LPC0.H_EC.SDA9 */
                                        FB4I = SDAA /* \_SB_.PCI0.LPC0.H_EC.SDAA */
                                    }

                                    FB1 = SMST /* \_SB_.PCI0.LPC0.H_EC.SMST */
                                    If ((Local1 >= 0x0A))
                                    {
                                        SMPR = 0x00
                                        FB1 = 0x18
                                    }
                                }

                                Return (BFWB) /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHPF.BFWB */
                            }

                            Return (Arg0)
                        }

                        Method (MHIF, 1, NotSerialized)
                        {
                            Name (BFWI, Buffer (0x0A){})
                            CreateField (BFWI, 0x00, 0x10, RES)
                            CreateField (BFWI, 0x10, 0x40, ECI)
                            Local0 = Arg0
                            If ((Local0 && 0x01))
                            {
                                BFWI = Zero
                            }
                            Else
                            {
                                Sleep (0x64)
                                Notify (BAT0, 0x81) // Information Change
                                Sleep (0x64)
                                Notify (BAT0, 0x80) // Status Change
                                Sleep (0x64)
                                RES = Zero
                                BFWI [0x02] = MIDL /* \_SB_.PCI0.LPC0.H_EC.MIDL */
                                BFWI [0x03] = MIDH /* \_SB_.PCI0.LPC0.H_EC.MIDH */
                                BFWI [0x04] = HIDL /* \_SB_.PCI0.LPC0.H_EC.HIDL */
                                BFWI [0x05] = HIDH /* \_SB_.PCI0.LPC0.H_EC.HIDH */
                                BFWI [0x06] = FWVL /* \_SB_.PCI0.LPC0.H_EC.FWVL */
                                BFWI [0x07] = FWVH /* \_SB_.PCI0.LPC0.H_EC.FWVH */
                                BFWI [0x08] = DAVL /* \_SB_.PCI0.LPC0.H_EC.DAVL */
                                BFWI [0x09] = DAVH /* \_SB_.PCI0.LPC0.H_EC.DAVH */
                            }

                            Return (BFWI) /* \_SB_.PCI0.LPC0.H_EC.VPC0.MHIF.BFWI */
                        }

                        Method (HODD, 0, NotSerialized)
                        {
                        }

                        Method (SODD, 1, Serialized)
                        {
                        }

                        Method (SMTF, 0, Serialized)
                        {
                            Name (ATTF, Buffer (0x04){})
                            Return (ATTF) /* \_SB_.PCI0.LPC0.H_EC.VPC0.SMTF.ATTF */
                        }

                        Method (GSBI, 0, Serialized)
                        {
                            Name (BATE, Buffer (0x53){})
                            CreateField (BATE, 0x00, 0x10, BUF1)
                            CreateField (BATE, 0x10, 0x10, BUF2)
                            CreateField (BATE, 0x20, 0x10, BUF3)
                            CreateField (BATE, 0x30, 0x10, BUF4)
                            CreateField (BATE, 0x40, 0x10, BUF5)
                            CreateField (BATE, 0x50, 0x10, BUF6)
                            CreateField (BATE, 0x60, 0x10, BUF7)
                            CreateField (BATE, 0x70, 0x10, BUF8)
                            CreateField (BATE, 0x80, 0x10, BUF9)
                            CreateField (BATE, 0x90, 0x10, BUFA)
                            CreateField (BATE, 0xA0, 0x10, BUFB)
                            CreateField (BATE, 0xB0, 0x50, BUFC)
                            CreateField (BATE, 0x0100, 0x40, BUFD)
                            CreateField (BATE, 0x0140, 0x60, BUFE)
                            CreateField (BATE, 0x01A0, 0xB8, BUFF)
                            CreateField (BATE, 0x0258, 0x40, BUFG)
                            Name (CHEM, Buffer (0x08){})
                            CreateField (CHEM, 0x00, 0x08, BCH1)
                            CreateField (CHEM, 0x08, 0x08, BCH2)
                            CreateField (CHEM, 0x10, 0x08, BCH3)
                            CreateField (CHEM, 0x18, 0x08, BCH4)
                            CreateField (CHEM, 0x24, 0x08, BCH5)
                            CreateField (CHEM, 0x28, 0x08, BCH6)
                            Return (BATE) /* \_SB_.PCI0.LPC0.H_EC.VPC0.GSBI.BATE */
                        }

                        Name (APDT, 0x00)
                        Method (APPC, 1, Serialized)
                        {
                        }

                        Method (DBSL, 0, NotSerialized)
                        {
                            Return (Package (0x10)
                            {
                                0xC9, 
                                0xAE, 
                                0x95, 
                                0x7E, 
                                0x69, 
                                0x56, 
                                0x45, 
                                0x36, 
                                0x29, 
                                0x1E, 
                                0x15, 
                                0x0E, 
                                0x09, 
                                0x06, 
                                0x05, 
                                0x00
                            })
                        }

                        Method (SBSL, 1, Serialized)
                        {
                        }

                        Method (STHT, 1, Serialized)
                        {
                            Return (0x00)
                        }
                    }

                    Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (VPC0, 0x80) // Status Change
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((PSD1 == 0x01))
                        {
                            Notify (WMIU, 0xD0) // Hardware-Specific
                            Notify (WMIL, 0xD0) // Hardware-Specific
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (WMIU)
                    {
                        Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                        Name (_UID, "LSK20")  // _UID: Unique ID
                        Name (_WDG, Buffer (0x3C)
                        {
                            /* 0000 */  0x74, 0x09, 0x6C, 0xCE, 0x07, 0x04, 0x50, 0x4F,  // t.l...PO
                            /* 0008 */  0x88, 0xBA, 0x4F, 0xC3, 0xB6, 0x55, 0x9A, 0xD8,  // ..O..U..
                            /* 0010 */  0x53, 0x4B, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // SK..!...
                            /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                            /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x44, 0x41, 0x01, 0x00,  // ..).DA..
                            /* 0028 */  0x0C, 0xDE, 0xC0, 0x8F, 0xE4, 0xB4, 0xFD, 0x43,  // .......C
                            /* 0030 */  0xB0, 0xF3, 0x88, 0x71, 0x71, 0x1C, 0x12, 0x94,  // ...qq...
                            /* 0038 */  0xD0, 0x00, 0x01, 0x08                           // ....
                        })
                        Method (WMSK, 3, NotSerialized)
                        {
                            If ((Arg1 == 0x01))
                            {
                                If ((ToInteger (Arg2) == 0x01))
                                {
                                    Return (0x02)
                                }
                                ElseIf ((ToInteger (Arg2) == 0x02))
                                {
                                    Return (0x01)
                                }
                                ElseIf ((ToInteger (Arg2) == 0x03))
                                {
                                    Return (0x01)
                                }
                                ElseIf ((ToInteger (Arg2) == 0x04))
                                {
                                    Return (0x01)
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                        }

                        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                        {
                            If ((Arg0 == 0xD0))
                            {
                                Return (^^PCI0.LPC0.H_EC.PSD1) /* \_SB_.PCI0.LPC0.H_EC.PSD1 */
                            }
                        }

                        Name (WQDA, Buffer (0x0422)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                            /* 0008 */  0x12, 0x04, 0x00, 0x00, 0x66, 0x0C, 0x00, 0x00,  // ....f...
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                            /* 0018 */  0xA8, 0x42, 0x86, 0x00, 0x01, 0x06, 0x18, 0x42,  // .B.....B
                            /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0x29, 0x81, 0x42, 0x04,  // ....).B.
                            /* 0028 */  0x8A, 0x40, 0xA4, 0x60, 0x30, 0x28, 0x0D, 0x20,  // .@.`0(. 
                            /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,  // ..!.LL..
                            /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,  // .y.`S.I.
                            /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,  // ...Q..J.
                            /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,  // .$.0/@..
                            /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,  // ..l.0-.1
                            /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,  // $..N.,.B
                            /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,  // B.(..[.v
                            /* 0068 */  0x44, 0x49, 0x16, 0x60, 0x19, 0x46, 0x04, 0x1E,  // DI.`.F..
                            /* 0070 */  0x45, 0x64, 0xA3, 0x71, 0x68, 0xEC, 0x30, 0x2C,  // Ed.qh.0,
                            /* 0078 */  0x13, 0x4C, 0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45,  // .L.8...E
                            /* 0080 */  0xE0, 0x09, 0x75, 0x2A, 0x40, 0xAE, 0x00, 0x61,  // ..u*@..a
                            /* 0088 */  0x02, 0xC4, 0xA3, 0x0A, 0xA3, 0x39, 0x28, 0x22,  // .....9("
                            /* 0090 */  0x1A, 0x1A, 0x25, 0x66, 0x4C, 0x04, 0xB6, 0x73,  // ..%fL..s
                            /* 0098 */  0x6C, 0x8D, 0xE2, 0x34, 0x0A, 0x17, 0x20, 0x1D,  // l..4.. .
                            /* 00A0 */  0x43, 0x23, 0x38, 0xAE, 0x63, 0x30, 0x58, 0x90,  // C#8.c0X.
                            /* 00A8 */  0x43, 0x31, 0x44, 0x41, 0x02, 0xAC, 0xA2, 0x91,  // C1DA....
                            /* 00B0 */  0x61, 0x84, 0x08, 0x72, 0x7C, 0x81, 0xBA, 0xC4,  // a..r|...
                            /* 00B8 */  0x13, 0x88, 0xC7, 0xE4, 0x01, 0x18, 0x21, 0x4C,  // ......!L
                            /* 00C0 */  0x8B, 0xB0, 0x82, 0x36, 0x62, 0x02, 0xC3, 0x1E,  // ...6b...
                            /* 00C8 */  0x0A, 0xE6, 0x07, 0x20, 0x01, 0x9E, 0x05, 0x58,  // ... ...X
                            /* 00D0 */  0x1F, 0x23, 0x21, 0xB0, 0x7B, 0x01, 0xE2, 0x04,  // .#!.{...
                            /* 00D8 */  0x68, 0x1E, 0x8D, 0x46, 0x75, 0x9C, 0xC6, 0x88,  // h..Fu...
                            /* 00E0 */  0xD2, 0x96, 0x00, 0xC5, 0x23, 0x13, 0x4C, 0x88,  // ....#.L.
                            /* 00E8 */  0x28, 0x21, 0x3A, 0xC3, 0x13, 0x5A, 0x28, 0xC3,  // (!:..Z(.
                            /* 00F0 */  0x45, 0x89, 0x13, 0x25, 0x70, 0x84, 0xDE, 0x04,  // E..%p...
                            /* 00F8 */  0x18, 0x83, 0x20, 0x08, 0x81, 0x43, 0x54, 0x36,  // .. ..CT6
                            /* 0100 */  0x48, 0xA1, 0xB6, 0x3F, 0x08, 0x22, 0xCB, 0xC1,  // H..?."..
                            /* 0108 */  0x89, 0x80, 0x45, 0x1A, 0x0D, 0xEA, 0x14, 0x90,  // ..E.....
                            /* 0110 */  0xE0, 0xA9, 0xC0, 0x27, 0x82, 0x93, 0x3A, 0xAF,  // ...'..:.
                            /* 0118 */  0xA3, 0x3A, 0xEB, 0x20, 0xC1, 0x4F, 0xA4, 0xCE,  // .:. .O..
                            /* 0120 */  0xE3, 0x00, 0x19, 0x38, 0x9B, 0x9A, 0xD9, 0x75,  // ...8...u
                            /* 0128 */  0x3E, 0x80, 0xE0, 0x1A, 0x50, 0xFF, 0xFF, 0x79,  // >...P..y
                            /* 0130 */  0x3E, 0x16, 0xB0, 0x61, 0x86, 0xC3, 0x0C, 0xD1,  // >..a....
                            /* 0138 */  0x83, 0xF5, 0x04, 0x0E, 0x91, 0x01, 0x7A, 0x62,  // ......zb
                            /* 0140 */  0x4F, 0x04, 0x58, 0x87, 0x93, 0xD1, 0x71, 0xA0,  // O.X...q.
                            /* 0148 */  0x54, 0x01, 0x66, 0xC7, 0xAD, 0x49, 0x27, 0x38,  // T.f..I'8
                            /* 0150 */  0x1E, 0x9F, 0x03, 0x3C, 0x9F, 0x13, 0x4E, 0x60,  // ...<..N`
                            /* 0158 */  0xF9, 0x83, 0x40, 0x8D, 0xCC, 0xD0, 0x36, 0x38,  // ..@...68
                            /* 0160 */  0x2D, 0x1D, 0x04, 0x7C, 0x00, 0x30, 0x81, 0xC5,  // -..|.0..
                            /* 0168 */  0x1E, 0x26, 0xE8, 0x78, 0xC0, 0x7F, 0x00, 0x78,  // .&.x...x
                            /* 0170 */  0x3E, 0x88, 0xF0, 0xCE, 0xE0, 0xF9, 0x9A, 0xA0,  // >.......
                            /* 0178 */  0xA8, 0xB3, 0x85, 0x9C, 0x8C, 0x07, 0x75, 0xAC,  // ......u.
                            /* 0180 */  0xF0, 0x05, 0x01, 0x03, 0x7E, 0xB4, 0x2F, 0x0C,  // ....~./.
                            /* 0188 */  0x61, 0x5E, 0x1A, 0xE2, 0x1E, 0xBC, 0xB5, 0x5E,  // a^.....^
                            /* 0190 */  0x21, 0x08, 0x81, 0x83, 0x43, 0xE8, 0xAF, 0x61,  // !...C..a
                            /* 0198 */  0x51, 0x83, 0xA7, 0x27, 0x0B, 0x7E, 0xA8, 0x60,  // Q..'.~.`
                            /* 01A0 */  0xC0, 0x7C, 0x3C, 0xA7, 0xE5, 0xB3, 0x87, 0x87,  // .|<.....
                            /* 01A8 */  0x07, 0x7F, 0x26, 0x4F, 0x14, 0xC0, 0x41, 0xE3,  // ..&O..A.
                            /* 01B0 */  0x19, 0x41, 0x88, 0xAF, 0x14, 0x6F, 0x14, 0xD8,  // .A...o..
                            /* 01B8 */  0xF3, 0x01, 0xBB, 0x53, 0x60, 0x87, 0x0E, 0xFF,  // ...S`...
                            /* 01C0 */  0x5A, 0x61, 0x54, 0x5F, 0x25, 0xDE, 0x22, 0x12,  // ZaT_%.".
                            /* 01C8 */  0x18, 0x2B, 0xC1, 0xFF, 0x3F, 0x30, 0x6E, 0xEC,  // .+..?0n.
                            /* 01D0 */  0xF6, 0x2B, 0x00, 0x21, 0xF8, 0xC1, 0x3C, 0x1B,  // .+.!..<.
                            /* 01D8 */  0x3C, 0x85, 0x44, 0x38, 0x2E, 0xA3, 0x1F, 0x50,  // <.D8...P
                            /* 01E0 */  0x9F, 0x33, 0x17, 0x44, 0xB4, 0xE3, 0x3A, 0x87,  // .3.D..:.
                            /* 01E8 */  0xA3, 0x08, 0x15, 0xE2, 0x2C, 0x0C, 0x14, 0x2E,  // ....,...
                            /* 01F0 */  0x58, 0x40, 0xE3, 0x24, 0xB0, 0xC8, 0xC1, 0xA2,  // X@.$....
                            /* 01F8 */  0x07, 0xC1, 0x01, 0xCF, 0xE1, 0x90, 0x82, 0x1E,  // ........
                            /* 0200 */  0xC4, 0xC9, 0x44, 0x39, 0x8F, 0x63, 0xF2, 0x39,  // ..D9.c.9
                            /* 0208 */  0xC5, 0x08, 0xC7, 0xF4, 0x78, 0xF2, 0xDC, 0xE1,  // ....x...
                            /* 0210 */  0xFB, 0xC6, 0xE1, 0x9F, 0xD7, 0xD1, 0x3E, 0x85,  // ......>.
                            /* 0218 */  0xB0, 0xA1, 0x1F, 0x02, 0xE6, 0x74, 0xE1, 0x21,  // .....t.!
                            /* 0220 */  0xF0, 0x01, 0x1C, 0xD0, 0x29, 0x5A, 0xE9, 0xC4,  // ....)Z..
                            /* 0228 */  0x90, 0x27, 0x1A, 0x7E, 0x2C, 0xC1, 0x0E, 0x80,  // .'.~,...
                            /* 0230 */  0xAB, 0xF2, 0x00, 0xC2, 0xC4, 0x3F, 0x0E, 0x24,  // .....?.$
                            /* 0238 */  0xED, 0x95, 0x40, 0x61, 0x7C, 0xC6, 0x01, 0x5C,  // ..@a|..\
                            /* 0240 */  0x01, 0x3D, 0x42, 0x80, 0xE7, 0x6C, 0x00, 0x17,  // .=B..l..
                            /* 0248 */  0xFB, 0xE4, 0xA3, 0x84, 0x78, 0x7A, 0x88, 0x7E,  // ....xz.~
                            /* 0250 */  0x2E, 0x27, 0xF3, 0x08, 0x61, 0x82, 0xFF, 0xFF,  // .'..a...
                            /* 0258 */  0x03, 0x0E, 0xEC, 0x2B, 0x8C, 0xB5, 0x5D, 0x70,  // ...+..]p
                            /* 0260 */  0xC8, 0x94, 0x9E, 0x6A, 0xDE, 0x6E, 0x8C, 0x72,  // ...j.n.r
                            /* 0268 */  0x58, 0x86, 0x79, 0xC0, 0xF1, 0xED, 0xA0, 0x35,  // X.y....5
                            /* 0270 */  0x18, 0xDD, 0x6E, 0xD8, 0x89, 0xE4, 0x24, 0x42,  // ..n...$B
                            /* 0278 */  0x31, 0xDC, 0x07, 0x89, 0x38, 0xB1, 0xC3, 0x45,  // 1...8..E
                            /* 0280 */  0x88, 0xFD, 0xD0, 0x61, 0xBC, 0x07, 0x1C, 0x16,  // ...a....
                            /* 0288 */  0xEF, 0x38, 0xA0, 0x83, 0x88, 0x0F, 0x38, 0x00,  // .8....8.
                            /* 0290 */  0x3F, 0x4E, 0x07, 0x8F, 0x25, 0xE0, 0x3F, 0x2B,  // ?N..%.?+
                            /* 0298 */  0xF0, 0x53, 0x09, 0x18, 0xFE, 0xFF, 0xA7, 0x12,  // .S......
                            /* 02A0 */  0xF0, 0x24, 0x7E, 0x10, 0xE8, 0xB4, 0xE3, 0xB4,  // .$~.....
                            /* 02A8 */  0x20, 0xB2, 0xB1, 0x58, 0x1F, 0xAA, 0x0C, 0xA1,  //  ..X....
                            /* 02B0 */  0x9C, 0x0B, 0x96, 0x47, 0x5C, 0x61, 0x1E, 0x4F,  // ...G\a.O
                            /* 02B8 */  0xE4, 0x73, 0x88, 0xFC, 0x52, 0x11, 0xE1, 0x0C,  // .s..R...
                            /* 02C0 */  0x8E, 0x21, 0xD2, 0x69, 0xC5, 0x38, 0xB0, 0x57,  // .!.i.8.W
                            /* 02C8 */  0x0E, 0xDF, 0x03, 0x9E, 0x2C, 0x78, 0x22, 0x60,  // ....,x"`
                            /* 02D0 */  0x1D, 0xE5, 0x78, 0x16, 0x0A, 0x29, 0xA3, 0xD1,  // ..x..)..
                            /* 02D8 */  0xA8, 0x3C, 0x08, 0x6B, 0x81, 0x11, 0x9C, 0x41,  // .<.k...A
                            /* 02E0 */  0x0C, 0xE8, 0xA0, 0x10, 0x3A, 0x22, 0xE1, 0x94,  // ....:"..
                            /* 02E8 */  0x80, 0x68, 0x5A, 0x6F, 0x44, 0xEC, 0xDC, 0xE3,  // .hZoD...
                            /* 02F0 */  0x1B, 0x92, 0x09, 0xA6, 0xBA, 0x1D, 0xD1, 0x79,  // .......y
                            /* 02F8 */  0xFA, 0x46, 0xC0, 0xEF, 0x29, 0x3E, 0x23, 0x18,  // .F..)>#.
                            /* 0300 */  0xDC, 0x0A, 0xEF, 0x1F, 0xA0, 0x19, 0x71, 0x10,  // ......q.
                            /* 0308 */  0xDF, 0x18, 0x7C, 0x26, 0xF0, 0x46, 0x4F, 0x04,  // ..|&.FO.
                            /* 0310 */  0xA3, 0xE6, 0xD0, 0x84, 0x9A, 0x86, 0xA7, 0xFA,  // ........
                            /* 0318 */  0x62, 0x63, 0x02, 0xEB, 0xBA, 0x0C, 0x81, 0x4C,  // bc.....L
                            /* 0320 */  0xDF, 0x31, 0x01, 0x14, 0x40, 0xBE, 0x14, 0xF8,  // .1..@...
                            /* 0328 */  0xA4, 0xF3, 0x60, 0xC0, 0xC6, 0xF0, 0xB0, 0x63,  // ..`....c
                            /* 0330 */  0x34, 0xA3, 0x73, 0xC1, 0x93, 0x47, 0x49, 0x9C,  // 4.s..GI.
                            /* 0338 */  0x3C, 0x05, 0xF1, 0xE4, 0x1D, 0x7F, 0xF2, 0xE8,  // <.......
                            /* 0340 */  0x3B, 0x85, 0x8F, 0x57, 0x9C, 0xC0, 0x71, 0xC7,  // ;..W..q.
                            /* 0348 */  0x4E, 0xAF, 0x20, 0x98, 0xFF, 0xFF, 0x30, 0xD8,  // N. ...0.
                            /* 0350 */  0x64, 0x4F, 0xED, 0x51, 0xC1, 0xB3, 0xF0, 0xA5,  // dO.Q....
                            /* 0358 */  0x05, 0x37, 0x78, 0xB8, 0xB7, 0x8C, 0x23, 0x0F,  // .7x...#.
                            /* 0360 */  0xF3, 0x4C, 0xE5, 0xF3, 0x95, 0xC1, 0x82, 0x84,  // .L......
                            /* 0368 */  0x79, 0x5F, 0xC0, 0x01, 0xBD, 0xDF, 0xBD, 0x38,  // y_.....8
                            /* 0370 */  0x1C, 0x6E, 0x88, 0xF3, 0x3D, 0xF4, 0x08, 0x3E,  // .n..=..>
                            /* 0378 */  0x7E, 0xF8, 0xCC, 0x80, 0x1B, 0x12, 0xBB, 0x06,  // ~.......
                            /* 0380 */  0xF0, 0xD1, 0xF8, 0x1A, 0xC0, 0x47, 0xE9, 0x3B,  // .....G.;
                            /* 0388 */  0x16, 0xF8, 0x04, 0xDE, 0x03, 0x40, 0x0E, 0x8F,  // .....@..
                            /* 0390 */  0x09, 0x3F, 0x2A, 0x7A, 0xCF, 0xF0, 0xB8, 0xF8,  // .?*z....
                            /* 0398 */  0x90, 0x7D, 0x45, 0x62, 0xD8, 0xCF, 0x1A, 0xBE,  // .}Eb....
                            /* 03A0 */  0x47, 0x9E, 0xE0, 0x2B, 0xC5, 0x2B, 0x1B, 0x06,  // G..+.+..
                            /* 03A8 */  0xD6, 0x87, 0x00, 0x0E, 0x6B, 0xB4, 0xB0, 0x87,  // ....k...
                            /* 03B0 */  0xFC, 0x92, 0xE2, 0x13, 0x8E, 0x67, 0x66, 0x8C,  // .....gf.
                            /* 03B8 */  0xB0, 0x3E, 0x08, 0x38, 0xCC, 0x41, 0x00, 0x34,  // .>.8.A.4
                            /* 03C0 */  0x47, 0x36, 0xFC, 0x0D, 0xC0, 0x97, 0x80, 0x20,  // G6..... 
                            /* 03C8 */  0x6F, 0x22, 0xA7, 0xFB, 0xE4, 0x63, 0x54, 0x7E,  // o"...cT~
                            /* 03D0 */  0x23, 0xE0, 0xE7, 0x11, 0x2C, 0x50, 0x10, 0xDF,  // #...,P..
                            /* 03D8 */  0x30, 0x3C, 0xB6, 0x03, 0x89, 0x0D, 0xE7, 0x5A,  // 0<.....Z
                            /* 03E0 */  0xC2, 0xFE, 0xFF, 0x77, 0x02, 0x8C, 0x42, 0x9B,  // ...w..B.
                            /* 03E8 */  0x3E, 0x35, 0x1A, 0xB5, 0x6A, 0x50, 0xA6, 0x46,  // >5..jP.F
                            /* 03F0 */  0x99, 0x06, 0xB5, 0xFA, 0x54, 0x6A, 0xCC, 0x98,  // ....Tj..
                            /* 03F8 */  0x89, 0x2B, 0x9F, 0x5F, 0x11, 0x1A, 0xB1, 0x23,  // .+._...#
                            /* 0400 */  0x81, 0xD0, 0x98, 0x14, 0x02, 0x71, 0xE8, 0x1F,  // .....q..
                            /* 0408 */  0x87, 0x40, 0x2C, 0xF9, 0x1E, 0x26, 0x10, 0x4B,  // .@,..&.K
                            /* 0410 */  0xA2, 0x95, 0x91, 0x8B, 0x86, 0x41, 0x04, 0x64,  // .....A.d
                            /* 0418 */  0xFD, 0x2A, 0x80, 0x58, 0x1A, 0x10, 0x01, 0xF9,  // .*.X....
                            /* 0420 */  0xFF, 0x0F                                       // ..
                        })
                    }

                    Device (WMIL)
                    {
                        Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                        Name (_UID, "LSK")  // _UID: Unique ID
                        Name (_WDG, Buffer (0x3C)
                        {
                            /* 0000 */  0xB9, 0xEC, 0x18, 0x7F, 0xE6, 0xED, 0x4F, 0x4A,  // ......OJ
                            /* 0008 */  0xA7, 0xCA, 0xB8, 0xDC, 0xF1, 0x5F, 0xA1, 0xD3,  // ....._..
                            /* 0010 */  0x53, 0x4B, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // SK..!...
                            /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                            /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x44, 0x46, 0x01, 0x00,  // ..).DF..
                            /* 0028 */  0x73, 0x9C, 0x64, 0x1F, 0xC5, 0xD9, 0x5A, 0x47,  // s.d...ZG
                            /* 0030 */  0xA8, 0xC9, 0x34, 0x73, 0x06, 0xCD, 0x33, 0x29,  // ..4s..3)
                            /* 0038 */  0xD0, 0x00, 0x01, 0x08                           // ....
                        })
                        Method (LLSK, 1, NotSerialized)
                        {
                            Return (One)
                        }

                        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                        {
                            Return (One)
                        }

                        Name (WQDF, Buffer (0x04D4)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                            /* 0008 */  0xC4, 0x04, 0x00, 0x00, 0xA8, 0x12, 0x00, 0x00,  // ........
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                            /* 0018 */  0x28, 0x43, 0x89, 0x00, 0x01, 0x06, 0x18, 0x42,  // (C.....B
                            /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0x28, 0x81, 0x42, 0x04,  // ....(.B.
                            /* 0028 */  0x0A, 0x40, 0xA4, 0x50, 0x30, 0x28, 0x0D, 0x20,  // .@.P0(. 
                            /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,  // ..!.LL..
                            /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,  // .y.`S.I.
                            /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,  // ...Q..J.
                            /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,  // .$.0/@..
                            /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,  // ..l.0-.1
                            /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,  // $..N.,.B
                            /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,  // B.(..[.v
                            /* 0068 */  0x44, 0x49, 0x16, 0x60, 0x19, 0x46, 0x04, 0x1E,  // DI.`.F..
                            /* 0070 */  0x45, 0x64, 0xA3, 0x71, 0x68, 0xEC, 0x30, 0x2C,  // Ed.qh.0,
                            /* 0078 */  0x13, 0x4C, 0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45,  // .L.8...E
                            /* 0080 */  0xE0, 0x09, 0x75, 0x2A, 0x40, 0xAE, 0x00, 0x61,  // ..u*@..a
                            /* 0088 */  0x02, 0xC4, 0xA3, 0x0A, 0xA3, 0x39, 0x28, 0x32,  // .....9(2
                            /* 0090 */  0x87, 0xD0, 0x18, 0x31, 0x63, 0x22, 0xB0, 0x9D,  // ...1c"..
                            /* 0098 */  0x63, 0x6B, 0x14, 0xA7, 0x51, 0xB8, 0x00, 0xE9,  // ck..Q...
                            /* 00A0 */  0x18, 0x1A, 0xC1, 0x71, 0x1D, 0x83, 0xC1, 0x82,  // ...q....
                            /* 00A8 */  0x1C, 0x8A, 0x21, 0x0A, 0x1A, 0x82, 0xAC, 0x0E,  // ..!.....
                            /* 00B0 */  0x47, 0x16, 0x05, 0x28, 0x85, 0x91, 0x4B, 0x34,  // G..(..K4
                            /* 00B8 */  0x0D, 0x30, 0xC8, 0x21, 0x19, 0xDE, 0x08, 0x61,  // .0.!...a
                            /* 00C0 */  0xA2, 0x05, 0x0D, 0xEC, 0x01, 0x24, 0xF0, 0x80,  // .....$..
                            /* 00C8 */  0x8E, 0x04, 0x23, 0x03, 0x42, 0x9E, 0x05, 0x58,  // ..#.B..X
                            /* 00D0 */  0x1F, 0x22, 0x21, 0xB0, 0x7B, 0x01, 0xC6, 0x04,  // ."!.{...
                            /* 00D8 */  0x68, 0x14, 0xA0, 0x6D, 0x52, 0x1A, 0x54, 0x87,  // h..mR.T.
                            /* 00E0 */  0x02, 0xBC, 0x09, 0x70, 0x26, 0xC0, 0xD6, 0x88,  // ...p&...
                            /* 00E8 */  0x04, 0x63, 0x6B, 0x28, 0xC2, 0x8A, 0x14, 0xA4,  // .ck(....
                            /* 00F0 */  0x41, 0x14, 0x41, 0x14, 0x07, 0x25, 0xB0, 0x28,  // A.A..%.(
                            /* 00F8 */  0x11, 0x63, 0x19, 0xE3, 0x04, 0x63, 0x47, 0x0A,  // .c...cG.
                            /* 0100 */  0x1B, 0x25, 0x42, 0x65, 0x68, 0xB2, 0x3F, 0x08,  // .%Beh.?.
                            /* 0108 */  0x22, 0xCA, 0xC1, 0x81, 0x80, 0x45, 0x1A, 0x0D,  // "....E..
                            /* 0110 */  0xEA, 0x10, 0x90, 0xE0, 0xA1, 0xC0, 0x07, 0x82,  // ........
                            /* 0118 */  0x93, 0x3A, 0xAF, 0xA3, 0x3A, 0xE9, 0x20, 0x27,  // .:..:. '
                            /* 0120 */  0x7A, 0x60, 0x75, 0x9E, 0x06, 0xC8, 0xB8, 0xD9,  // z`u.....
                            /* 0128 */  0xD4, 0xCC, 0xAE, 0xE3, 0x01, 0x04, 0xD7, 0xF3,  // ........
                            /* 0130 */  0x24, 0x04, 0xFF, 0xFF, 0xA7, 0x02, 0x0F, 0x33,  // $......3
                            /* 0138 */  0x1C, 0x66, 0x88, 0x1E, 0xAC, 0x27, 0x70, 0x88,  // .f...'p.
                            /* 0140 */  0x0C, 0xD0, 0x93, 0x7A, 0x20, 0xC0, 0xCE, 0xEB,  // ...z ...
                            /* 0148 */  0x64, 0x9E, 0x06, 0x4A, 0x15, 0x60, 0x76, 0xEC,  // d..J.`v.
                            /* 0150 */  0x84, 0xE0, 0x78, 0x7C, 0x0C, 0xF0, 0x7C, 0x4E,  // ..x|..|N
                            /* 0158 */  0x38, 0x81, 0xE5, 0x0F, 0x02, 0x35, 0x32, 0x43,  // 8....52C
                            /* 0160 */  0x7B, 0xA8, 0xA7, 0xF5, 0x36, 0xE0, 0x03, 0x80,  // {...6...
                            /* 0168 */  0x09, 0x2C, 0xF6, 0x2C, 0x41, 0xC7, 0x03, 0x7E,  // .,.,A..~
                            /* 0170 */  0xC5, 0xC7, 0x03, 0x21, 0xBC, 0x32, 0x78, 0xBE,  // ...!.2x.
                            /* 0178 */  0x3E, 0x51, 0xE8, 0x68, 0xA1, 0xF1, 0xE0, 0x4E,  // >Q.h...N
                            /* 0180 */  0x15, 0xBE, 0x20, 0x60, 0xC0, 0x8F, 0xF6, 0x7D,  // .. `...}
                            /* 0188 */  0x21, 0xCC, 0x7B, 0x40, 0xDC, 0x83, 0xB7, 0xD6,  // !.{@....
                            /* 0190 */  0x1B, 0x04, 0x21, 0x70, 0x6C, 0x08, 0x7D, 0x35,  // ..!pl.}5
                            /* 0198 */  0x2C, 0x6A, 0xF0, 0xF4, 0x60, 0xC1, 0xCF, 0x14,  // ,j..`...
                            /* 01A0 */  0x0C, 0x98, 0x8F, 0xE7, 0xB4, 0x7C, 0xF4, 0xF0,  // .....|..
                            /* 01A8 */  0xF0, 0xE0, 0x9F, 0x1B, 0x70, 0x07, 0x0A, 0x60,  // ....p..`
                            /* 01B0 */  0x32, 0x40, 0x7E, 0xA5, 0xC0, 0x8E, 0x1C, 0x7C,  // 2@~....|
                            /* 01B8 */  0x58, 0x81, 0x31, 0xFF, 0x7F, 0x60, 0x0F, 0xDD,  // X.1..`..
                            /* 01C0 */  0x7E, 0x05, 0x20, 0x04, 0x3F, 0xA7, 0x47, 0x83,  // ~. .?.G.
                            /* 01C8 */  0x23, 0x8A, 0x70, 0x58, 0x46, 0x7F, 0x84, 0xE8,  // #.pXF...
                            /* 01D0 */  0x73, 0xE2, 0x82, 0x88, 0x76, 0x58, 0x98, 0x59,  // s...vX.Y
                            /* 01D8 */  0xC5, 0x38, 0x8C, 0x48, 0x31, 0xA2, 0x45, 0xF4,  // .8.H1.E.
                            /* 01E0 */  0x4C, 0x12, 0x14, 0x39, 0x56, 0xF4, 0x20, 0x38,  // L..9V. 8
                            /* 01E8 */  0xDE, 0x39, 0x1C, 0x52, 0xCC, 0xF8, 0xE1, 0xA3,  // .9.R....
                            /* 01F0 */  0x9C, 0xC7, 0x31, 0xF9, 0x94, 0x62, 0x84, 0xB3,  // ..1..b..
                            /* 01F8 */  0x7B, 0x38, 0x79, 0x58, 0xB1, 0xE6, 0x49, 0xE9,  // {8yX..I.
                            /* 0200 */  0xF4, 0x71, 0x5A, 0x0F, 0x21, 0x6C, 0xE4, 0x87,  // .qZ.!l..
                            /* 0208 */  0x80, 0x39, 0x5C, 0x78, 0x08, 0x7C, 0x3E, 0x98,  // .9\x.|>.
                            /* 0210 */  0x89, 0xE1, 0xCE, 0x33, 0xFC, 0x54, 0x82, 0x1D,  // ...3.T..
                            /* 0218 */  0x00, 0x97, 0x66, 0x03, 0x84, 0xC9, 0x7F, 0x1B,  // ..f.....
                            /* 0220 */  0x48, 0xDE, 0x23, 0x81, 0xC2, 0xF8, 0x84, 0x03,  // H.#.....
                            /* 0228 */  0xB8, 0x12, 0x7C, 0x82, 0x00, 0xD1, 0xD9, 0x00,  // ..|.....
                            /* 0230 */  0x36, 0xF8, 0xD1, 0x3F, 0x1A, 0x84, 0x78, 0x7B,  // 6..?..x{
                            /* 0238 */  0x08, 0x7F, 0x30, 0x47, 0xF3, 0x0C, 0xE1, 0x03,  // ..0G....
                            /* 0240 */  0x0E, 0xFF, 0xFF, 0x1F, 0x70, 0x60, 0x9E, 0x69,  // ....p`.i
                            /* 0248 */  0x1E, 0x70, 0x9E, 0x70, 0xDE, 0x6B, 0x8E, 0xE0,  // .p.p.k..
                            /* 0250 */  0x6D, 0xA0, 0xC2, 0x8B, 0x0D, 0x41, 0x39, 0x85,  // m....A9.
                            /* 0258 */  0x10, 0xEF, 0x35, 0x0F, 0x38, 0x9E, 0x43, 0x88,  // ..5.8.C.
                            /* 0260 */  0x80, 0x0F, 0x38, 0x06, 0x0D, 0xF8, 0x8A, 0x63,  // ..8....c
                            /* 0268 */  0xC8, 0xB0, 0x01, 0xC3, 0xC4, 0xF6, 0x39, 0x27,  // ......9'
                            /* 0270 */  0x46, 0xA8, 0x20, 0x6F, 0x38, 0x3E, 0xE0, 0xB0,  // F. o8>..
                            /* 0278 */  0x80, 0xE7, 0x01, 0x1D, 0x44, 0x7C, 0xC0, 0x01,  // ....D|..
                            /* 0280 */  0xF8, 0x71, 0x2E, 0x01, 0x0E, 0x87, 0x05, 0x4E,  // .q.....N
                            /* 0288 */  0xE0, 0x73, 0x09, 0xFC, 0xFF, 0xFF, 0xB9, 0x04,  // .s......
                            /* 0290 */  0x3C, 0x91, 0x4D, 0x1C, 0x09, 0x98, 0x76, 0x0A,  // <.M...v.
                            /* 0298 */  0xD9, 0x58, 0xAD, 0x4F, 0x05, 0x34, 0xD3, 0x8A,  // .X.O.4..
                            /* 02A0 */  0xE5, 0x11, 0x57, 0x98, 0x4F, 0x41, 0x58, 0xF4,  // ..W.OAX.
                            /* 02A8 */  0x43, 0x67, 0x29, 0x00, 0x75, 0x8C, 0xE3, 0xFA,  // Cg).u...
                            /* 02B0 */  0x29, 0xA4, 0x8C, 0x46, 0x23, 0x32, 0x9C, 0xB5,  // )..F#2..
                            /* 02B8 */  0xC0, 0x08, 0xCE, 0x20, 0x06, 0x74, 0x50, 0x08,  // ... .tP.
                            /* 02C0 */  0x39, 0x39, 0x0E, 0xA0, 0x7E, 0x75, 0x9A, 0x92,  // 99..~u..
                            /* 02C8 */  0x66, 0xC1, 0x20, 0x5E, 0x77, 0x18, 0xC1, 0x54,  // f. ^w..T
                            /* 02D0 */  0x57, 0x23, 0x3A, 0x47, 0x5F, 0x07, 0xF8, 0x2D,  // W#:G_..-
                            /* 02D8 */  0xC5, 0x07, 0x04, 0x83, 0xFB, 0x48, 0xF1, 0xF6,  // .....H..
                            /* 02E0 */  0x01, 0x96, 0xD1, 0x06, 0xF1, 0x75, 0xC1, 0x07,  // .....u..
                            /* 02E8 */  0x02, 0x6F, 0xF2, 0x44, 0x30, 0x6A, 0x4E, 0x4C,  // .o.D0jNL
                            /* 02F0 */  0xA8, 0x69, 0xF8, 0x72, 0xF0, 0x5A, 0x63, 0x02,  // .i.r.Zc.
                            /* 02F8 */  0xEB, 0xBA, 0x23, 0x40, 0x3F, 0x80, 0x78, 0x14,  // ..#@?.x.
                            /* 0300 */  0xBE, 0x9E, 0x99, 0xA0, 0xBE, 0x33, 0x02, 0x28,  // .....3.(
                            /* 0308 */  0x80, 0x7C, 0x21, 0xF0, 0xFD, 0xE0, 0xA1, 0x80,  // .|!.....
                            /* 0310 */  0x8D, 0xE1, 0x15, 0xC1, 0x68, 0x46, 0xE7, 0x22,  // ....hF."
                            /* 0318 */  0x27, 0x8F, 0x92, 0x35, 0x79, 0x0A, 0xE2, 0xC9,  // '..5y...
                            /* 0320 */  0x3B, 0xF2, 0xE4, 0xD1, 0x17, 0x0A, 0x1F, 0x09,  // ;.......
                            /* 0328 */  0x38, 0x81, 0x23, 0x8E, 0x9D, 0xDE, 0x3F, 0xF0,  // 8.#...?.
                            /* 0330 */  0x93, 0x3D, 0xB5, 0xC7, 0x04, 0x23, 0xFF, 0xFF,  // .=...#..
                            /* 0338 */  0x43, 0xBC, 0x20, 0x79, 0xF0, 0xE0, 0x38, 0x57,  // C. y..8W
                            /* 0340 */  0xC1, 0x19, 0x0B, 0x47, 0x79, 0x5B, 0xC0, 0x0E,  // ...Gy[..
                            /* 0348 */  0xC6, 0x17, 0x00, 0x3E, 0x0E, 0x5F, 0x00, 0xF8,  // ...>._..
                            /* 0350 */  0xF8, 0x7C, 0xE9, 0x80, 0x7F, 0x02, 0xC0, 0x12,  // .|......
                            /* 0358 */  0x14, 0x78, 0x03, 0x00, 0x39, 0x3C, 0x26, 0xDE,  // .x..9<&.
                            /* 0360 */  0xA8, 0xA8, 0xAC, 0x71, 0xA1, 0x06, 0xEB, 0xAB,  // ...q....
                            /* 0368 */  0x11, 0xC3, 0x7E, 0xC2, 0xB0, 0xE8, 0xB1, 0xEA,  // ..~.....
                            /* 0370 */  0x32, 0xF1, 0xA6, 0x86, 0x81, 0xF5, 0xF0, 0x39,  // 2......9
                            /* 0378 */  0xAC, 0xD1, 0xC2, 0x1E, 0xF5, 0xBB, 0x89, 0x0F,  // ........
                            /* 0380 */  0x36, 0x9E, 0x99, 0x31, 0xC2, 0xFA, 0x08, 0xE0,  // 6..1....
                            /* 0388 */  0xDB, 0xC7, 0x23, 0x00, 0x98, 0x4F, 0x6A, 0xB0,  // ..#..Oj.
                            /* 0390 */  0xAE, 0x08, 0x18, 0x41, 0x6F, 0x05, 0xDD, 0x46,  // ...Ao..F
                            /* 0398 */  0xF8, 0x38, 0x2C, 0x79, 0x5D, 0xBA, 0x8D, 0xB0,  // .8,y]...
                            /* 03A0 */  0x09, 0xB0, 0xCB, 0x0F, 0x4E, 0xE6, 0xC9, 0x81,  // ....N...
                            /* 03A8 */  0x42, 0x58, 0xE0, 0x7D, 0xCB, 0x07, 0x08, 0x94,  // BX.}....
                            /* 03B0 */  0x20, 0x38, 0x0A, 0xE2, 0x03, 0x84, 0xC3, 0x0A,  //  8......
                            /* 03B8 */  0xF8, 0xFF, 0xDF, 0x89, 0xB0, 0x07, 0x08, 0x7C,  // .......|
                            /* 03C0 */  0xB8, 0x03, 0x04, 0x28, 0x2E, 0x32, 0xF8, 0xE1,  // ...(.2..
                            /* 03C8 */  0x82, 0x6B, 0x78, 0xB8, 0xD3, 0x03, 0x3C, 0x02,  // .kx...<.
                            /* 03D0 */  0x5F, 0x90, 0xC0, 0x77, 0x7A, 0x00, 0x1E, 0xA1,  // _..wz...
                            /* 03D8 */  0x4E, 0x0F, 0xA0, 0x3B, 0x05, 0xF8, 0xF4, 0x00,  // N..;....
                            /* 03E0 */  0xAE, 0xF1, 0x03, 0x0F, 0x8D, 0x2F, 0x03, 0xDD,  // ...../..
                            /* 03E8 */  0x8A, 0x70, 0x8A, 0xD7, 0x26, 0xE8, 0xB7, 0x22,  // .p..&.."
                            /* 03F0 */  0x98, 0x1A, 0x01, 0x75, 0x2B, 0x62, 0xFF, 0x7F,  // ...u+b..
                            /* 03F8 */  0x82, 0xEA, 0x60, 0x94, 0xFF, 0xE4, 0x80, 0x4A,  // ..`....J
                            /* 0400 */  0x7C, 0x72, 0xA0, 0x20, 0x1E, 0xAD, 0x6F, 0x45,  // |r. ..oE
                            /* 0408 */  0x80, 0xCF, 0x98, 0xA7, 0x1F, 0x28, 0xB7, 0xB4,  // .....(..
                            /* 0410 */  0xF3, 0xC6, 0xC4, 0x9A, 0x22, 0xF4, 0x9B, 0x25,  // ...."..%
                            /* 0418 */  0x6E, 0x8A, 0xE0, 0x1A, 0x09, 0x6E, 0x8C, 0xB0,  // n....n..
                            /* 0420 */  0x6E, 0x03, 0xBE, 0x48, 0x01, 0xDF, 0xFF, 0x3F,  // n..H...?
                            /* 0428 */  0x81, 0xC5, 0xDD, 0x17, 0x50, 0x72, 0xEE, 0x0B,  // ....Pr..
                            /* 0430 */  0x14, 0xC4, 0xF7, 0x06, 0x47, 0x9D, 0x3B, 0x1A,  // ....G.;.
                            /* 0438 */  0xDA, 0x67, 0x1B, 0xDF, 0x57, 0x7C, 0x6F, 0x01,  // .g..W|o.
                            /* 0440 */  0x2E, 0x73, 0xC7, 0x1F, 0x7A, 0xD8, 0x81, 0x0E,  // .s..z...
                            /* 0448 */  0x73, 0x6F, 0x81, 0x37, 0x32, 0x5F, 0xA2, 0x80,  // so.72_..
                            /* 0450 */  0xF7, 0xB5, 0xC3, 0xF7, 0x16, 0x70, 0xC1, 0xF2,  // .....p..
                            /* 0458 */  0x7B, 0x0B, 0x78, 0xC0, 0xDE, 0x5B, 0xC0, 0x78,  // {.x..[.x
                            /* 0460 */  0x04, 0xC0, 0x5F, 0x7B, 0x3C, 0xA2, 0xB7, 0x88,  // .._{<...
                            /* 0468 */  0x28, 0xAF, 0x92, 0x6F, 0x2F, 0xBE, 0xB5, 0xB0,  // (..o/...
                            /* 0470 */  0x33, 0xBD, 0x2F, 0x28, 0xEC, 0xFF, 0x7F, 0x6C,  // 3./(...l
                            /* 0478 */  0xC1, 0x29, 0xB4, 0xE9, 0x53, 0xA3, 0x51, 0xAB,  // .)..S.Q.
                            /* 0480 */  0x06, 0x65, 0x6A, 0x94, 0x69, 0x50, 0xAB, 0x4F,  // .ej.iP.O
                            /* 0488 */  0xA5, 0xC6, 0x8C, 0x19, 0x39, 0x84, 0xFB, 0x21,  // ....9..!
                            /* 0490 */  0xA0, 0xE1, 0x39, 0x10, 0x08, 0x8D, 0x48, 0x21,  // ..9...H!
                            /* 0498 */  0x10, 0x47, 0xFE, 0x5D, 0x08, 0xC4, 0x82, 0x3D,  // .G.]...=
                            /* 04A0 */  0x80, 0x30, 0x29, 0x07, 0x47, 0x01, 0x5B, 0xD7,  // .0).G.[.
                            /* 04A8 */  0xD1, 0x91, 0x6A, 0x55, 0x01, 0xC4, 0x94, 0x83,  // ..jU....
                            /* 04B0 */  0x08, 0xC8, 0x29, 0x7E, 0x22, 0x02, 0x72, 0x26,  // ..)~".r&
                            /* 04B8 */  0x10, 0x01, 0x39, 0x95, 0x0E, 0x20, 0x16, 0x11,  // ..9.. ..
                            /* 04C0 */  0x44, 0xC7, 0x48, 0xE2, 0x03, 0x88, 0x05, 0x01,  // D.H.....
                            /* 04C8 */  0x11, 0x90, 0x43, 0x3D, 0x0B, 0x04, 0x48, 0x40,  // ..C=..H@
                            /* 04D0 */  0x04, 0xE4, 0xFF, 0x3F                           // ...?
                        })
                    }
                }
            }
        }
    }

    Scope (\)
    {
        Name (HPDT, Package (0x09)
        {
            "LEGACYHP", 
            0x80000000, 
            0x80000000, 
            "NATIVEHP", 
            0x80000000, 
            0x80000000, 
            "THERMALX", 
            0x80000000, 
            0x80000000
        })
        Name (DDB0, 0x00)
        Name (DDB1, 0x00)
        Name (DDB2, 0x00)
    }

    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((TBEN == Zero))
            {
                Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
                Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
            }

            Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP4, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP5, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP18, 0x02) // Device Wake
        }

        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
        }

        Method (_L15, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
        }

        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GP17.XHC0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17.XHC1, 0x02) // Device Wake
        }
    }

    OperationRegion (DBGB, SystemIO, 0x80, 0x01)
    Field (DBGB, ByteAcc, NoLock, Preserve)
    {
        P80B,   8
    }

    OperationRegion (DBGW, SystemIO, 0x80, 0x02)
    Field (DBGW, WordAcc, NoLock, Preserve)
    {
        P80W,   16
    }

    OperationRegion (DBGD, SystemIO, 0x80, 0x04)
    Field (DBGD, DWordAcc, NoLock, Preserve)
    {
        P80D,   32
    }

    Name (TSOS, 0x75)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            TSOS = 0x50
        }

        If (_OSI ("Windows 2015"))
        {
            TSOS = 0x70
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
        Field (SMIC, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36A), 
            SMIB,   8
        }

        OperationRegion (SSMI, SystemIO, SMIB, 0x02)
        Field (SSMI, AnyAcc, NoLock, Preserve)
        {
            SMIW,   16
        }

        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
            SPIE,   1, 
            P80E,   1, 
                ,   2, 
            NI2C,   1, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
            SDMC,   1, 
                ,   2, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA306C), 
            RAR2,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1, 
            Offset (0xA30D0), 
                ,   13, 
            LCLK,   2
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            IM17,   8, 
            Offset (0x20), 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FMIS, SystemMemory, 0xFED80E00, 0x0100)
        Field (FMIS, AnyAcc, NoLock, Preserve)
        {
            Offset (0x40), 
                ,   13, 
            I24M,   1
        }

        OperationRegion (FGIO, SystemMemory, 0xFED81500, 0x0300)
        Field (FGIO, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA8), 
                ,   22, 
            O042,   1, 
            Offset (0x114), 
                ,   22, 
            O069,   1, 
            Offset (0x15A), 
                ,   6, 
            O086,   1, 
            Offset (0x15B), 
            Offset (0x164), 
            Offset (0x166), 
            V089,   1, 
                ,   5, 
            O089,   1
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x62), 
            AMTD,   2, 
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        OperationRegion (SPIM, SystemMemory, 0xFEC10000, 0x0100)
        Field (SPIM, AnyAcc, NoLock, Preserve)
        {
            Offset (0x1D), 
            ASCE,   2, 
            Offset (0x22), 
            SSSC,   16, 
            Offset (0xFC), 
            STRN,   1, 
                ,   2, 
            BOWS,   1, 
            DOWS,   1
        }

        Mutex (ASSM, 0x00)
        Name (SVBF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateDWordField (SVBF, 0x00, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        CreateWordField (SVBF, 0x14, RG22)
        CreateDWordField (SVBF, 0x18, SAR2)
        Method (SECR, 0, Serialized)
        {
            S116 = E116 /* \_SB_.E116 */
            RQTY = Zero
            RD28 = One
            Local0 = SD28 /* \_SB_.SD28 */
            While (Local0)
            {
                Local0 = SD28 /* \_SB_.SD28 */
            }
        }

        Method (RECR, 0, Serialized)
        {
            E116 = S116 /* \_SB_.S116 */
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 1, Serialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (IUA0) /* \_SB_.IUA0 */
            }

            If ((Arg0 == 0x01))
            {
                Return (IUA1) /* \_SB_.IUA1 */
            }

            If ((Arg0 == 0x02))
            {
                Return (IUA2) /* \_SB_.IUA2 */
            }

            If ((Arg0 == 0x03))
            {
                Return (IUA3) /* \_SB_.IUA3 */
            }

            Return (Zero)
        }

        Method (OP80, 1, Serialized)
        {
            If (P80E)
            {
                P80D = Arg0
            }
        }

        Method (SRAD, 2, Serialized)
        {
            Local1 = (Arg1 << 0x05)
            Local1 += 0xB000AF80
            Local1 += Arg0
            OP80 (Local1)
            Local0 = (Arg0 << 0x01)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            ADIS = One
            ADSR = Zero
            Stall (Arg1)
            ADSR = One
            ADIS = Zero
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            Local1 = (Arg1 << 0x05)
            Local1 += 0xB000AF80
            Local1 += Arg0
            OP80 (Local1)
            Local0 = (Arg0 << 0x01)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == 0x00))
                {
                    ADTD = 0x00
                    ADPD = One
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x00))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            Local0 = (Arg0 << 0x01)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == 0x00))
                {
                    ADTD = 0x00
                    ADPD = One
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    RQTY = One
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (!Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    RQTY = Zero
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }

                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x00))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (FPIC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (SPI1)
        {
            Name (_HID, "AMDI0060")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (SPIE)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC10000,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPI1._CRS.RBUF */
            }

            Method (ASSC, 2, Serialized)
            {
                Acquire (ASSM, 0xFFFF)
                Local0 = Arg1
                Switch (ToInteger (Arg0))
                {
                    Case (0x03)
                    {
                        DOWS = One
                        STRN = One
                        While ((BOWS && STRN))
                        {
                            If (Arg1)
                            {
                                Stall (0x01)
                                Local0 -= One
                                If ((Local0 == Zero))
                                {
                                    Break
                                }
                            }
                        }

                        SAR2 = RAR2 /* \_SB_.RAR2 */
                        RAR2 = Zero
                        ASCE = 0x02
                        RG22 = SSSC /* \_SB_.SSSC */
                    }
                    Case (0x04)
                    {
                        SSSC = RG22 /* \_SB_.RG22 */
                        ASCE = Zero
                        RAR2 = SAR2 /* \_SB_.SAR2 */
                        Local0 = One
                        DOWS = Zero
                    }

                }

                Release (ASSM)
                Return (Local0)
            }
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (RST, 0, NotSerialized)
            {
                Notify (GPIO, 0x00) // Bus Check
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {3}
                Memory32Fixed (ReadWrite,
                    0xFEDC9000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC7000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT0E == One))
                    {
                        If (UOL0)
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT0D && UT0E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, 0x03)
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {4}
                Memory32Fixed (ReadWrite,
                    0xFEDCA000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC8000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT1E == One))
                    {
                        If (UOL1)
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT1D && UT1E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, 0x03)
                }
            }
        }

        Device (FUR2)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {15}
                Memory32Fixed (ReadWrite,
                    0xFEDCE000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCC000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT2E == One))
                    {
                        If (UOL2)
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT2D && UT2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, 0x03)
                }
            }
        }

        Device (FUR3)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {5}
                Memory32Fixed (ReadWrite,
                    0xFEDCF000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCD000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT3E == One))
                    {
                        If (UOL3)
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT3D && UT3E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, 0x03)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0011")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (_ADR, 0x00)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^PCI0.GP17.MP2C
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        If ((NI2C == Zero))
                        {
                            Return (0x00)
                        }
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0011")  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_ADR, 0x01)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^PCI0.GP17.MP2C
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        If ((NI2C == Zero))
                        {
                            Return (0x00)
                        }
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {14}
                Memory32Fixed (ReadWrite,
                    0xFEDC4000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC2E == One))
                    {
                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC2D && IC2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, 0x03)
                }
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {6}
                Memory32Fixed (ReadWrite,
                    0xFEDC5000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC3E == One))
                    {
                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                // Fix ELAN0643: forcer D0 en S0, interdire D3hot runtime PM
                Return (0x00)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC3D && IC3E))
                {
                    DSAD (0x08, 0x00)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                // Fix ELAN0643: neutralisé — empêche la mise en D3hot du contrôleur I2CD
            }
        }

        Device (I2CE)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        If ((NI2C == One))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x09, 0xC8)
            }
        }

        Device (I2CF)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        If ((NI2C == One))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0A, 0xC8)
            }
        }

        Method (EPIN, 0, NotSerialized)
        {
            IPDE = Zero
            IMPE = 0xFF00
            IM15 = One
            IM44 = One
            IM46 = One
            IM68 = One
            IM69 = One
            IM6A = One
            IM6B = One
            If ((EMMD != 0x01))
            {
                IM4A = One
                IM58 = One
                IM4B = One
                IM57 = One
                IM6D = One
            }

            SECR ()
        }

        Name (NCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (DCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
            GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (ECRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (AHID, "AMDI0040")
        Name (ACID, "AMDI0040")
        Name (MHID, "AMDI0041")
        Name (MCID, "AMDI0041")
        Name (SHID, 0x400DD041)
        Name (SCID, "PCI\\CC_080501")
        Device (EMM0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((EMMD == 0x00))
                {
                    Return (AHID) /* \_SB_.AHID */
                }

                If ((EMMD == 0x01))
                {
                    Return (SHID) /* \_SB_.SHID */
                }

                If ((EMMD == 0x02))
                {
                    Return (MHID) /* \_SB_.MHID */
                }

                Return (Zero)
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If ((EMMD == 0x00))
                {
                    Return (ACID) /* \_SB_.ACID */
                }

                If ((EMMD == 0x01))
                {
                    Return (SCID) /* \_SB_.SCID */
                }

                If ((EMMD == 0x02))
                {
                    Return (MCID) /* \_SB_.MCID */
                }

                Return (Zero)
            }

            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (EMD3)
                {
                    If ((EMMD == 0x01))
                    {
                        Return (DCRS) /* \_SB_.DCRS */
                    }

                    Return (ECRS) /* \_SB_.ECRS */
                }
                Else
                {
                    Return (NCRS) /* \_SB_.NCRS */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If (EMME)
                    {
                        Return (0x0F)
                    }

                    Return (0x00)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (EMME)
                {
                    EPIN ()
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((EMD3 && EMME))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, 0x00)
                    RECR ()
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, 0x03)
                }
            }

            Device (CARD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If ((EMMD == 0x01))
                    {
                        If ((SDMC == 0x01))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER0 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y08)
                    IRQNoFlags (_Y09)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y08._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y08._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR1._CRS._Y09._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR0))
                Return (BUF0) /* \_SB_.PCI0.UAR1._CRS.BUF0 */
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER1 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0A)
                    IRQNoFlags (_Y0B)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y0A._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y0A._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR2._CRS._Y0B._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR1))
                Return (BUF0) /* \_SB_.PCI0.UAR2._CRS.BUF0 */
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER2 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0C)
                    IRQNoFlags (_Y0D)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y0C._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y0C._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR3._CRS._Y0D._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR2))
                Return (BUF0) /* \_SB_.PCI0.UAR3._CRS.BUF0 */
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Name (_UID, 0x01)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER3 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0E)
                    IRQNoFlags (_Y0F)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y0E._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y0E._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR4._CRS._Y0F._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR3))
                Return (BUF0) /* \_SB_.PCI0.UAR4._CRS.BUF0 */
            }
        }
    }

    Scope (_SB.PCI0.GP17.VGA)
    {
        Method (ICLE, 0, NotSerialized)
        {
            I24M = Zero
        }

        Method (ICLD, 0, NotSerialized)
        {
            I24M = One
        }
    }

    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ICMS,   8, 
        DCMS,   8
    }

    Name (CDAT, 0x00)
    Scope (_SB.I2CD)
    {
        Device (TPD0)
        {
            Name (_HID, "ELAN0643")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies — Fix ELAN0643: forcer probe après GPIO
            {
                \_SB.GPIO
            })
            ICMS = 0x0A
            DCMS = 0x01
            ICMS = 0x20
            CDAT = DCMS /* \DCMS */
            If ((CDAT == 0x02))
            {
                _HID = "SYNA2392"
            }

            If ((CDAT == 0x01))
            {
                _HID = "ELAN0643"
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CDAT == 0x00))
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (0x00)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (0x01)
                                {
                                    Return (Buffer (0x01)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (0x01)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (0x01)
                        {
                            If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                            {
                                Return (0x01)
                            }
							Else
                            //If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                            {
                                Return (0x20)
                            }
                        }
                        Default
                        {
                            Return (0x00)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBFG, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x01))
                {
                    Name (SBFB, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2CD",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }
				Else
                //If ((^^^PCI0.LPC0.H_EC.ECRD (RefOf (^^^PCI0.LPC0.H_EC.TPTY)) == 0x02))
                {
                    Name (SBFC, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2CD",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (ConcatenateResTemplate (SBFC, SBFG))
                }
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (TPL1)
        {
            Name (HID2, Zero)
            Name (_HID, "ELAN238E")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_HRV, 0x01)  // _HRV: Hardware Revision
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Name (CDAT, 0x00)
            ICMS = 0x0A
            DCMS = 0x01
            ICMS = 0x21
            CDAT = DCMS /* \DCMS */
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2CC",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (RBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0039, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2CC",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                    "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0054
                    }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((CDAT == 0x01) || (CDAT == 0x02)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((CDAT == 0x02))
                {
                    _HID = "RAYD0001"
                    Return (ConcatenateResTemplate (RBFB, SBFG))
                }
                Else
                {
                    _HID = "ELAN238E"
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Debug = "Method _DSM begin"
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (0x00)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (0x01)
                                {
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (0x01)
                        {
                            Debug = "Method _DSM Function HID"
                            Return (0x01)
                        }
                        Default
                        {
                            Return (0x00)
                        }

                    }
                }
                ElseIf ((Arg0 == ToUUID ("ef87eb82-f951-46da-84ec-14871ac6f84b") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (ConcatenateResTemplate (SBFB, SBFG))
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                O069 = 0x00
                Sleep (0x0A)
                Sleep (0x1E)
                O069 = 0x01
                Sleep (0x9B)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (TZ01)
        {
            Name (CRTT, 0x5A)
            Name (PSVT, 0x32)
            Name (TSPS, 0x14)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (0x0B74)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                Return (Package (0x08)
                {
                    \_PR.C000, 
                    \_PR.C001, 
                    \_PR.C002, 
                    \_PR.C003, 
                    \_PR.C004, 
                    \_PR.C005, 
                    \_PR.C006, 
                    \_PR.C007
                })
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return ((0x0AAC + (CRTT * 0x0A)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return ((0x0AAC + (PSVT * 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (One)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (0x02)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPS) /* \_TZ_.TZ01.TSPS */
            }
        }
    }

    OperationRegion (SMI0, SystemIO, 0xB0, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMW,   8
    }

    Device (WMI1)
    {
        Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
        Name (_CID, "LBGNB")  // _CID: Compatible ID
        Name (_UID, 0x01)  // _UID: Unique ID
        Name (_WDG, Buffer (0xB4)
        {
            /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  // .#.Qw..F
            /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  // ....>.M.
            /* 0010 */  0x41, 0x30, 0x50, 0x05, 0x64, 0x9A, 0x47, 0x98,  // A0P.d.G.
            /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,  // .33N...%
            /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,  // ....A1..
            /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,  // .TKj..3M
            /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,  // .U......
            /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,  // A2.....t
            /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,  // z.}L..i.
            /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,  // !...A3..
            /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,  // ...~(C|D
            /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,  // ...I.]S.
            /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,  // A4......
            /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,  // 2.\E..0.
            /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,  // ~..FA5..
            /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,  // ..Q&..iK
            /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,  // .N....;.
            /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,  // A6...eds
            /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,  // /..O..@.
            /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,  // ...;A7..
            /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
            /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
            /* 00B0 */  0x42, 0x41, 0x01, 0x00                           // BA..
        })
        Name (RETN, Package (0x05)
        {
            "Success", 
            "Not Supported", 
            "Invalid Parameter", 
            "Access Denied", 
            "System Busy"
        })
        Name (ITEM, Package (0x32)
        {
            Package (0x02)
            {
                0x00, 
                "USBLegacy"
            }, 

            Package (0x02)
            {
                0x00, 
                "WirelessLAN"
            }, 

            Package (0x02)
            {
                0x02, 
                "SATAControllerMode"
            }, 

            Package (0x02)
            {
                0x00, 
                "PowerBeep"
            }, 

            Package (0x02)
            {
                0x00, 
                "AMDVTMTechnology"
            }, 

            Package (0x02)
            {
                0x00, 
                "BiosBackFlash"
            }, 

            Package (0x02)
            {
                0x00, 
                "HotkeyMode"
            }, 

            Package (0x02)
            {
                0x00, 
                "FastBoot"
            }, 

            Package (0x02)
            {
                0x00, 
                "IntelHyperThreading"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "AMDPlatformSecurityProcessor"
            }, 

            Package (0x02)
            {
                0x06, 
                "ClearAMDPSPKey"
            }, 

            Package (0x02)
            {
                0x01, 
                "IntelSGXControl"
            }, 

            Package (0x02)
            {
                0x00, 
                "SecureBoot"
            }, 

            Package (0x02)
            {
                0x06, 
                "ResetToSetupMode"
            }, 

            Package (0x02)
            {
                0x06, 
                "RestoreFactoryKeys"
            }, 

            Package (0x02)
            {
                0x00, 
                "SecurityChip"
            }, 

            Package (0x02)
            {
                0x06, 
                "ClearSecurityChipKey"
            }, 

            Package (0x02)
            {
                0x00, 
                "PowerOnPassword"
            }, 

            Package (0x02)
            {
                0x06, 
                "ClearUserPassword"
            }, 

            Package (0x02)
            {
                0x04, 
                "BootMode"
            }, 

            Package (0x02)
            {
                0x05, 
                "BootPriority"
            }, 

            Package (0x02)
            {
                0x00, 
                "USBBoot"
            }, 

            Package (0x02)
            {
                0x00, 
                "ESATABoot"
            }, 

            Package (0x02)
            {
                0x00, 
                "PxeBootToLAN"
            }, 

            Package (0x02)
            {
                0x00, 
                "FoolProofFnCtrl"
            }, 

            Package (0x02)
            {
                0x00, 
                "AlwaysOnUsb"
            }, 

            Package (0x02)
            {
                0x00, 
                "ChargeInBattery"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x64, 
                "BootOrder"
            }, 

            Package (0x02)
            {
                0x03, 
                "OSOptimizedDefaults"
            }, 

            Package (0x02)
            {
                0x00, 
                "EthernetLAN"
            }, 

            Package (0x02)
            {
                0x00, 
                "WirelessWAN"
            }, 

            Package (0x02)
            {
                0x00, 
                "Bluetooth"
            }, 

            Package (0x02)
            {
                0x00, 
                "USBPort"
            }, 

            Package (0x02)
            {
                0x00, 
                "MemoryCardSlot"
            }, 

            Package (0x02)
            {
                0x00, 
                "SmartCardSlot"
            }, 

            Package (0x02)
            {
                0x00, 
                "IntegratedCamera"
            }, 

            Package (0x02)
            {
                0x00, 
                "Microphone"
            }, 

            Package (0x02)
            {
                0x00, 
                "FingerprintReader"
            }, 

            Package (0x02)
            {
                0x00, 
                "Thunderbolt"
            }, 

            Package (0x02)
            {
                0x00, 
                "NFC"
            }, 

            Package (0x02)
            {
                0x00, 
                "FlipBoot"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }, 

            Package (0x02)
            {
                0x00, 
                "Reserved"
            }
        })
        Name (VSEL, Package (0x07)
        {
            Package (0x02)
            {
                "Disable", 
                "Enable"
            }, 

            Package (0x03)
            {
                "Disable", 
                "Enable", 
                "SoftwareControl"
            }, 

            Package (0x02)
            {
                "AHCI", 
                "RAID"
            }, 

            Package (0x02)
            {
                "Enable", 
                "Disable"
            }, 

            Package (0x02)
            {
                "LegacySupport", 
                "UEFI"
            }, 

            Package (0x02)
            {
                "UEFIFirst", 
                "LegacyFirst"
            }, 

            Package (0x02)
            {
                "", 
                "Enter"
            }
        })
        Name (VLST, Package (0x13)
        {
            "HDD1", 
            "HDD2", 
            "HDD3", 
            "HDD4", 
            "HDD0", 
            "PCILAN_IPV4", 
            "ATAPICD1", 
            "ATAPICD2", 
            "ATAPICD0", 
            "USBFDD", 
            "USBCD", 
            "USBHDD", 
            "OtherHDD", 
            "OtherCD", 
            "NVMe1", 
            "NVMe0", 
            "PCILAN_IPV6", 
            "PCILAN", 
            "NODEV"
        })
        Name (PENC, Package (0x02)
        {
            "ascii", 
            "scancode"
        })
        Name (PKBD, Package (0x03)
        {
            "us", 
            "fr", 
            "gr"
        })
        Name (PTYP, Package (0x08)
        {
            "pap", 
            "pop", 
            "uhdp1", 
            "mhdp1", 
            "uhdp2", 
            "mhdp2", 
            "uhdp3", 
            "mhdp3"
        })
        Mutex (MWMI, 0x00)
        Name (PCFG, Buffer (0x18){})
        Name (IBUF, Buffer (0x0100){})
        Name (ILEN, 0x00)
        Name (PSTR, Buffer (0x81){})
        Method (WQA0, 1, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            If ((WMIS (0x00, Arg0) != 0x00))
            {
                Release (MWMI)
                Return ("")
            }

            Local0 = DerefOf (ITEM [WITM])
            Local1 = DerefOf (Local0 [0x00])
            Local2 = DerefOf (Local0 [0x01])
            If ((Local1 < 0x64))
            {
                Concatenate (Local2, ",", Local6)
                Local3 = DerefOf (VSEL [Local1])
                Concatenate (Local6, DerefOf (Local3 [WSEL]), Local7)
            }
            Else
            {
                Local3 = SizeOf (VLST)
                If ((WLS0 <= Local3))
                {
                    Concatenate (Local2, ",", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS0]), Local2)
                }

                If ((WLS1 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS1]), Local2)
                }

                If ((WLS2 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS2]), Local2)
                }

                If ((WLS3 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS3]), Local2)
                }

                If ((WLS4 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS4]), Local2)
                }

                If ((WLS5 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS5]), Local2)
                }

                If ((WLS6 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS6]), Local2)
                }

                If ((WLS7 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS7]), Local2)
                }

                If ((WLS8 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS8]), Local2)
                }

                If ((WLS9 <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLS9]), Local2)
                }

                If ((WLSA <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLSA]), Local2)
                }

                If ((WLSB <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLSB]), Local2)
                }

                If ((WLSC <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLSC]), Local2)
                }

                If ((WLSD <= Local3))
                {
                    Concatenate (Local2, ":", Local7)
                    Concatenate (Local7, DerefOf (VLST [WLSD]), Local2)
                }

                Local7 = Local2
            }

            Release (MWMI)
            Return (Local7)
        }

        Method (GITM, 2, NotSerialized)
        {
            Local0 = 0x00
            Local1 = SizeOf (Arg1)
            While ((Local0 < Local1))
            {
                Local3 = DerefOf (DerefOf (Arg1 [Local0]) [0x01])
                If (SCMP (Local3, Arg0, 0x00))
                {
                    Return (Local0)
                }

                Local0++
            }

            Return (Ones)
        }

        Method (GSEL, 3, NotSerialized)
        {
            Local0 = 0x00
            Local1 = SizeOf (Arg0)
            While ((Local0 < Local1))
            {
                Local2 = DerefOf (Arg0 [Local0])
                If (SCMP (Local2, Arg1, Arg2))
                {
                    Return (Local0)
                }

                Local0++
            }

            Return (Ones)
        }

        Method (SLEN, 2, NotSerialized)
        {
            Local0 = DerefOf (Arg0 [Arg1])
            Return (SizeOf (Local0))
        }

        Method (CLRP, 0, NotSerialized)
        {
            WPAS = 0x00
            WPNW = 0x00
        }

        Method (GPAS, 2, NotSerialized)
        {
            Local0 = Arg1
            Local1 = 0x00
            While ((Local1 <= 0x80))
            {
                Local2 = DerefOf (Arg0 [Local0])
                If (((Local2 == 0x2C) || (Local2 == 0x00)))
                {
                    PSTR [Local1] = 0x00
                    Return (Local1)
                }

                PSTR [Local1] = Local2
                Local0++
                Local1++
            }

            PSTR [Local1] = 0x00
            Return (Ones)
        }

        Method (CPAS, 2, NotSerialized)
        {
            CLRP ()
            Local0 = Arg1
            Local1 = GPAS (Arg0, Local0)
            If ((Local1 == Ones))
            {
                Return (0x02)
            }

            If ((Local1 == 0x00))
            {
                Return (0x02)
            }

            WPAS = PSTR /* \WMI1.PSTR */
            Local0 += Local1
            Local0++
            Local6 = GSEL (PENC, Arg0, Local0)
            If ((Local6 == Ones))
            {
                Return (0x02)
            }

            WENC = Local6
            If ((Local6 == 0x00))
            {
                Local0 += SLEN (PENC, 0x00)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local6 = GSEL (PKBD, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WKBD = Local6
            }

            Return (0x00)
        }

        Method (SPAS, 1, NotSerialized)
        {
            CLRP ()
            Local6 = GSEL (PTYP, Arg0, 0x00)
            If ((Local6 == Ones))
            {
                Return (0x02)
            }

            WPTY = Local6
            Local0 = SLEN (PTYP, Local6)
            If ((DerefOf (Arg0 [Local0]) != 0x2C))
            {
                Return (0x02)
            }

            Local0++
            Local1 = GPAS (Arg0, Local0)
            If (((Local1 == Ones) || (Local1 == 0x00)))
            {
                Return (0x02)
            }

            WPAS = PSTR /* \WMI1.PSTR */
            Local0 += Local1
            If ((DerefOf (Arg0 [Local0]) != 0x2C))
            {
                Return (0x02)
            }

            Local0++
            Local1 = GPAS (Arg0, Local0)
            If ((Local1 == Ones))
            {
                Return (0x02)
            }

            If ((Local1 == 0x00))
            {
                PSTR = 0x00
            }

            WPNW = PSTR /* \WMI1.PSTR */
            Local0 += Local1
            Local0++
            Local6 = GSEL (PENC, Arg0, Local0)
            If ((Local6 == Ones))
            {
                Return (0x02)
            }

            WENC = Local6
            If ((Local6 == 0x00))
            {
                Local0 += SLEN (PENC, 0x00)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local6 = GSEL (PKBD, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WKBD = Local6
            }

            Return (0x00)
        }

        Method (WSET, 2, NotSerialized)
        {
            Local0 = ILEN /* \WMI1.ILEN */
            Local0++
            Local1 = GITM (IBUF, Arg0)
            If ((Local1 == Ones))
            {
                Return (0x02)
            }

            WITM = Local1
            Local3 = DerefOf (Arg0 [Local1])
            Local4 = DerefOf (Local3 [0x01])
            Local2 = SizeOf (Local4)
            Local2++
            Local4 = DerefOf (Local3 [0x00])
            If ((Local4 < 0x64))
            {
                Local5 = DerefOf (Arg1 [Local4])
                Local6 = GSEL (Local5, IBUF, Local2)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WSEL = Local6
                Local2 += SLEN (Local5, Local6)
                Local4 = DerefOf (IBUF [Local2])
            }
            Else
            {
                WLS0 = 0x3F
                WLS1 = 0x3F
                WLS2 = 0x3F
                WLS3 = 0x3F
                WLS4 = 0x3F
                WLS5 = 0x3F
                WLS6 = 0x3F
                WLS7 = 0x3F
                WLS8 = 0x3F
                WLS9 = 0x3F
                WLSA = 0x3F
                WLSB = 0x3F
                WLSC = 0x3F
                WLSD = 0x3F
                Local6 = GSEL (VLST, IBUF, Local2)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                WLS0 = Local6
                Local2 += SLEN (VLST, Local6)
                Local4 = DerefOf (IBUF [Local2])
                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS1 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS2 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS3 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS4 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS5 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS6 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS7 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS8 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLS9 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLSA = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLSB = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLSC = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }

                If (((Local2 < Local0) && (Local4 == 0x3A)))
                {
                    Local2++
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    WLSD = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }
            }

            If (((Local4 == 0x2C) && (Local2 < Local0)))
            {
                Local2++
                Local0 = CPAS (IBUF, Local2)
                If ((Local0 != 0x00))
                {
                    Return (Local0)
                }
            }

            Return (0x00)
        }

        Method (WMA1, 3, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            If ((SizeOf (Arg2) == 0x00))
            {
                Local0 = 0x02
            }
            Else
            {
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    Local0 = WSET (ITEM, VSEL)
                    If ((Local0 == 0x00))
                    {
                        Local0 = WMIS (0x01, 0x00)
                    }
                }
            }

            Release (MWMI)
            Return (DerefOf (RETN [Local0]))
        }

        Method (WMA2, 3, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            Local0 = CARG (Arg2)
            If ((Local0 == 0x00))
            {
                If ((ILEN != 0x00))
                {
                    Local0 = CPAS (IBUF, 0x00)
                }

                If ((Local0 == 0x00))
                {
                    Local0 = WMIS (0x02, 0x00)
                }
            }

            Release (MWMI)
            Return (DerefOf (RETN [Local0]))
        }

        Method (WMA3, 3, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            Local0 = CARG (Arg2)
            If ((Local0 == 0x00))
            {
                If ((ILEN != 0x00))
                {
                    Local0 = CPAS (IBUF, 0x00)
                }

                If ((Local0 == 0x00))
                {
                    Local0 = WMIS (0x03, 0x00)
                }
            }

            Release (MWMI)
            Return (DerefOf (RETN [Local0]))
        }

        Method (WMA4, 3, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            Local0 = CARG (Arg2)
            If ((Local0 == 0x00))
            {
                If ((ILEN != 0x00))
                {
                    Local0 = CPAS (IBUF, 0x00)
                }

                If ((Local0 == 0x00))
                {
                    Local0 = WMIS (0x04, 0x00)
                }
            }

            Release (MWMI)
            Return (DerefOf (RETN [Local0]))
        }

        Method (WQA5, 1, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            Local0 = WMIS (0x05, 0x00)
            PCFG [0x00] = WSPM /* \WSPM */
            PCFG [0x04] = WSPS /* \WSPS */
            PCFG [0x08] = WSMN /* \WSMN */
            PCFG [0x0C] = WSMX /* \WSMX */
            PCFG [0x10] = WSEN /* \WSEN */
            PCFG [0x14] = WSKB /* \WSKB */
            Release (MWMI)
            Return (PCFG) /* \WMI1.PCFG */
        }

        Method (WMA6, 3, NotSerialized)
        {
            Acquire (MWMI, 0xFFFF)
            If ((SizeOf (Arg2) == 0x00))
            {
                Local0 = 0x02
            }
            Else
            {
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = SPAS (IBUF)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = WMIS (0x06, 0x00)
                    }
                }
            }

            Release (MWMI)
            Return (DerefOf (RETN [Local0]))
        }

        Method (WMA7, 3, NotSerialized)
        {
            If ((SizeOf (Arg2) == 0x00))
            {
                Return ("")
            }

            Local0 = CARG (Arg2)
            If ((Local0 == 0x00))
            {
                Local1 = GITM (IBUF, ITEM)
                If ((Local1 == Ones))
                {
                    Return ("")
                }

                Local0 = DerefOf (ITEM [Local1])
                Local1 = DerefOf (Local0 [0x00])
                If ((Local1 < 0x64))
                {
                    Local3 = DerefOf (VSEL [Local1])
                    Local2 = DerefOf (Local3 [0x00])
                    Local4 = SizeOf (Local3)
                    Local5 = 0x01
                    While ((Local5 < Local4))
                    {
                        Local6 = DerefOf (Local3 [Local5])
                        If ((SizeOf (Local6) != 0x00))
                        {
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                        }

                        Local5++
                    }
                }
                Else
                {
                    Local2 = DerefOf (VLST [0x00])
                    Local4 = SizeOf (VLST)
                    Local5 = 0x01
                    While ((Local5 < Local4))
                    {
                        Local6 = DerefOf (VLST [Local5])
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, Local6, Local2)
                        Local5++
                    }
                }
            }

            Return (Local2)
        }

        Method (CARG, 1, NotSerialized)
        {
            Local0 = SizeOf (Arg0)
            If ((Local0 == 0x00))
            {
                IBUF = 0x00
                ILEN = 0x00
                Return (0x00)
            }

            If ((ObjectType (Arg0) != 0x02))
            {
                Return (0x02)
            }

            If ((Local0 >= 0xFF))
            {
                Return (0x02)
            }

            IBUF = Arg0
            Local0--
            Local1 = DerefOf (IBUF [Local0])
            If (((Local1 == 0x3B) || (Local1 == 0x2A)))
            {
                IBUF [Local0] = 0x00
                ILEN = Local0
            }
            Else
            {
                ILEN = SizeOf (Arg0)
            }

            Return (0x00)
        }

        Method (SCMP, 3, Serialized)
        {
            Local0 = SizeOf (Arg0)
            If ((Local0 == 0x00))
            {
                Return (0x00)
            }

            Local0++
            Name (STR1, Buffer (Local0){})
            STR1 = Arg0
            Local0--
            Local1 = 0x00
            Local2 = Arg2
            While ((Local1 < Local0))
            {
                Local3 = DerefOf (STR1 [Local1])
                Local4 = DerefOf (Arg1 [Local2])
                If ((Local3 != Local4))
                {
                    Return (0x00)
                }

                Local1++
                Local2++
            }

            Local4 = DerefOf (Arg1 [Local2])
            If ((Local4 == 0x00))
            {
                Return (0x01)
            }

            If (((Local4 == 0x2C) || (Local4 == 0x3A)))
            {
                Return (0x01)
            }

            Return (0x00)
        }

        Name (WQBA, Buffer (0x089D)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
            /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,  // .....6..
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
            /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
            /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,  // .....!..
            /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PL...EA
            /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
            /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
            /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
            /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  // 1...@H&.
            /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
            /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  // ........
            /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  // ...e....
            /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,  // ...Bh..0
            /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,  // ).'.,...
            /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,  // &.pd.L..
            /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,  // Pb...9..
            /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,  // ..t.(.F.
            /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,  // ..u....+
            /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,  // @...y^.>
            /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,  // .....G..
            /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,  // .b,S.aP.
            /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,  // @$g.(`{.
            /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,  // ..u.L..j
            /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,  // ..(...4.
            /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,  // ckz..d..
            /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,  // ....uR.h
            /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,  // ..2L....
            /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,  // q.. .`.(
            /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,  // ...... |
            /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,  // ..(.#...
            /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,  // ..1c...<
            /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,  // .c...Pc.
            /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,  // E....Q.V
            /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,  // ....,..z
            /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,  // .'.N..?.
            /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,  // ..B..X..
            /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,  // .a......
            /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,  // ...C..8.
            /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,  // /hFm.0'@
            /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,  // ..o.B9.(
            /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,  // .r.Q..b.
            /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,  // ....#...
            /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,  // 5l..!O!P
            /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,  // ...A....
            /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,  // O.gu.G..
            /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,  // `.O....N
            /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,  // .X..8...
            /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,  // .....E.G
            /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,  // ..|.....
            /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,  // s<. .p.O
            /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,  // ......).
            /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,  // .....5..
            /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,  // ...l..0.
            /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,  // .....I>`
            /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,  // ........
            /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,  // .Y.....t
            /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,  // ..i...0.
            /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,  // .....=..
            /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,  // .C>'...{
            /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,  // .....e.9
            /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,  // ...|M0..
            /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,  // ..1...a.
            /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,  // ...>/.8.
            /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,  // x....R|.
            /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,  // .G..&...
            /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,  // 4..<...a
            /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,  // .l..6.w.
            /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,  // ..{.....
            /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,  // .w.6X...
            /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,  // .qB...A.
            /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,  // C..x.8C+
            /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,  // ..r`..90
            /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,  // F..<6L. 
            /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,  // ...z.P..
            /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,  // j....T.\
            /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,  // ......{.
            /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,  // .8<...}.
            /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,  // .zo)n...
            /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,  // .y.x...<
            /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,  // ........
            /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,  // O!..5F|.
            /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,  // x.1..=.<
            /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,  // ...h"...
            /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,  // |.....b^
            /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,  // (.p..4..
            /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,  // .5.....|
            /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,  // G.vC.wB.
            /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,  // .$~.....
            /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,  //  ....)..
            /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,  // ..4a.LO.
            /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,  // x....D..
            /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,  // E... BA.
            /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,  // . ......
            /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,  // ..}"..<.
            /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,  // w.v..a.c
            /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,  // .1..c<..
            /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,  // [.......
            /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,  // ...'..&.
            /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,  // 2}G.P..^
            /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,  // .s......
            /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,  // .....O..
            /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,  // w....u..
            /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,  // .g.{.g..
            /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,  // .9z....:
            /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,  // ..|0.4..
            /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,  // .r8O....
            /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,  // ....-..1
            /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,  // .FE.B...
            /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,  // .x>..G.$
            /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,  // ..x&..}+
            /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,  // .5...m.d
            /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,  // ...anE..
            /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,  // .."8.4..
            /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,  // .U.X.*@.
            /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,  // .^{|..{.
            /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,  // .{.zV8..
            /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,  // .S1N...@
            /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,  // a..{....
            /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,  // ...*L..+
            /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,  // ..N...$.
            /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,  // .U.....^
            /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,  // .^9.*...
            /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,  // .U.y..*0
            /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,  // ^.......
            /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,  // .`(.....
            /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,  // X!......
            /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,  // bE...f.p
            /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,  // ........
            /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,  // 0G+x)oV4
            /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,  // .2.pA..7
            /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,  // +..u.7d.
            /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,  // `Q......
            /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,  // .C.K.c..
            /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,  // .@......
            /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,  // .>.....{
            /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,  // /?`.W...
            /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,  // .....#.r
            /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,  // ..|.z.2J
            /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,  // ..b...m.
            /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,  // ....{...
            /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,  // ...@...\
            /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,  // .....&..
            /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,  // ._......
            /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,  // .zEs_.P.
            /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,  //  ..H3...
            /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,  // .....~.X
            /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,  // .w..z.#.
            /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,  // ...a.X..
            /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,  // W,.f%..&
            /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,  // ..+.0.._
            /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,  // ...A.7j.
            /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,  // .'.z<...
            /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,  // .`NX0nX.
            /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,  // ..0...;.
            /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,  // .V.y.~.z
            /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,  // ..b.....
            /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,  // .....Qb.
            /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,  // ...Y..,C
            /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,  // .} .....
            /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,  // ..a.....
            /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,  // ...a.>g.
            /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,  // ........
            /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,  // ....oX..
            /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,  // v..eao/d
            /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,  // .4.J..{e
            /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,  // .z......
            /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,  // ....I.s.
            /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,  // .....G..
            /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,  // Tsg....,
            /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,  // .....(..
            /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,  // *.`.(ud.
            /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,  // WO.>f..e
            /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,  // ..oY.../
            /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,  // V.....}.
            /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,  // 2...Q...
            /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,  // .e......
            /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,  // ....D.[.
            /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,  // ..`.r2p.
            /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,  // y.?.....
            /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,  // ..8./.L.
            /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,  // ..>S..A.
            /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,  // ...K0...
            /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,  // ...=....
            /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,  // xp..?8.w
            /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,  // .#......
            /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,  // A.8...jp
            /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,  // ...8..c.
            /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,  // ........
            /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,  // C...x.94
            /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,  // 0K..P.74
            /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,  // ........
            /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,  // 1.r"./..
            /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,  // .._S|..M
            /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,  // .7>p]:=>
            /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,  // .s...pG'
            /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,  // ......9.
            /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,  // .h......
            /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,  // ..|..`.B
            /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,  // .k......
            /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,  // ....u.x.
            /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,  // .k.d. ..
            /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,  // .z.P....
            /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,  // Gc}f....
            /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,  // .....`..
            /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,  // ........
            /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,  // |.....$N
            /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,  // ....5_2.
            /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,  // .zZ3F..6
            /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,  // #.R.xX..
            /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,  // .x......
            /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,  // =.....Z.
            /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,  // #.......
            /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,  // ;.....n)
            /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,  // .......D
            /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,  // ._..6.q.
            /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,  // FqX.....
            /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,  // z..I.z..
            /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,  // ........
            /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,  // .....GJ.
            /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,  // ...i.A..
            /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,  // a..E.(..
            /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,  // ....[...
            /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,  // .-.,...(
            /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,  // ..<h.u..
            /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,  // ...OM.M.
            /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,  // N..>H.p.
            /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,  // .....^..
            /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,  // .k./0..1
            /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,  // ...!....
            /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,  // .B....F.
            /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,  // .<...F.W
            /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,  // .5.....w
            /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,  // ........
            /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,  // ......(8
            /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,  // ..{.`#.=
            /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,  // ...G.N&.
            /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,  // .y.....B
            /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,  // .&Q...*.
            /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,  // a.....N.
            /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,  // h.'.r...
            /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,  // ..._..Py
            /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,  // ..R...q.
            /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,  // ........
            /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,  // ...)...m
            /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,  // ..h..A..
            /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,  // e...S.1c
            /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,  // .PK;KP1.
            /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,  // .h......
            /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,  // ..!.:.t.
            /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,  // ...,km.q
            /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,  // |....H.c
            /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,  // B@.." .X
            /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,  // .....#p.
            /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,  // ...R..D.
            /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,  // ....h0.F
            /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,  // @.F! ..t
            /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,  // .....1. 
            /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,  // T..P..D@
            /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,  // V.V.Y7..
            /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,  // ../.2..2
            /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,  // ..b.....
            /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,  // &=.L ...
            /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,  // ....." .
            /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,  // 9...q..R
            /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,  // G.. T..D
            /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,  //  .d.....
            /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,  // .@.<O ,.
            /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,  // .\...j..
            /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,  // ....0.`.
            /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,  // .D@N...D
            /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,  // r.....".
            /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,  // w....O.X
            /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,  // A...UP..
            /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,  // D@V....u
            /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                     // .....
        })
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Mutex (MSMI, 0x00)
    Method (SMI, 5, Serialized)
    {
        Acquire (MSMI, 0xFFFF)
        Local0 = 0x00
        CMD = Arg0
        ERR = 0x01
        PAR0 = Arg1
        PAR1 = Arg2
        PAR2 = Arg3
        PAR3 = Arg4
        APMW = 0xF5
        While ((ERR == 0x01))
        {
            Sleep (0x01)
            APMW = 0xF5
        }

        Local0 = PAR0 /* \PAR0 */
        Release (MSMI)
        Return (Local0)
    }

    OperationRegion (MNVS, SystemMemory, 0xCE39F018, 0x1000)
    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }
}
