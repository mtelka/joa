.SECONDEXPANSION:

PDFPATH := .cache

DENSITY := 300

VERSION := 2
NUM_PAGES := 5

# A4: 210 x 297 mm
PAGEWIDTH := 210
PAGEHEIGHT := 297
WIDTH = $(shell identify -density $(DENSITY) -format "%w" $<)
HEIGHT = $(shell identify -density $(DENSITY) -format "%h" $<)
MINBORDER := 2
MINCUT := 5
OVERCUT := 2
CUTWIDTH := 2/10
FONT := Bitstream-Charter-Regular
FONTSIZE := 4
BOX := ''
ANNOTATE_SPACE := 2
ANNOTATE_BOX = $$(($$HCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),$$(($$VBORDER-$(DENSITY)*$(MINBORDER)*10/254))
ANNOTATE_DATE = $$(($$HCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),$$(($$VBORDER-$(MINBORDER)*$(DENSITY)*10/254))
ANNOTATE_PDF = $$(($$VCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0
ANNOTATE_NOTE = $$(($$VCUT+$(DENSITY)*$(ANNOTATE_SPACE)*10/254)),0

BOX_CORE	:= 'Core Box'
BOX_RELIQUARY	:= 'Reliquary'
BOX_BATTLES	:= 'Legendary Battles'
BOX_VILLAGE	:= 'Village Pack'

TROOPS := \
	Executioner \
	Jannisaries \
	Merchant_Girl \
	Mounted_Bowmen \
	Peasants

# 63 x 88 mm
$(TROOPS):	W := 63
$(TROOPS): 	H := 88

CHARACTERS := \
	John_Stewart_of_Buchan-1 \
	John_Stewart_of_Buchan-2 \
	John_Stewart_of_Darnley-1 \
	John_Stewart_of_Darnley-2 \
	Mehmed_II-1 \
	Mehmed_II-2 \
	The_Great_Reaper \
	Vlad_Tepes-1 \
	Vlad_Tepes-2

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


TROOP_PDF_1 := JoA\ -\ CORE\ -\ Revised\ Troops\ &\ Civilians\ -\ ENG.pdf
TROOP_PDF_1_DATE := 2019-10-30
TROOP_PDF_1_NOTE := 'KS 1.0 Update \#208'
TROOP_PDF_2 := JoA\ -\ Reliquary\ -\ Revised\ Troops\ &\ Civilians\ -\ ENG.pdf
TROOP_PDF_2_DATE := 2019-10-30
TROOP_PDF_2_NOTE := 'KS 1.0 Update \#208'

CHARACTER_PDF_1 := JoA\ -\ RELIQUARY\ -\ Revised\ Character\ Cards\ -\ Front\ -\ ENG.pdf
CHARACTER_PDF_1_DATE := 2019-10-30
CHARACTER_PDF_1_NOTE := 'KS 1.0 Update \#208'
CHARACTER_PDF_2 := JoA\ -\ RELIQUARY\ -\ Revised\ Character\ Cards\ -\ Back\ -\ ENG.pdf
CHARACTER_PDF_2_DATE := 2019-10-30
CHARACTER_PDF_2_NOTE := 'KS 1.0 Update \#208'
CHARACTER_PDF_3 := Updated\ Scottish\ Profiles\ -\ ENG.pdf
CHARACTER_PDF_3_DATE := 2019-11-13
CHARACTER_PDF_3_NOTE := 'KS 1.0 Update \#210'
CHARACTER_PDF_4 := JoA\ -\ Revised\ Profiles\ -\ Reliquary\ Characters\ -\ Front\ -\ ENG.pdf
CHARACTER_PDF_4_DATE := 2020-01-30
CHARACTER_PDF_4_NOTE := 'KS 1.0 Update \#224'

INTRIGUE_PDF_1 := Core\ Box\ (ENG)\ -\ The\ Battle\ of\ Patay\ -\ Intrigue\ Card.pdf
INTRIGUE_PDF_1_DATE := 2019-07-17
INTRIGUE_PDF_1_NOTE := 'KS 1.0 Update \#192'
INTRIGUE_PDF_2 := JoA\ -\ Vlad\ Tepes\ in\ Targoviste\ -\ Revised\ Intrigue\ -\ ENG.pdf
INTRIGUE_PDF_2_DATE := 2019-10-30
INTRIGUE_PDF_2_NOTE := 'KS 1.0 Update \#208'

# Troops

Executioner_PDF := TROOP_PDF_2
Executioner_PAGE := 1
Executioner_BOX := $(BOX_RELIQUARY)

Jannisaries_PDF := TROOP_PDF_2
Jannisaries_PAGE := 2
Jannisaries_BOX := $(BOX_RELIQUARY)

Merchant_Girl_PDF := TROOP_PDF_1
Merchant_Girl_PAGE := 3
Merchant_Girl_BOX := ''
Merchant_Girl:		Merchant_Girl-C Merchant_Girl-V

Mounted_Bowmen_PDF := TROOP_PDF_1
Mounted_Bowmen_PAGE := 1
Mounted_Bowmen_BOX := $(BOX_CORE)

Peasants_PDF := TROOP_PDF_1
Peasants_PAGE := 2
Peasants_BOX := ''
Peasants:	Peasants-C Peasants-B

# Characters

John_Stewart_of_Buchan-1_PDF := CHARACTER_PDF_3
John_Stewart_of_Buchan-1_PAGE := 3
John_Stewart_of_Buchan-1_BOX := $(BOX_CORE)

John_Stewart_of_Buchan-2_PDF := CHARACTER_PDF_3
John_Stewart_of_Buchan-2_PAGE := 4
John_Stewart_of_Buchan-2_BOX := $(BOX_CORE)

John_Stewart_of_Darnley-1_PDF := CHARACTER_PDF_3
John_Stewart_of_Darnley-1_PAGE := 1
John_Stewart_of_Darnley-1_BOX := $(BOX_RELIQUARY)

John_Stewart_of_Darnley-2_PDF := CHARACTER_PDF_3
John_Stewart_of_Darnley-2_PAGE := 2
John_Stewart_of_Darnley-2_BOX := $(BOX_RELIQUARY)

Mehmed_II-1_PDF := CHARACTER_PDF_1
Mehmed_II-1_PAGE := 2
Mehmed_II-1_BOX := $(BOX_RELIQUARY)

Mehmed_II-2_PDF := CHARACTER_PDF_2
Mehmed_II-2_PAGE := 2
Mehmed_II-2_BOX := $(BOX_RELIQUARY)

The_Great_Reaper_PDF := CHARACTER_PDF_4
The_Great_Reaper_PAGE := 1
The_Great_Reaper_BOX := $(BOX_RELIQUARY)

Vlad_Tepes-1_PDF := CHARACTER_PDF_1
Vlad_Tepes-1_PAGE := 1
Vlad_Tepes-1_BOX := $(BOX_RELIQUARY)

Vlad_Tepes-2_PDF := CHARACTER_PDF_2
Vlad_Tepes-2_PAGE := 1
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
	HEXTRA=$$((($$W-$(W)*$(DENSITY)*10/254)/2)) ; \
	VEXTRA=$$((($$H-$(H)*$(DENSITY)*10/254)/2)) ; \
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
		echo HEXTRA=$$HEXTRA ; \
		echo VEXTRA=$$VEXTRA ; \
		echo HBORDER=$$HBORDER ; \
		echo VBORDER=$$VBORDER ; \
		echo HCUT=$$HCUT ; \
		echo VCUT=$$VCUT ; \
	) > $@

$(ALL_CARDS:=-$(DENSITY).png): %-$(DENSITY).png: %.pdf %-$(DENSITY).dim
	. ./$(@:.png=.dim) ; \
	convert -density $(DENSITY) -colorspace srgb $< -bordercolor white -border $$HBORDERx$$VBORDER \
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
		-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $($(@:-$(DENSITY).png=)_BOX)" \
		-draw "gravity NorthEast ; text $(ANNOTATE_DATE) '$($($(@:-$(DENSITY).png=)_PDF)_DATE)'" \
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
		-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_CORE)" \
		$@

%-B-$(DENSITY).png: %-$(DENSITY).png %-$(DENSITY).dim
	. ./$(@:-B-$(DENSITY).png=-$(DENSITY).dim) ; \
	convert -density $(DENSITY) $< \
		-font $(FONT) -pointsize $(FONTSIZE) \
		-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_BATTLES)" \
		$@

%-V-$(DENSITY).png: %-$(DENSITY).png %-$(DENSITY).dim
	. ./$(@:-V-$(DENSITY).png=-$(DENSITY).dim) ; \
	convert -density $(DENSITY) $< \
		-font $(FONT) -pointsize $(FONTSIZE) \
		-draw "gravity NorthWest ; text $(ANNOTATE_BOX) $(BOX_VILLAGE)" \
		$@

PAGEDEPS_1 := Patay-French Executioner Jannisaries Targoviste-Mehmed Targoviste-Tepes
define PAGEFMT_1 :=
\( \
	\( Patay-French-$(DENSITY).png \( Executioner-$(DENSITY).png Jannisaries-$(DENSITY).png -rotate 90 -append \) +append \) \
	\( Targoviste-Mehmed-$(DENSITY).png Targoviste-Tepes-$(DENSITY).png +append \) \
	-append \
\)
endef

PAGEDEPS_2 := Merchant_Girl Mounted_Bowmen Peasants
define PAGEFMT_2 :=
\( \
	\( Merchant_Girl-C-$(DENSITY).png Merchant_Girl-V-$(DENSITY).png Mounted_Bowmen-$(DENSITY).png Mounted_Bowmen-$(DENSITY).png -rotate 90 -append \) \
	\( Peasants-C-$(DENSITY).png Peasants-C-$(DENSITY).png Peasants-B-$(DENSITY).png Peasants-B-$(DENSITY).png -rotate 90 -append \) \
	+append \
\)
endef

PAGEDEPS_3 := Mehmed_II-1 Mehmed_II-2 Vlad_Tepes-1 Vlad_Tepes-2
define PAGEFMT_3 :=
\( \
	\( Mehmed_II-1-$(DENSITY).png Mehmed_II-2-$(DENSITY).png +append \) \
	\( Vlad_Tepes-1-$(DENSITY).png Vlad_Tepes-2-$(DENSITY).png +append \) \
	-append \
\)
endef

PAGEDEPS_4 := John_Stewart_of_Buchan-1 John_Stewart_of_Buchan-2 John_Stewart_of_Darnley-1 John_Stewart_of_Darnley-2
define PAGEFMT_4 :=
\( \
	\( John_Stewart_of_Buchan-1-$(DENSITY).png John_Stewart_of_Buchan-2-$(DENSITY).png +append \) \
	\( John_Stewart_of_Darnley-1-$(DENSITY).png John_Stewart_of_Darnley-2-$(DENSITY).png +append \) \
	-append \
\)
endef

PAGEDEPS_5 := The_Great_Reaper
define PAGEFMT_5 :=
\( \
	\( The_Great_Reaper-$(DENSITY).png \( -clone -1 -fx 1 \) +append \) \
	\( -clone -1 -fx 1 \) \
	-append \
\)
endef

ALL_PAGES := $(shell seq 1 $(NUM_PAGES))

$(ALL_PAGES:%=page-%): page-%: page-%-$(DENSITY).pdf
	touch $@

page-%-$(DENSITY).pdf: $$(PAGEDEPS_%)
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
