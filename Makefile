.PHONY: build check audit

build:
	lake build Kakeya3D
	lake build Kakeya4D

check:
	scripts/check_no_sorry.sh

audit:
	scripts/audit_axioms.sh
	lake env lean --run <<< '#print axioms'

all: build check audit