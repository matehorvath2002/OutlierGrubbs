OutlierGrubbs <- function(df) {
  {
    for (i in 1:ncol(df)) {
      if (typeof(df[,i])=="double") {
        repeat {
          {
            {
              Result <- grubbs.test(df[,i])
            }
            {
              if (Result$p.value < 0.05) {
                df <- df[max(df[,i])>df[,i],]
              } else {

              }
            }
          }
          if (Result$p.value >= 0.05) {
            break
          }
        }
        repeat {
          {
            {
              Result <- grubbs.test(df[,i], opposite = TRUE)
            }
            {
              if (Result$p.value < 0.05) {
                df <- df[min(df[,i])<df[,i],]
              } else {

              }
            }
          }
          if (Result$p.value >= 0.05) {
            break
          }
        }
      } else {

      }
    }
  }
  return(df)
}
