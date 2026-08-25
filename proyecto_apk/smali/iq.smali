.class public final synthetic Liq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Liq;->a:I

    iput-object p2, p0, Liq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Liq;->a:I

    .line 6
    .line 7
    const-string v3, " gap="

    .line 8
    .line 9
    const-string v4, "x"

    .line 10
    .line 11
    const-string v5, "vd_height_gap"

    .line 12
    .line 13
    const-string v6, "map_action_auto_dim"

    .line 14
    .line 15
    const-string v7, "launch_shortcuts"

    .line 16
    .line 17
    const-string v8, "vd_width_gap_enabled"

    .line 18
    .line 19
    const-string v9, "map_action_force_landscape"

    .line 20
    .line 21
    const-string v10, "vd_height_gap_enabled"

    .line 22
    .line 23
    const-string v11, "vd_width_gap"

    .line 24
    .line 25
    const-string v14, "map_action_recents"

    .line 26
    .line 27
    const-string v15, "force_landscape_active"

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const-string v12, "map_action_back"

    .line 32
    .line 33
    const-string v13, "map_action_home"

    .line 34
    .line 35
    move/from16 v18, v2

    .line 36
    .line 37
    const-string v2, "auto_dim"

    .line 38
    .line 39
    iget-object v0, v0, Liq;->b:Ljava/lang/Object;

    .line 40
    .line 41
    packed-switch v18, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    check-cast v0, Lidv/lzn/screenonauto/SettingsFragment;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const v4, 0x55c621f8

    .line 53
    .line 54
    .line 55
    if-eq v3, v4, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v0, v0, Lidv/lzn/screenonauto/SettingsFragment;->h0:Landroidx/preference/SwitchPreferenceCompat;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    move-object/from16 v1, p1

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->A(Z)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void

    .line 79
    :pswitch_0
    check-cast v0, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 80
    .line 81
    sget v3, Lidv/lzn/screenonauto/ScreenCaptureService;->g:I

    .line 82
    .line 83
    if-eqz v1, :cond_a

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sparse-switch v3, :sswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_2
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_2
    iget-object v0, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->c:Lus;

    .line 119
    .line 120
    if-eqz v0, :cond_a

    .line 121
    .line 122
    invoke-virtual {v0}, Lus;->a()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_3
    const-string v2, "keep_awake"

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_3
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->b()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_6

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :sswitch_5
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_4

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->a()V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :sswitch_6
    const-string v2, "root_screen_off"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->a()V

    .line 171
    .line 172
    .line 173
    iget-object v0, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 174
    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    invoke-virtual {v0}, La7;->a()V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :sswitch_7
    const-string v2, "auto_dim_delay"

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_6

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_6
    iget-object v0, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->b:La7;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    invoke-virtual {v0}, La7;->a()V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :sswitch_8
    const-string v2, "root_touch_injection"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_7

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_7
    invoke-virtual {v0}, Lidv/lzn/screenonauto/ScreenCaptureService;->a()V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :sswitch_9
    const-string v2, "self_draw"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_8

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    sget v1, Lb00;->a:I

    .line 221
    .line 222
    iget-object v0, v0, Lidv/lzn/screenonauto/ScreenCaptureService;->d:Landroid/content/SharedPreferences;

    .line 223
    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    const/4 v3, 0x0

    .line 227
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    sget-object v1, Lb00;->k:Landroid/os/Handler;

    .line 232
    .line 233
    new-instance v2, Lsu;

    .line 234
    .line 235
    const/4 v3, 0x1

    .line 236
    invoke-direct {v2, v3, v0}, Lsu;-><init>(IZ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_9
    const-string v0, "prefs"

    .line 244
    .line 245
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v16

    .line 249
    :cond_a
    :goto_1
    return-void

    .line 250
    :pswitch_1
    check-cast v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 251
    .line 252
    sget v16, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 253
    .line 254
    if-eqz v1, :cond_14

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    sparse-switch v16, :sswitch_data_1

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :sswitch_a
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_f

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :sswitch_b
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_f

    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :sswitch_c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_b

    .line 286
    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :cond_b
    iget-object v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 290
    .line 291
    if-eqz v1, :cond_14

    .line 292
    .line 293
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :sswitch_d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_10

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :sswitch_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_c

    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :cond_c
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->p()V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_2

    .line 318
    .line 319
    :sswitch_f
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_10

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :sswitch_10
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_f

    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :sswitch_11
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_f

    .line 340
    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :sswitch_12
    const-string v2, "legacy_buttons_dodge_nav"

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_d

    .line 350
    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :sswitch_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_10

    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :sswitch_14
    const-string v2, "legacy_buttons_left"

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_d

    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :cond_d
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :sswitch_15
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_e

    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :cond_e
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :sswitch_16
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v1, :cond_f

    .line 400
    .line 401
    goto/16 :goto_2

    .line 402
    .line 403
    :cond_f
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :sswitch_17
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-nez v1, :cond_10

    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :cond_10
    iget-object v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->z:Landroid/view/Surface;

    .line 423
    .line 424
    if-nez v1, :cond_11

    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :cond_11
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_14

    .line 433
    .line 434
    iget v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 435
    .line 436
    if-eqz v1, :cond_14

    .line 437
    .line 438
    iget v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 439
    .line 440
    if-nez v1, :cond_12

    .line 441
    .line 442
    goto :goto_2

    .line 443
    :cond_12
    sget-object v1, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 444
    .line 445
    if-nez v1, :cond_13

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_13
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    iget v2, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 456
    .line 457
    invoke-static {v1, v2}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    iput v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 462
    .line 463
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    iget v2, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 471
    .line 472
    invoke-static {v1, v2}, Lk60;->d(Landroid/content/SharedPreferences;I)I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    iput v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->y:I

    .line 477
    .line 478
    iget v2, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 479
    .line 480
    iget v5, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 481
    .line 482
    iget v6, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 483
    .line 484
    invoke-virtual {v0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-static {v7}, Lk60;->m(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    const-string v8, "reapplyGap: "

    .line 496
    .line 497
    const-string v9, " surface="

    .line 498
    .line 499
    invoke-static {v8, v2, v4, v1, v9}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const-string v2, "ProjectionCarActivity"

    .line 523
    .line 524
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    iget v1, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 528
    .line 529
    iget v2, v0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->y:I

    .line 530
    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 540
    .line 541
    sget-object v3, Lb00;->k:Landroid/os/Handler;

    .line 542
    .line 543
    new-instance v4, Lwz;

    .line 544
    .line 545
    sget-object v5, Lyz;->b:Lyz;

    .line 546
    .line 547
    invoke-direct {v4, v5, v1, v2, v0}, Lwz;-><init>(Lyz;III)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    .line 552
    .line 553
    :cond_14
    :goto_2
    return-void

    .line 554
    :pswitch_2
    check-cast v0, Lmq;

    .line 555
    .line 556
    if-eqz v1, :cond_16

    .line 557
    .line 558
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 559
    .line 560
    .line 561
    move-result v17

    .line 562
    sparse-switch v17, :sswitch_data_2

    .line 563
    .line 564
    .line 565
    goto :goto_4

    .line 566
    :sswitch_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-nez v2, :cond_15

    .line 571
    .line 572
    goto :goto_4

    .line 573
    :sswitch_19
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_16

    .line 578
    .line 579
    goto :goto_3

    .line 580
    :sswitch_1a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-nez v2, :cond_15

    .line 585
    .line 586
    goto :goto_4

    .line 587
    :sswitch_1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-nez v2, :cond_15

    .line 592
    .line 593
    goto :goto_4

    .line 594
    :sswitch_1c
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-nez v2, :cond_15

    .line 599
    .line 600
    goto :goto_4

    .line 601
    :sswitch_1d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    if-nez v2, :cond_15

    .line 606
    .line 607
    goto :goto_4

    .line 608
    :sswitch_1e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_15

    .line 613
    .line 614
    goto :goto_4

    .line 615
    :sswitch_1f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-nez v2, :cond_15

    .line 620
    .line 621
    goto :goto_4

    .line 622
    :cond_15
    :goto_3
    invoke-virtual {v0}, Lmq;->e()V

    .line 623
    .line 624
    .line 625
    :cond_16
    :goto_4
    if-eqz v1, :cond_19

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    sparse-switch v2, :sswitch_data_3

    .line 632
    .line 633
    .line 634
    goto/16 :goto_5

    .line 635
    .line 636
    :sswitch_20
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-nez v1, :cond_17

    .line 641
    .line 642
    goto/16 :goto_5

    .line 643
    .line 644
    :sswitch_21
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-nez v1, :cond_17

    .line 649
    .line 650
    goto/16 :goto_5

    .line 651
    .line 652
    :sswitch_22
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-nez v1, :cond_17

    .line 657
    .line 658
    goto/16 :goto_5

    .line 659
    .line 660
    :sswitch_23
    const-string v2, "nav_fixed_size"

    .line 661
    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-nez v1, :cond_17

    .line 667
    .line 668
    goto :goto_5

    .line 669
    :sswitch_24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_19

    .line 674
    .line 675
    :cond_17
    iget-object v1, v0, Lmq;->o:Landroid/content/SharedPreferences;

    .line 676
    .line 677
    iget v2, v0, Lmq;->i:I

    .line 678
    .line 679
    if-eqz v2, :cond_19

    .line 680
    .line 681
    iget v2, v0, Lmq;->k:I

    .line 682
    .line 683
    if-eqz v2, :cond_19

    .line 684
    .line 685
    iget v2, v0, Lmq;->h:I

    .line 686
    .line 687
    if-nez v2, :cond_18

    .line 688
    .line 689
    goto :goto_5

    .line 690
    :cond_18
    iget-object v2, v0, Lmq;->l:Landroid/os/Handler;

    .line 691
    .line 692
    move-object/from16 v5, v16

    .line 693
    .line 694
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0}, Lmq;->h()I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    invoke-static {v1, v2}, Lk60;->e(Landroid/content/SharedPreferences;I)I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    iput v2, v0, Lmq;->f:I

    .line 709
    .line 710
    iget v2, v0, Lmq;->k:I

    .line 711
    .line 712
    invoke-static {v1, v2}, Lk60;->d(Landroid/content/SharedPreferences;I)I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    iput v2, v0, Lmq;->g:I

    .line 717
    .line 718
    iget v5, v0, Lmq;->f:I

    .line 719
    .line 720
    invoke-virtual {v0}, Lmq;->h()I

    .line 721
    .line 722
    .line 723
    move-result v6

    .line 724
    iget v7, v0, Lmq;->k:I

    .line 725
    .line 726
    invoke-static {v1}, Lk60;->m(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    const-string v8, "reapplySize: "

    .line 731
    .line 732
    const-string v9, " basis="

    .line 733
    .line 734
    invoke-static {v8, v5, v4, v2, v9}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    const-string v2, "MirrorScreen"

    .line 758
    .line 759
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    sget v1, Lb00;->a:I

    .line 763
    .line 764
    iget v1, v0, Lmq;->f:I

    .line 765
    .line 766
    iget v2, v0, Lmq;->g:I

    .line 767
    .line 768
    iget v0, v0, Lmq;->h:I

    .line 769
    .line 770
    sget-object v3, Lb00;->k:Landroid/os/Handler;

    .line 771
    .line 772
    new-instance v4, Lwz;

    .line 773
    .line 774
    sget-object v5, Lyz;->a:Lyz;

    .line 775
    .line 776
    invoke-direct {v4, v5, v1, v2, v0}, Lwz;-><init>(Lyz;III)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    .line 781
    .line 782
    :cond_19
    :goto_5
    return-void

    .line 783
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :sswitch_data_0
    .sparse-switch
        -0x64d239a9 -> :sswitch_9
        -0x5d33dd86 -> :sswitch_8
        -0x2401b84 -> :sswitch_7
        0x2315a99 -> :sswitch_6
        0x190af9b2 -> :sswitch_5
        0x55c621f8 -> :sswitch_4
        0x61ed904b -> :sswitch_3
        0x68c8bbde -> :sswitch_2
        0x6a128aed -> :sswitch_1
        0x6a157ae5 -> :sswitch_0
    .end sparse-switch

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :sswitch_data_1
    .sparse-switch
        -0x747dae11 -> :sswitch_17
        -0x71b3cb02 -> :sswitch_16
        -0x6ea6f89f -> :sswitch_15
        -0x4f9a3945 -> :sswitch_14
        -0x3a287972 -> :sswitch_13
        -0x2836d979 -> :sswitch_12
        0x11b9a8a1 -> :sswitch_11
        0x190af9b2 -> :sswitch_10
        0x292424f1 -> :sswitch_f
        0x55c621f8 -> :sswitch_e
        0x596ba08c -> :sswitch_d
        0x68c8bbde -> :sswitch_c
        0x6a128aed -> :sswitch_b
        0x6a157ae5 -> :sswitch_a
    .end sparse-switch

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :sswitch_data_2
    .sparse-switch
        -0x71b3cb02 -> :sswitch_1f
        -0x6ea6f89f -> :sswitch_1e
        0x11b9a8a1 -> :sswitch_1d
        0x190af9b2 -> :sswitch_1c
        0x55c621f8 -> :sswitch_1b
        0x68c8bbde -> :sswitch_1a
        0x6a128aed -> :sswitch_19
        0x6a157ae5 -> :sswitch_18
    .end sparse-switch

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    :sswitch_data_3
    .sparse-switch
        -0x747dae11 -> :sswitch_24
        -0x60811d78 -> :sswitch_23
        -0x3a287972 -> :sswitch_22
        0x292424f1 -> :sswitch_21
        0x596ba08c -> :sswitch_20
    .end sparse-switch
.end method
