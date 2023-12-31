% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDepth.R
\name{getDepth}
\alias{getDepth}
\title{Get Read Depth}
\usage{
getDepth(x, chrom, start, end)
}
\arguments{
\item{x}{path to a BAM file}

\item{chrom}{chromosome of a region to be searched}

\item{start}{start position}

\item{end}{end position}
}
\value{
a data.frame in bedgraph file format.
}
\description{
Get read depth from a BAM file (in bedgraph format)
}
\examples{
path <- system.file('extdata',package='VaSP')
bam_files<-list.files(path,'bam$')
bam_files

depth<-getDepth(file.path(path, bam_files[1]), 'Chr1',
                start=1171800, end=1179400)
head(depth)

# library(Sushi)
# plotBedgraph(depth,'Chr1',chromstart=1171800, chromend=1179400,yaxt='s')
# mtext('Depth',side=2,line=2.5,cex=1.2,font=2)
# labelgenome('Chr1',1171800,1179400,side=1,scipen=20,n=5,scale='Kb')
}