# bloques: 3
# tratamientos: 9

library(agricolae)

# -------------------------------------------------------------------------
# dbca --------------------------------------------------------------------
# -------------------------------------------------------------------------

tratamientos <-c("testigo absoluto", "cp 10-3 + dosis 1", "cp 53-2 + dosis 1",
                 "cp 24-6 + dosis 1", "cp 38-2 + disis 1", "cp 10-3 + dosis 2",
                 "cp 53-2 + dosis 2", "cp 24-6 + dosis 2", "cp 38-2 + dosis 2")
ds<- agricolae::design.rcbd(trt = tratamientos, r = 4)
str(ds)
fb <- ds$book
fb
fieldbook <- zigzag(ds)

fieldbook
print(ds$sketch)
