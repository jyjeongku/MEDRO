{ sleep 5; echo "y"; } | python -m subpopbench.sweep launch --command_launcher local --algorithms MEDRO --dataset CelebA --output_folder_name my_output

sleep 5

{ sleep 5; echo "y"; } | python -m subpopbench.sweep launch --command_launcher local --algorithms MEDRO --dataset CelebA --best_hp --input_folder my_output --output_folder_name my_output_final

sleep 5

python -m subpopbench.scripts.collect_results --input_dir my_output_final