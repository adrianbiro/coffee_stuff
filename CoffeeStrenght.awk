#!/usr/bin/awk -f

BEGIN {
        printf("Total liquid in g: ")
        getline tlg < "-"
        printf("Starting dose of coffee in g: ")
        getline cfd < "-"
        # This requires a refractometer to provide initial coffee measurements.
        printf("Total Dissolved Solids in %: ")
        getline tds < "-"
        # The unifying formula in case the refractometer yields value not adjusted to percentages.
        (tds < 1) ? exy = ((tlg * tds) / cfd) * 100 : exy = (tlg * tds) / cfd
        printf("Extraction Yield: %.2f%\n", exy)
        }
# tlg 225 cfd 15 tds 0.0135 -> 20.25%
# tlg 225 cfd 15 tds 1.35 -> 20.25%

