#!/usr/bin/awk -f

BEGIN {
        printf("Total liquid in g: ")
        getline tlg < "-"
        printf("Aditional water g: ")
        getline aw < "-"
        # This requires a refractometer to provide initial coffee measurements.
        printf("Total Dissolved Solids in %: ")
        getline tds < "-"
        (tds < 1) ? tds = tds : tds = tds / 100
        cfrat = tlg*tds
        nwexy = (100*cfrat) / (tlg+aw)
        printf("TDS after dilusion: %.2f%\n", nwexy)
        }
# tlg 225 aw 50 tds 0.0135 -> 1.10%
# tlg 225 aw 50 tds 1.35 -> 1.10%

