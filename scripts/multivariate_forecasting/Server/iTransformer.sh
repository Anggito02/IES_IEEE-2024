export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --is_testing 1 \
  --is_predicting 1 \
  --root_path ./dataset/server_log/ \
  --data_path server.csv \
  --model_id SVR_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 3 \
  --enc_in 10 \
  --dec_in 10 \
  --c_out 10 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 32 \
  --learning_rate 0.0005 \
  --itr 1

python -u run.py \
  --is_training 1 \
  --is_testing 1 \
  --is_predicting 1 \
  --root_path ./dataset/server_log/ \
  --data_path server.csv \
  --model_id SVR_96_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 3 \
  --enc_in 10 \
  --dec_in 10 \
  --c_out 10 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 32 \
  --learning_rate 0.0005 \
  --itr 1

python -u run.py \
  --is_training 1 \
  --is_testing 1 \
  --is_predicting 1 \
  --root_path ./dataset/server_log/ \
  --data_path server.csv \
  --model_id SVR_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 3 \
  --enc_in 10 \
  --dec_in 10 \
  --c_out 10 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 32 \
  --learning_rate 0.0005 \
  --itr 1

python -u run.py \
  --is_training 1 \
  --is_testing 1 \
  --is_predicting 1 \
  --root_path ./dataset/server_log/ \
  --data_path server.csv \
  --model_id SVR_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 3 \
  --enc_in 10 \
  --dec_in 10 \
  --c_out 10 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 32 \
  --learning_rate 0.0005 \
  --itr 1