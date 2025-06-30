process HELLO {
    input:
    val name

    output:
    stdout

    script:
    """
    echo "Hello, ${name}!" 
    """
}
