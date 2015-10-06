mv .vimrc ~/.vimrc
rm -f .netwrhist
echo "let g:netrw_dirhistmax  =10" >> .netrwhist
echo "let g:netrw_dirhist_cnt =1" >> .netrwhist
echo "let g:netrw_dirhist_1='$(pwd)'" >> .netrwhist
