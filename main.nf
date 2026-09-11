#!/usr/bin/env nextflow

process sayHello {
    input:
    val greeting

    output:
    stdout

    script:
    """
    echo '${greeting} world!'
    """
}

workflow {
    ch_greetings = channel.of('Hallo', 'Hello', 'Hola', 'Bonjour')
    sayHello(ch_greetings).view()
}
