#!/bin/bash
set -e
lake env lean --run <<'EOF'
import Kakeya3D.MainTheorem
import Kakeya4D.Roadmap4D
#print axioms kakeya_3d
#print axioms kakeya_4d_sticky_planebrush_narrative_trap
EOF