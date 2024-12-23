

python test.py ./configs/HoloAssist/holo_bgr1.0_verb_b1_n2_smooth_causal_gmm.yaml ./ckpt/HoloAssist/holo_bgr1.0_verb_b1_n2_smooth_causal_gmm_final
python metric_vis_holo.py  --dirname holo_bgr1.0_verb_b1_n2_smooth_causal_gmm_final/ -as --action verb --dirs HoloAssist
python test_ed.py ./configs/HoloAssist/holo_bgr1.0_verb_b1_n2_smooth_causal_gmm.yaml ./ckpt/HoloAssist/holo_bgr1.0_verb_b1_n2_smooth_causal_gmm_final
python metric_vis_holo.py  --dirname holo_bgr1.0_verb_b1_n2_smooth_causal_gmm_final/ -ed --action verb --dirs HoloAssist

python test.py ./configs/HoloAssist/holo_bgr1.0_noun_b1_n2_smooth_causal_gmm.yaml ./ckpt/HoloAssist/holo_bgr1.0_noun_b1_n2_smooth_causal_gmm_final
python metric_vis_holo.py  --dirname holo_bgr1.0_noun_b1_n2_smooth_causal_gmm_final/ -as --action noun --dirs HoloAssist
python test_ed.py ./configs/HoloAssist/holo_bgr1.0_noun_b1_n2_smooth_causal_gmm.yaml ./ckpt/HoloAssist/holo_bgr1.0_noun_b1_n2_smooth_causal_gmm_final
python metric_vis_holo.py  --dirname holo_bgr1.0_noun_b1_n2_smooth_causal_gmm_final/ -ed --action noun --dirs HoloAssist


