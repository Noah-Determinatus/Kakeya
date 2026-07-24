#!/bin/bash
set -e
if grep -r "sorry" Kakeya3D/ Kakeya4D/ --exclude="*.lean~"; then
  echo "❌ Sorries encontrados en Kakeya3D o Kakeya4D"
  exit 1
else
  echo "✅ 0 sorries en Kakeya3D y Kakeya4D"
fi