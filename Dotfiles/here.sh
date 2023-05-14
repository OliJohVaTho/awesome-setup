config_list="laptop.txt"
out_dir="./"

# rm -rf $out_dir
cat $config_list | rev | cut -d"/" -f1 --complement | rev | xargs -I % mkdir -p $out_dir/%
cat $config_list | xargs -I % cp -r $HOME/% $out_dir/%

echo "Done!"
