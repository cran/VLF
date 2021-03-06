\name{aa.VLF.count.spec}
\alias{aa.VLF.count.spec}
\title{
VLF Specimen Count
}
\description{
Calculates the number of very low frequency variants for each specimen in a matrix of sequences.
}
\usage{
aa.VLF.count.spec(freq, p, seqlength)
}
\arguments{
  \item{freq}{
A matrix of amino acid frequencies for each specimen.
}
  \item{p}{
A very low frequency variant cut-off frequency.  Any frequency in the freq matrix below this value is considered to be a very low frequency variant.
}
  \item{seqlength}{
The length of the amino acid sequences.
}
}
\value{
A vector containing the aaVLF count for every specimen.
}
\author{
Taryn B. T. Athey and Paul D. McNicholas
}
\examples{
\dontrun{data(birds_aminoAcids)
birds_aminoAcid_speciesNames <- birds_aminoAcids[,2]
aminoAcids_specimenNumber <- nrow(birds_aminoAcids)
birds_aminoAcid_count <- aa.count.function(birds_aminoAcids, 216)
aminoAcid_frequency.Matrix <- aa.frequency.matrix.function(birds_aminoAcid_count, 216)
bird_aminoAcid_frequencies <- aa.specimen.frequencies(aminoAcid_frequency.Matrix, birds_aminoAcids,
    birds_aminoAcid_speciesNames, 216)
birds_aminoAcid_specimenVLFcount <- aa.VLF.count.spec(bird_aminoAcid_frequencies, 0.001, 216)}
}
