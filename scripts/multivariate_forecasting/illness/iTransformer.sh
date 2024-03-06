export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ILI_36_24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 36 \
  --label_len 18 \
  --pred_len 24 \
  --e_layers 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 32 \
  --learning_rate 0.001 \
  --itr 1