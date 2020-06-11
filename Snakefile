sample_names = ['sample1', 'sample2', 'sample3']

rule concat:
    input:
        expand("{sample}.fasta", sample=sample_names)
    output:
        "all_samples.fasta"
    shell:
        "cat {input} > {output}"

