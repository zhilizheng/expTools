FROM zhiliz/r_py:2022.6.29

RUN Rscript -e "devtools::install_github('SomaLogic/SomaDataIO')"

RUN Rscript -e "install.packages(c('BiocManager', 'OlinkAnalyze'))"

RUN Rscript -e "BiocManager::install('Biobase', version = remotes::bioc_version())"




