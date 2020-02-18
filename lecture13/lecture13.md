Untitled
================

Downloading and seperating the HIV-Pr receptor structure. We’ll download
the structure (1hsg) from PDB, then remove the bound drug from Merk and
write out a protein only and ligand only new set of PDB files.

``` r
library(bio3d)

"1hsg" <- get.pdb("1hsg")
```

    ## Warning in get.pdb("1hsg"): ./1hsg.pdb exists. Skipping download

``` r
hiv <- read.pdb("1hsg")
```

    ##   Note: Accessing on-line PDB file

``` r
protein <- atom.select(hiv, "protein", value=TRUE)
write.pdb(protein, file="1hsg_protein.pdb") 


ligand <- atom.select(hiv, "ligand", value=TRUE)
write.pdb(ligand, file="1hsg_ligand.pdb") 
ligand
```

    ## 
    ##  Call:  trim.pdb(pdb = pdb, sele)
    ## 
    ##    Total Models#: 1
    ##      Total Atoms#: 45,  XYZs#: 135  Chains#: 1  (values: B)
    ## 
    ##      Protein Atoms#: 0  (residues/Calpha atoms#: 0)
    ##      Nucleic acid Atoms#: 0  (residues/phosphate atoms#: 0)
    ## 
    ##      Non-protein/nucleic Atoms#: 45  (residues: 1)
    ##      Non-protein/nucleic resid values: [ MK1 (1) ]
    ## 
    ## + attr: atom, helix, sheet, seqres, xyz,
    ##         calpha, call
