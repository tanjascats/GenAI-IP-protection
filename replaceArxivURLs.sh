for i in references.bib; do
    echo $i; 
    sed -i "s/note = {arXiv:\(.*\)}/note = {\\\href{http:\/\/arxiv.org\/abs\/\1}{arXiv:\1}}/g" $i 
    sed -i "s/Pre-print: arXiv:\(.*\)/Pre-print: \\\href{http:\/\/arxiv.org\/abs\/\1}{arXiv:\1}/g" $i 
    sed -i "s/ \[v\([0-9]*\)\]}{/v\1}{/g" $i 
done

