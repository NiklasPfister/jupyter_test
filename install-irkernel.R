install.packages(c('crayon', 'pbdZMQ', 'devtools'),
                repos = 'http://cran.us.r-project.org')
devtools::install_github('IRkernel/IRkernel')


IRkernel::installspec()
