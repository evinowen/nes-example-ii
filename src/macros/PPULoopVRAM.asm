.macro PPULoopVRAM Address, Exit, Value
    LDA $2002

    LDA #>Address
    STA $2006
    LDA #<Address
    STA $2006

    CLC
    LDY #<Address
    :
      LDA Value
      STA $2007

      INY
      CPY Exit
      BNE :-
.endmacro
