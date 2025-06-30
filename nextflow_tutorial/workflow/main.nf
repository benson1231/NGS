nextflow.enable.dsl = 2

include { HELLO } from '../modules/hello/hello.nf'

workflow {
    def names_ch = (params.name instanceof List)
                   ? Channel.from(params.name)
                   : Channel.of(params.name)

    HELLO(names_ch)
}