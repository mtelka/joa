.SECONDEXPANSION:

PDFPATH := .cache

DENSITY := 300

VERSION := 2
NUM_PAGES := 12

# A4: 210 x 297 mm
PAGEWIDTH := 210
PAGEHEIGHT := 297
WIDTH = $(shell identify -density $(DENSITY) -format "%w" $<)
HEIGHT = $(shell identify -density $(DENSITY) -format "%h" $<)
MINBORDER := 2
MAXEXTRA := 3
MINCUT := 5
OVERCUT := 2
CUTWIDTH := 2/10
FONT := Bitstream-Charter-Regular
FONTSIZE := 4
BOX := ''
ANNOTATE_SPACE := 2
ANNOTATE_BOX = $$(($$HCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0
ANNOTATE_DATE = $$(($$HCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0
ANNOTATE_PDF = $$(($$VCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0
ANNOTATE_NOTE = $$(($$VCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0

BOX_CORE	:= 'Core Box'
BOX_RELIQUARY	:= 'Reliquary'
BOX_BATTLES	:= 'Legendary Battles'
BOX_VILLAGE	:= 'Village Pack'

TROOPS := \
	Bonesetter \
	Bowmen \
	Citizen \
	Executioner \
	Ghosts \
	Jannisaries \
	Merchant_Girl \
	Mounted_Bowmen \
	Peasants \
	Priest \
	Provincial_Militia

# 63 x 88 mm
$(TROOPS):	W := 63
$(TROOPS): 	H := 88

CHARACTERS := \
	Amaury_de_Craon-1 \
	Ambroise_de_Lore-1 Ambroise_de_Lore-2 \
	Archangel_Gabriel-1 Archangel_Gabriel-2 \
	Arthur_de_Richemont-1 Arthur_de_Richemont-2 \
	Boucicaut-1 Boucicaut-2 \
	Baudoin_de_Lens \
	Bertrand_du_Guesclin-2H \
	Captal_de_Buch-1 Captal_de_Buch-2 \
	Charles_de_Bourbon-1 Charles_de_Bourbon-2 \
	Charles_II_the_Magnanimous-1 Charles_II_the_Magnanimous-2 \
	Earl_of_Arundel-1 Earl_of_Arundel-2 \
	Edward_III-1 Edward_III-2 \
	Erwan_de_Romorantin-1 Erwan_de_Romorantin-2 \
	Gilles_de_Rais-1 Gilles_de_Rais-2H Gilles_de_Rais-2U \
	Jean_de_Dunois-2H Jean_de_Dunois-2U \
	Jean_de_Vienne-1 Jean_de_Vienne-2 \
	Joan_of_Arc-1 Joan_of_Arc-2H Joan_of_Arc-2U \
	John_Chandos-1 \
	John_de_la_Pole-1 John_de_la_Pole-2 \
	John_Fastolf-2H John_Fastolf-2U \
	John_I_of_Luxembourg \
	John_of_Lancaster-2U \
	John_Stewart_of_Buchan-1 John_Stewart_of_Buchan-2 \
	John_Stewart_of_Darnley-1 John_Stewart_of_Darnley-2 \
	La_Hire-2H La_Hire-2U \
	Mehmed_II-1 Mehmed_II-2 \
	Mounted_Hero_E-1 \
	Mounted_Hero_F-1 \
	Mounted_Hero_H-1 \
	Philippe_the_Bold \
	Philippe_VI_de_Valois-1 Philippe_VI_de_Valois-2H Philippe_VI_de_Valois-2U \
	Poton_de_Xaintrailles-1 Poton_de_Xaintrailles-2H Poton_de_Xaintrailles-2U \
	Saint_Martha-1 \
	The_Courser \
	The_Great_Reaper \
	The_Tarasque-2 \
	The_Werewolf-1 \
	The_Witch-1 The_Witch-2 \
	Thomas_de_Scales-1 Thomas_de_Scales-2 \
	Vlad_Tepes-1 Vlad_Tepes-2

# 70 x 120 mm
$(CHARACTERS):	W := 70
$(CHARACTERS):	H := 120

INTRIGUE := \
	Patay-French \
	Targoviste-Mehmed \
	Targoviste-Tepes

# 70 x 120 mm
$(INTRIGUE):	W := 70
$(INTRIGUE):	H := 120


all: Joan_of_Arc_-_Updated_Cards_-_v$(VERSION)-$(DENSITY)dpi.pdf


TROOP_PDF_1 := JoA\ -\ CORE\ -\ TROOP\ -\ ENG\ -\ FINAL_1.5.pdf
TROOP_PDF_1_DATE := 2020-02-17
TROOP_PDF_1_NOTE := 'KS 1.0 Update \#227'
TROOP_PDF_2 := JoA\ -\ Reliquary\ -\ Poker\ Cards\ -\ Troops\ -\ Front\ -\ ENG_1.5.pdf
TROOP_PDF_2_DATE := 2020-02-17
TROOP_PDF_2_NOTE := 'KS 1.0 Update \#227'

CHARACTER_PDF_1 := JoA\ -\ CORE\ -\ Tarot\ Cards_Characters\ -\ FRONT\ -\ ENG_1.5.pdf
CHARACTER_PDF_1_DATE := 2020-02-17
CHARACTER_PDF_1_NOTE := 'KS 1.0 Update \#227'
CHARACTER_PDF_2 := JoA\ -\ CORE\ -\ Tarot\ Cards_Characters\ -\ Back\ -\ ENG_1.5.pdf
CHARACTER_PDF_2_DATE := 2020-02-17
CHARACTER_PDF_2_NOTE := 'KS 1.0 Update \#227'
CHARACTER_PDF_3 := JoA\ -\ RELIQUARY\ -\ TAROT\ Cards\ -\ Characters\ -\ Front\ -\ ENG_1.5.pdf
CHARACTER_PDF_3_DATE := 2020-02-17
CHARACTER_PDF_3_NOTE := 'KS 1.0 Update \#227'
CHARACTER_PDF_4 := JoA\ -\ RELIQUARY\ -\ TAROT\ Cards\ -\ Characters\ -\ Back\ -\ ENG_1.5.pdf
CHARACTER_PDF_4_DATE := 2020-02-17
CHARACTER_PDF_4_NOTE := 'KS 1.0 Update \#227'

INTRIGUE_PDF_1 := Core\ Box\ (ENG)\ -\ The\ Battle\ of\ Patay\ -\ Intrigue\ Card.pdf
INTRIGUE_PDF_1_DATE := 2019-07-17
INTRIGUE_PDF_1_NOTE := 'KS 1.0 Update \#192'
INTRIGUE_PDF_2 := JoA\ -\ Vlad\ Tepes\ in\ Targoviste\ -\ Revised\ Intrigue\ -\ ENG.pdf
INTRIGUE_PDF_2_DATE := 2019-10-30
INTRIGUE_PDF_2_NOTE := 'KS 1.0 Update \#208'

# Troops

Bonesetter_PDF := TROOP_PDF_1
Bonesetter_PAGE := 30
Bonesetter_BOX := $(BOX_CORE)

Bowmen_PDF := TROOP_PDF_1
Bowmen_PAGE := 16
Bowmen_BOX := ''
Bowmen:		Bowmen-C Bowmen-B

Citizen_PDF := TROOP_PDF_1
Citizen_PAGE := 29
Citizen_BOX := ''
Citizen:	Citizen-C Citizen-V

Executioner_PDF := TROOP_PDF_2
Executioner_PAGE := 30
Executioner_BOX := $(BOX_RELIQUARY)

Ghosts_PDF := TROOP_PDF_1
Ghosts_PAGE := 23
Ghosts_BOX := $(BOX_CORE)

Jannisaries_PDF := TROOP_PDF_2
Jannisaries_PAGE := 37
Jannisaries_BOX := $(BOX_RELIQUARY)

Merchant_Girl_PDF := TROOP_PDF_1
Merchant_Girl_PAGE := 28
Merchant_Girl_BOX := ''
Merchant_Girl:	Merchant_Girl-C Merchant_Girl-V

Mounted_Bowmen_PDF := TROOP_PDF_1
Mounted_Bowmen_PAGE := 17
Mounted_Bowmen_BOX := $(BOX_CORE)

Peasants_PDF := TROOP_PDF_1
Peasants_PAGE := 19
Peasants_BOX := ''
Peasants:	Peasants-C Peasants-B

Priest_PDF := TROOP_PDF_1
Priest_PAGE := 25
Priest_BOX := $(BOX_CORE)

Provincial_Militia_PDF := TROOP_PDF_1
Provincial_Militia_PAGE := 10
Provincial_Militia_BOX := $(BOX_CORE)

# Characters

Amaury_de_Craon-1_PDF := CHARACTER_PDF_1
Amaury_de_Craon-1_PAGE := 47
Amaury_de_Craon-1_BOX := $(BOX_CORE)

Ambroise_de_Lore-1_PDF := CHARACTER_PDF_1
Ambroise_de_Lore-1_PAGE := 21
Ambroise_de_Lore-1_BOX := $(BOX_CORE)

Ambroise_de_Lore-2_PDF := CHARACTER_PDF_2
Ambroise_de_Lore-2_PAGE := 21
Ambroise_de_Lore-2_BOX := $(BOX_CORE)

Archangel_Gabriel-1_PDF := CHARACTER_PDF_1
Archangel_Gabriel-1_PAGE := 57
Archangel_Gabriel-1_BOX := $(BOX_CORE)

Archangel_Gabriel-2_PDF := CHARACTER_PDF_2
Archangel_Gabriel-2_PAGE := 57
Archangel_Gabriel-2_BOX := $(BOX_CORE)

Arthur_de_Richemont-1_PDF := CHARACTER_PDF_1
Arthur_de_Richemont-1_PAGE := 22
Arthur_de_Richemont-1_BOX := $(BOX_CORE)

Arthur_de_Richemont-2_PDF := CHARACTER_PDF_2
Arthur_de_Richemont-2_PAGE := 22
Arthur_de_Richemont-2_BOX := $(BOX_CORE)

Boucicaut-1_PDF := CHARACTER_PDF_1
Boucicaut-1_PAGE := 46
Boucicaut-1_BOX := $(BOX_CORE)

Boucicaut-2_PDF := CHARACTER_PDF_2
Boucicaut-2_PAGE := 46
Boucicaut-2_BOX := $(BOX_CORE)

Baudoin_de_Lens_PDF := CHARACTER_PDF_1
Baudoin_de_Lens_PAGE := 23
Baudoin_de_Lens_BOX := $(BOX_CORE)

Bertrand_du_Guesclin-2H_PDF := CHARACTER_PDF_1
Bertrand_du_Guesclin-2H_PAGE := 27
Bertrand_du_Guesclin-2H_BOX := $(BOX_CORE)

Captal_de_Buch-1_PDF := CHARACTER_PDF_1
Captal_de_Buch-1_PAGE := 19
Captal_de_Buch-1_BOX := $(BOX_CORE)

Captal_de_Buch-2_PDF := CHARACTER_PDF_2
Captal_de_Buch-2_PAGE := 19
Captal_de_Buch-2_BOX := $(BOX_CORE)

Charles_de_Bourbon-1_PDF := CHARACTER_PDF_1
Charles_de_Bourbon-1_PAGE := 24
Charles_de_Bourbon-1_BOX := $(BOX_CORE)

Charles_de_Bourbon-2_PDF := CHARACTER_PDF_2
Charles_de_Bourbon-2_PAGE := 24
Charles_de_Bourbon-2_BOX := $(BOX_CORE)

Charles_II_the_Magnanimous-1_PDF := CHARACTER_PDF_1
Charles_II_the_Magnanimous-1_PAGE := 45
Charles_II_the_Magnanimous-1_BOX := $(BOX_CORE)

Charles_II_the_Magnanimous-2_PDF := CHARACTER_PDF_2
Charles_II_the_Magnanimous-2_PAGE := 45
Charles_II_the_Magnanimous-2_BOX := $(BOX_CORE)

Earl_of_Arundel-1_PDF := CHARACTER_PDF_1
Earl_of_Arundel-1_PAGE := 17
Earl_of_Arundel-1_BOX := $(BOX_CORE)

Earl_of_Arundel-2_PDF := CHARACTER_PDF_2
Earl_of_Arundel-2_PAGE := 17
Earl_of_Arundel-2_BOX := $(BOX_CORE)

Edward_III-1_PDF := CHARACTER_PDF_1
Edward_III-1_PAGE := 20
Edward_III-1_BOX := $(BOX_CORE)

Edward_III-2_PDF := CHARACTER_PDF_2
Edward_III-2_PAGE := 20
Edward_III-2_BOX := $(BOX_CORE)

Erwan_de_Romorantin-1_PDF := CHARACTER_PDF_1
Erwan_de_Romorantin-1_PAGE := 48
Erwan_de_Romorantin-1_BOX := $(BOX_CORE)

Erwan_de_Romorantin-2_PDF := CHARACTER_PDF_2
Erwan_de_Romorantin-2_PAGE := 48
Erwan_de_Romorantin-2_BOX := $(BOX_CORE)

Gilles_de_Rais-1_PDF := CHARACTER_PDF_1
Gilles_de_Rais-1_PAGE := 28
Gilles_de_Rais-1_BOX := $(BOX_CORE)

Gilles_de_Rais-2H_PDF := CHARACTER_PDF_1
Gilles_de_Rais-2H_PAGE := 29
Gilles_de_Rais-2H_BOX := $(BOX_CORE)

Gilles_de_Rais-2U_PDF := CHARACTER_PDF_2
Gilles_de_Rais-2U_PAGE := 29
Gilles_de_Rais-2U_BOX := $(BOX_CORE)

Jean_de_Dunois-2H_PDF := CHARACTER_PDF_1
Jean_de_Dunois-2H_PAGE := 31
Jean_de_Dunois-2H_BOX := $(BOX_CORE)

Jean_de_Dunois-2U_PDF := CHARACTER_PDF_2
Jean_de_Dunois-2U_PAGE := 31
Jean_de_Dunois-2U_BOX := $(BOX_CORE)

Jean_de_Vienne-1_PDF := CHARACTER_PDF_1
Jean_de_Vienne-1_PAGE := 32
Jean_de_Vienne-1_BOX := $(BOX_CORE)

Jean_de_Vienne-2_PDF := CHARACTER_PDF_2
Jean_de_Vienne-2_PAGE := 32
Jean_de_Vienne-2_BOX := $(BOX_CORE)

Joan_of_Arc-1_PDF := CHARACTER_PDF_1
Joan_of_Arc-1_PAGE := 34
Joan_of_Arc-1_BOX := $(BOX_CORE)

Joan_of_Arc-2H_PDF := CHARACTER_PDF_1
Joan_of_Arc-2H_PAGE := 35
Joan_of_Arc-2H_BOX := $(BOX_CORE)

Joan_of_Arc-2U_PDF := CHARACTER_PDF_2
Joan_of_Arc-2U_PAGE := 35
Joan_of_Arc-2U_BOX := $(BOX_CORE)

John_Chandos-1_PDF := CHARACTER_PDF_1
John_Chandos-1_PAGE := 3
John_Chandos-1_BOX := $(BOX_CORE)

John_de_la_Pole-1_PDF := CHARACTER_PDF_1
John_de_la_Pole-1_PAGE := 12
John_de_la_Pole-1_BOX := $(BOX_CORE)

John_de_la_Pole-2_PDF := CHARACTER_PDF_2
John_de_la_Pole-2_PAGE := 12
John_de_la_Pole-2_BOX := $(BOX_CORE)

John_Fastolf-2H_PDF := CHARACTER_PDF_1
John_Fastolf-2H_PAGE := 2
John_Fastolf-2H_BOX := $(BOX_CORE)

John_Fastolf-2U_PDF := CHARACTER_PDF_2
John_Fastolf-2U_PAGE := 2
John_Fastolf-2U_BOX := $(BOX_CORE)

John_I_of_Luxembourg_PDF := CHARACTER_PDF_1
John_I_of_Luxembourg_PAGE := 44
John_I_of_Luxembourg_BOX := $(BOX_CORE)

John_of_Lancaster-2U_PDF := CHARACTER_PDF_2
John_of_Lancaster-2U_PAGE := 11
John_of_Lancaster-2U_BOX := $(BOX_CORE)

John_Stewart_of_Buchan-1_PDF := CHARACTER_PDF_1
John_Stewart_of_Buchan-1_PAGE := 54
John_Stewart_of_Buchan-1_BOX := $(BOX_CORE)

John_Stewart_of_Buchan-2_PDF := CHARACTER_PDF_2
John_Stewart_of_Buchan-2_PAGE := 54
John_Stewart_of_Buchan-2_BOX := $(BOX_CORE)

John_Stewart_of_Darnley-1_PDF := CHARACTER_PDF_3
John_Stewart_of_Darnley-1_PAGE := 10
John_Stewart_of_Darnley-1_BOX := $(BOX_RELIQUARY)

John_Stewart_of_Darnley-2_PDF := CHARACTER_PDF_4
John_Stewart_of_Darnley-2_PAGE := 10
John_Stewart_of_Darnley-2_BOX := $(BOX_RELIQUARY)

La_Hire-2H_PDF := CHARACTER_PDF_1
La_Hire-2H_PAGE := 37
La_Hire-2H_BOX := $(BOX_CORE)

La_Hire-2U_PDF := CHARACTER_PDF_2
La_Hire-2U_PAGE := 37
La_Hire-2U_BOX := $(BOX_CORE)

Mehmed_II-1_PDF := CHARACTER_PDF_3
Mehmed_II-1_PAGE := 18
Mehmed_II-1_BOX := $(BOX_RELIQUARY)

Mehmed_II-2_PDF := CHARACTER_PDF_4
Mehmed_II-2_PAGE := 18
Mehmed_II-2_BOX := $(BOX_RELIQUARY)

Mounted_Hero_E-1_PDF := CHARACTER_PDF_1
Mounted_Hero_E-1_PAGE := 60
Mounted_Hero_E-1_BOX := $(BOX_CORE)

Mounted_Hero_F-1_PDF := CHARACTER_PDF_1
Mounted_Hero_F-1_PAGE := 61
Mounted_Hero_F-1_BOX := $(BOX_CORE)

Mounted_Hero_H-1_PDF := CHARACTER_PDF_1
Mounted_Hero_H-1_PAGE := 59
Mounted_Hero_H-1_BOX := $(BOX_CORE)

Philippe_the_Bold_PDF := CHARACTER_PDF_1
Philippe_the_Bold_PAGE := 49
Philippe_the_Bold_BOX := $(BOX_CORE)

Philippe_VI_de_Valois-1_PDF := CHARACTER_PDF_1
Philippe_VI_de_Valois-1_PAGE := 42
Philippe_VI_de_Valois-1_BOX := $(BOX_CORE)

Philippe_VI_de_Valois-2H_PDF := CHARACTER_PDF_1
Philippe_VI_de_Valois-2H_PAGE := 43
Philippe_VI_de_Valois-2H_BOX := $(BOX_CORE)

Philippe_VI_de_Valois-2U_PDF := CHARACTER_PDF_2
Philippe_VI_de_Valois-2U_PAGE := 43
Philippe_VI_de_Valois-2U_BOX := $(BOX_CORE)

Poton_de_Xaintrailles-1_PDF := CHARACTER_PDF_1
Poton_de_Xaintrailles-1_PAGE := 38
Poton_de_Xaintrailles-1_BOX := $(BOX_CORE)

Poton_de_Xaintrailles-2H_PDF := CHARACTER_PDF_1
Poton_de_Xaintrailles-2H_PAGE := 39
Poton_de_Xaintrailles-2H_BOX := $(BOX_CORE)

Poton_de_Xaintrailles-2U_PDF := CHARACTER_PDF_2
Poton_de_Xaintrailles-2U_PAGE := 39
Poton_de_Xaintrailles-2U_BOX := $(BOX_CORE)

Saint_Martha-1_PDF := CHARACTER_PDF_1
Saint_Martha-1_PAGE := 68
Saint_Martha-1_BOX := $(BOX_CORE)

The_Courser_PDF := CHARACTER_PDF_1
The_Courser_PAGE := 72
The_Courser_BOX := $(BOX_CORE)

The_Great_Reaper_PDF := CHARACTER_PDF_3
The_Great_Reaper_PAGE := 20
The_Great_Reaper_BOX := $(BOX_RELIQUARY)

The_Tarasque-2_PDF := CHARACTER_PDF_2
The_Tarasque-2_PAGE := 66
The_Tarasque-2_BOX := $(BOX_CORE)

The_Werewolf-1_PDF := CHARACTER_PDF_1
The_Werewolf-1_PAGE := 55
The_Werewolf-1_BOX := $(BOX_CORE)

The_Witch-1_PDF := CHARACTER_PDF_1
The_Witch-1_PAGE := 56
The_Witch-1_BOX := $(BOX_CORE)

The_Witch-2_PDF := CHARACTER_PDF_2
The_Witch-2_PAGE := 56
The_Witch-2_BOX := $(BOX_CORE)

Thomas_de_Scales-1_PDF := CHARACTER_PDF_1
Thomas_de_Scales-1_PAGE := 14
Thomas_de_Scales-1_BOX := $(BOX_CORE)

Thomas_de_Scales-2_PDF := CHARACTER_PDF_2
Thomas_de_Scales-2_PAGE := 14
Thomas_de_Scales-2_BOX := $(BOX_CORE)

Vlad_Tepes-1_PDF := CHARACTER_PDF_3
Vlad_Tepes-1_PAGE := 15
Vlad_Tepes-1_BOX := $(BOX_RELIQUARY)

Vlad_Tepes-2_PDF := CHARACTER_PDF_4
Vlad_Tepes-2_PAGE := 15
Vlad_Tepes-2_BOX := $(BOX_RELIQUARY)

# Intrigue

Patay-French_PDF := INTRIGUE_PDF_1
Patay-French_PAGE := 1
Patay-French_BOX := $(BOX_CORE)

Targoviste-Mehmed_PDF := INTRIGUE_PDF_2
Targoviste-Mehmed_PAGE := 1
Targoviste-Mehmed_BOX := $(BOX_RELIQUARY)

Targoviste-Tepes_PDF := INTRIGUE_PDF_2
Targoviste-Tepes_PAGE := 2
Targoviste-Tepes_BOX := $(BOX_RELIQUARY)


ALL_CARDS := $(TROOPS) $(CHARACTERS) $(INTRIGUE)
ALL_CARDS_BOX := $(ALL_CARDS:=-C) $(ALL_CARDS:=-B) $(ALL_CARDS:=-V)

$(ALL_CARDS) $(ALL_CARDS_BOX): %: %-$(DENSITY).png
	touch $@

$(ALL_CARDS:=.pdf): %.pdf: $(PDFPATH)/$$($$(%_PDF))
	pdfseparate -f $($(@:.pdf=)_PAGE) -l $($(@:.pdf=)_PAGE) "$<" $@

$(ALL_CARDS:=-$(DENSITY).dim): %-$(DENSITY).dim: %.pdf
	[ "$(W)" ] || ( echo "Card width undefined" >&2 ; exit 1 )
	[ "$(H)" ] || ( echo "Card height undefined" >&2 ; exit 1 )
	W=$(WIDTH) ; \
	H=$(HEIGHT) ; \
	MINBORDER=$$(($(MINBORDER)*$(DENSITY)*10/254)) ; \
	MINCUT=$$(($(MINCUT)*$(DENSITY)*10/254)) ; \
	MAXEXTRA=$$(($(MAXEXTRA)*$(DENSITY)*10/254)) ; \
	HEXTRA=$$((($$W-$(W)*$(DENSITY)*10/254)/2)) ; \
	VEXTRA=$$((($$H-$(H)*$(DENSITY)*10/254)/2)) ; \
	HCROP=0 ; \
	VCROP=0 ; \
	((HEXTRA > MAXEXTRA)) && HCROP=$$((HEXTRA-MAXEXTRA)) ; \
	((VEXTRA > MAXEXTRA)) && VCROP=$$((VEXTRA-MAXEXTRA)) ; \
	W=$$((W-2*HCROP)) ; \
	H=$$((H-2*VCROP)) ; \
	HEXTRA=$$((HEXTRA-HCROP)) ; \
	VEXTRA=$$((VEXTRA-HCROP)) ; \
	CUTW=$$(($(DENSITY)*$(CUTWIDTH)*10/254/2)) ; \
	OVERCUT=$$(($(DENSITY)*$(OVERCUT)*10/254)) ; \
	HBORDER=$$(($$MINCUT-$$HEXTRA)) ; \
	VBORDER=$$(($$MINCUT-$$VEXTRA)) ; \
	(($$HBORDER < $$MINBORDER)) && HBORDER=$$MINBORDER ;\
	(($$VBORDER < $$MINBORDER)) && VBORDER=$$MINBORDER ;\
	HCUT=$$(($$HBORDER+$$HEXTRA)) ; \
	VCUT=$$(($$VBORDER+$$VEXTRA)) ; \
	( \
		echo W=$$W ; \
		echo H=$$H ; \
		echo CUTW=$$CUTW ; \
		echo OVERCUT=$$OVERCUT ; \
		echo HCROP=$$HCROP ; \
		echo VCROP=$$VCROP ; \
		echo HEXTRA=$$HEXTRA ; \
		echo VEXTRA=$$VEXTRA ; \
		echo HBORDER=$$HBORDER ; \
		echo VBORDER=$$VBORDER ; \
		echo HCUT=$$HCUT ; \
		echo VCUT=$$VCUT ; \
	) > $@

$(ALL_CARDS:=-$(DENSITY).png): %-$(DENSITY).png: %.pdf %-$(DENSITY).dim
	. ./$(@:.png=.dim) ; \
	convert -density $(DENSITY) -colorspace srgb $< \
		-crop $$((W))x$$((H))+$$((HCROP))+$$((VCROP)) +repage \
		-bordercolor white -border $$((HBORDER))x$$((VBORDER)) \
		-fill white \
		-draw "rectangle $$(($$HCUT-$$CUTW)),$$VBORDER $$(($$HCUT+$$CUTW)),$$(($$VBORDER+$$VEXTRA+$$OVERCUT))" \
		-draw "rectangle $$HBORDER,$$(($$VCUT-$$CUTW)) $$(($$HBORDER+$$HEXTRA+$$OVERCUT)),$$(($$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$W+2*$$HBORDER-$$HCUT-$$CUTW)),$$VBORDER $$(($$W+2*$$HBORDER-$$HCUT+$$CUTW)),$$(($$VBORDER+$$VEXTRA+$$OVERCUT))" \
		-draw "rectangle $$(($$W+$$HBORDER-$$HEXTRA-$$OVERCUT)),$$(($$VCUT-$$CUTW)) $$(($$W+$$HBORDER)),$$(($$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$HCUT-$$CUTW)),$$(($$H+$$VBORDER-$$VEXTRA-$$OVERCUT)) $$(($$HCUT+$$CUTW)),$$(($$H+$$VBORDER))" \
		-draw "rectangle $$HBORDER,$$(($$H+2*$$VBORDER-$$VCUT-$$CUTW)) $$(($$HBORDER+$$HEXTRA+$$OVERCUT)),$$(($$H+2*$$VBORDER-$$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$W+2*$$HBORDER-$$HCUT-$$CUTW)),$$(($$H+$$VBORDER-$$VEXTRA-$$OVERCUT)) $$(($$W+2*$$HBORDER-$$HCUT+$$CUTW)),$$(($$H+$$VBORDER))" \
		-draw "rectangle $$(($$W+$$HBORDER-$$HEXTRA-$$OVERCUT)),$$(($$H+2*$$VBORDER-$$VCUT-$$CUTW)) $$(($$W+$$HBORDER)),$$(($$H+2*$$VBORDER-$$VCUT+$$CUTW))" \
		-fill black \
		-draw "rectangle $$(($$HCUT-$$CUTW)),0 $$(($$HCUT+$$CUTW)),$$VBORDER" \
		-draw "rectangle 0,$$(($$VCUT-$$CUTW)) $$HBORDER,$$(($$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$W+2*$$HBORDER-$$HCUT-$$CUTW)),0 $$(($$W+2*$$HBORDER-$$HCUT+$$CUTW)),$$VBORDER" \
		-draw "rectangle $$(($$W+$$HBORDER)),$$(($$VCUT-$$CUTW)) $$(($$W+2*$$HBORDER)),$$(($$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$HCUT-$$CUTW)),$$(($$H+$$VBORDER)) $$(($$HCUT+$$CUTW)),$$(($$H+2*$$VBORDER))" \
		-draw "rectangle 0,$$(($$H+2*$$VBORDER-$$VCUT-$$CUTW)) $$HBORDER,$$(($$H+2*$$VBORDER-$$VCUT+$$CUTW))" \
		-draw "rectangle $$(($$W+2*$$HBORDER-$$HCUT-$$CUTW)),$$(($$H+$$VBORDER)) $$(($$W+2*$$HBORDER-$$HCUT+$$CUTW)),$$(($$H+2*$$VBORDER))" \
		-draw "rectangle $$(($$W+$$HBORDER)),$$(($$H+2*$$VBORDER-$$VCUT-$$CUTW)) $$(($$W+2*$$HBORDER)),$$(($$H+2*$$VBORDER-$$VCUT+$$CUTW))" \
		-font $(FONT) -pointsize $(FONTSIZE) \
		\( \
			-size $$(($$W+2*$$HBORDER))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $($(@:-$(DENSITY).png=)_BOX)" \
			-draw "gravity NorthEast ; text $(ANNOTATE_DATE) '$($($(@:-$(DENSITY).png=)_PDF)_DATE)'" \
		\) -geometry +0+$$((VBORDER-$(DENSITY)*$(MINBORDER)*10/254)) -composite \
		\( \
			-size $$(($$H+2*$$VBORDER))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-draw "gravity NorthWest ; text $(ANNOTATE_PDF) '$(subst \,,$($($(@:-$(DENSITY).png=)_PDF)))'" \
			-draw "gravity NorthEast ; text $(ANNOTATE_NOTE) $($($(@:-$(DENSITY).png=)_PDF)_NOTE)" \
			-rotate 90 \
		\) -geometry +$$(($$W+$$HBORDER))+0 -composite \
		$@

%-C-$(DENSITY).png: %-$(DENSITY).png %-$(DENSITY).dim
	. ./$(@:-C-$(DENSITY).png=-$(DENSITY).dim) ; \
	convert -density $(DENSITY) $< \
		-font $(FONT) -pointsize $(FONTSIZE) \
		\( \
			-size $$(($$W+2*$$HBORDER))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_CORE)" \
		\) -geometry +0+$$((VBORDER-$(DENSITY)*$(MINBORDER)*10/254)) -composite \
		$@

%-B-$(DENSITY).png: %-$(DENSITY).png %-$(DENSITY).dim
	. ./$(@:-B-$(DENSITY).png=-$(DENSITY).dim) ; \
	convert -density $(DENSITY) $< \
		-font $(FONT) -pointsize $(FONTSIZE) \
		\( \
			-size $$(($$W+2*$$HBORDER))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_BATTLES)" \
		\) -geometry +0+$$((VBORDER-$(DENSITY)*$(MINBORDER)*10/254)) -composite \
		$@

%-V-$(DENSITY).png: %-$(DENSITY).png %-$(DENSITY).dim
	. ./$(@:-V-$(DENSITY).png=-$(DENSITY).dim) ; \
	convert -density $(DENSITY) $< \
		-font $(FONT) -pointsize $(FONTSIZE) \
		\( \
			-size $$(($$W+2*$$HBORDER))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_VILLAGE)" \
		\) -geometry +0+$$((VBORDER-$(DENSITY)*$(MINBORDER)*10/254)) -composite \
		$@

include layouts/page-*

ALL_PAGES := $(shell seq 1 $(NUM_PAGES))

$(ALL_PAGES:%=page-%): page-%: page-%-$(DENSITY).pdf
	touch $@

page-%-$(DENSITY).pdf: layouts/page-% $$(PAGEDEPS_%)
	convert -density $(DENSITY) -gravity Center \
		$(PAGEFMT_$(@:page-%-$(DENSITY).pdf=%)) \
		-extent $$(($(PAGEWIDTH)*$(DENSITY)*10/254))x$$(($(PAGEHEIGHT)*$(DENSITY)*10/254))! \
		\( \
			-size $$(($(PAGEHEIGHT)*$(DENSITY)*10/254))x$$(($(DENSITY)*$(MINBORDER)*10/254)) xc:none \
			-font $(FONT) -pointsize $(FONTSIZE) \
			-draw "gravity North ; text 0,0 'Joan of Arc: Updated Cards v$(VERSION) - $(DENSITY) DPI (page $(@:page-%-$(DENSITY).pdf=%) of $(NUM_PAGES))'" \
			-rotate 90 \
		\) \
		-gravity East \
		-geometry +$$(($(MINBORDER)*$(DENSITY)*10/254))+0 \
		-composite \
		$@

Joan_of_Arc_-_Updated_Cards_-_v$(VERSION)-$(DENSITY)dpi.pdf: $(ALL_PAGES:%=page-%-$(DENSITY).pdf)
	pdfunite $? $@

clean:
	rm -f $(ALL_CARDS:%=%*) $(ALL_PAGES:%=page-%*)

clobber: clean
	rm -f *.pdf
