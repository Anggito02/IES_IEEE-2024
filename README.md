# iTransformer

This repo is the official implementation of "[iTransformer: Inverted Transformers Are Effective for Time Series Forecasting](https://arxiv.org/abs/2310.06625)" as well as the follow-ups. It currently includes code and models for the following tasks:

> **Multivariate Forecasting**

> **Boosting Forecasting Performance of Transformers**

> **Generalization on Unseen Variates**

> **Better Utilization of Larger Lookback**

> **Adopt Efficienting Attention Modules**

## Usage 

1. Install Pytorch and other necessary dependencies.
```
pip install -r requirements.txt
```
1. All the benchmark datasets can be obtained from [Google Drive]() or [Tsinghua Cloud](). # TODO: Add link and include alipay data
2. Train and evaluate model. We provide the experiment scripts of all benchmarks under the folder ./scripts/. You can reproduce the experiment results as the following examples:

```
# multivariate forecasting
bash ./scripts/multivariate_forecast/Traffic/iTransformer.sh

# boosting the performance of transformer
bash ./scripts/boost_performance/Weather/iTransformer.sh

# train with 20% variates, and generalize on the left variates
bash ./scripts/variate_generalization/Electricity/iTransformer.sh

# test the performance of increasing length of lookback window
bash ./scripts/increasing_lookback/Traffic/iTransformer.sh

# use FlashAttention (hardware-friendly) for acceleration
bash ./scripts/efficient_attentions/iFlashTransformer.sh
```

## Introduction

🏆 iTransformer takes an **overall lead** in complex time series forecasting tasks to solve the pain points of Transformer modeling time series data.

<p align="center">
<img src="./figures/radar.png" height = "270" alt="" align=center />
</p>

🌟 Considering the characteristics of multivariate time series, iTransformer breaks the conventional model structure without modifying any Transformer module.

<p align="center">
<img src="./figures/motivation.png"  alt="" align=center />
</p>

## Overall Architecture

- **Embed time series as Variate Tokens**

- **LayerNorm for feature alignment and tackling non-stationarity**

- **Feed-forward network for temproal encoding/decoding**

- **Self-attention for multiariate correlations**


<p align="center">
<img src="./figures/architecture.png" alt="" align=center />
</p>

## Main Result of Multivariate Forecasting
We evaluate the iTransformer on six challenging multivariate forecasting benchmarks and the server load of Alipay online transaction prediction (generally hundreds of variates).

<p align="center">
<img src="./figures/datasets.png" alt="" align=center />
</p>

### Challenging Multivariate Time Series Forecasting Benchmarks (Avg Results)

<p align="center">
<img src="./figures/main_results.png" alt="" align=center />
</p>

### Online Transaction Load Prediction of Alipay Trading Platform (Avg Results) 



<p align="center">
<img src="./figures/main_results.png" alt="" align=center />
</p>

\# TODO: Replace the Table

## General Performance Boosting on Transformers

By introducing the proposed framework, Transformer and its variants achieve significant performance improvement, demonstrating the universality of iTransformer framework and the feasibility of benefiting from efficient attention mechanisms.

<p align="center">
<img src="./figures/boosting.png" alt="" align=center />
</p>

## Generalization on Unseen Variates

By inverting, the model can forecast with different number of variables during inference. The results show that the framework can minimize the generalization error when only 20% of the variables are used.

<p align="center">
<img src="./figures/generability.png" alt="" align=center /> # TODO: Update the New One
</p>

## Better Utilization of Model Observations
While previous Transformer architecture does not necessarily bebefit from the increase of historical observation. iTransformer model shows a surprising improvement of forecasting performance with the increasing length of lookback window.

<p align="center">
<img src="./figures/increase_lookback.png" alt="" align=center />
</p>

## Model Abalations

iTransformer that utilizes attention on variate dimension and feed-forward on temporal dimension generally achieves the best performance. Notably, the performance of vanilla Transformer (the third row) performs the worst among these designs, indicating the disaccord of responsibility when the conventional architecture is adopted.

<p align="center">
<img src="./figures/ablations.png" alt="" align=center />
</p>

## Model Analysis
We conduct model analysis to validate that:
1. Transformer learns better sequence features (more similar CKA) for better prediction.
2. The self-attention module learns more interptetable multivariate correlations.

<p align="center">
<img src="./figures/analysis.png" alt="" align=center />
</p>

## Citation

If you find this repo useful, please cite our paper. 

```
@article{liu2023itransformer,
  title={iTransformer: Inverted Transformers Are Effective for Time Series Forecasting},
  author={Liu, Yong and Hu, Tengge and Zhang, Haoran and Wu, Haixu and Wang, Shiyu and Ma, Lintao and Long, Mingsheng},
  journal={arXiv preprint arXiv:2310.06625},
  year={2023}
}
```

## Contact

If you have any questions or want to use the code, feel free to contact:
* Yong Liu (liuyong21@mails.tsinghua.edu.cn)
* Haoran Zhang (z-hr20@mails.tsinghua.edu.cn)