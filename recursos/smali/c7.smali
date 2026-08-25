.class public final Lc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc7;->a:I

    iput-object p2, p0, Lc7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc7;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, v0, Lc7;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v6, Lm90;

    .line 15
    .line 16
    iget-object v0, v6, Lm90;->c:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v6, Lay;

    .line 23
    .line 24
    invoke-virtual {v6}, Lay;->v()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast v6, Le50;

    .line 29
    .line 30
    iget-object v0, v6, Le50;->t:Landroid/view/Window$Callback;

    .line 31
    .line 32
    invoke-virtual {v6}, Le50;->L()Landroid/view/Menu;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lso;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Lso;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v2, v4

    .line 45
    :goto_0
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lso;->w()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v0, v5, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_3
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v2}, Lso;->v()V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void

    .line 77
    :goto_2
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Lso;->v()V

    .line 80
    .line 81
    .line 82
    :cond_5
    throw v0

    .line 83
    :pswitch_2
    check-cast v6, Landroidx/appcompat/widget/Toolbar;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->v()Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_3
    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 90
    .line 91
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s0()Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_4
    check-cast v6, Lju;

    .line 96
    .line 97
    invoke-virtual {v6}, Lju;->f()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_5
    check-cast v6, Lgu;

    .line 102
    .line 103
    iget-object v0, v6, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_6
    check-cast v6, Lcf;

    .line 110
    .line 111
    iget-object v0, v6, Lcf;->e:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lvn;

    .line 114
    .line 115
    iget-object v1, v6, Lcf;->e:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lvn;

    .line 118
    .line 119
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 120
    .line 121
    invoke-virtual {v0}, Lu6;->keySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lim;

    .line 126
    .line 127
    invoke-virtual {v0}, Lim;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_6
    move-object v2, v0

    .line 132
    check-cast v2, Lhm;

    .line 133
    .line 134
    invoke-virtual {v2}, Lhm;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_c

    .line 139
    .line 140
    invoke-virtual {v2}, Lhm;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Landroid/os/IBinder;

    .line 145
    .line 146
    iget-object v6, v1, Lvn;->d:Lu6;

    .line 147
    .line 148
    invoke-virtual {v6, v2, v4}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lkn;

    .line 153
    .line 154
    iget-object v6, v2, Lkn;->e:Ljava/util/HashMap;

    .line 155
    .line 156
    const-string v7, "root"

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/util/List;

    .line 163
    .line 164
    if-eqz v6, :cond_6

    .line 165
    .line 166
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_6

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Lbt;

    .line 181
    .line 182
    iget-object v9, v8, Lbt;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v9, Landroid/os/Bundle;

    .line 185
    .line 186
    const/4 v10, -0x1

    .line 187
    if-nez v9, :cond_8

    .line 188
    .line 189
    move v11, v10

    .line 190
    goto :goto_4

    .line 191
    :cond_8
    const-string v11, "android.media.browse.extra.PAGE"

    .line 192
    .line 193
    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    :goto_4
    if-nez v9, :cond_9

    .line 198
    .line 199
    move v9, v10

    .line 200
    goto :goto_5

    .line 201
    :cond_9
    const-string v12, "android.media.browse.extra.PAGE_SIZE"

    .line 202
    .line 203
    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    :goto_5
    const v12, 0x7fffffff

    .line 208
    .line 209
    .line 210
    if-eq v11, v10, :cond_b

    .line 211
    .line 212
    if-ne v9, v10, :cond_a

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_a
    mul-int/2addr v11, v9

    .line 216
    add-int/2addr v9, v11

    .line 217
    sub-int/2addr v9, v3

    .line 218
    goto :goto_7

    .line 219
    :cond_b
    :goto_6
    move v11, v5

    .line 220
    move v9, v12

    .line 221
    :goto_7
    if-lt v12, v11, :cond_7

    .line 222
    .line 223
    if-ltz v9, :cond_7

    .line 224
    .line 225
    iget-object v8, v8, Lbt;->b:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v8, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-virtual {v1, v7, v2, v8}, Lvn;->d(Ljava/lang/String;Lkn;Landroid/os/Bundle;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_c
    return-void

    .line 234
    :pswitch_7
    check-cast v6, Lkn;

    .line 235
    .line 236
    iget-object v0, v6, Lkn;->g:Lvn;

    .line 237
    .line 238
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 239
    .line 240
    iget-object v1, v6, Lkn;->d:Lc9;

    .line 241
    .line 242
    iget-object v1, v1, Lc9;->b:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v1, Landroid/os/Messenger;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_8
    check-cast v6, Landroidx/fragment/app/a;

    .line 255
    .line 256
    invoke-virtual {v6, v3}, Landroidx/fragment/app/a;->w(Z)Z

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_9
    check-cast v6, Lye;

    .line 261
    .line 262
    iget-object v0, v6, Lye;->z:Landroid/animation/ValueAnimator;

    .line 263
    .line 264
    iget v1, v6, Lye;->A:I

    .line 265
    .line 266
    if-eq v1, v3, :cond_d

    .line 267
    .line 268
    if-eq v1, v2, :cond_e

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 272
    .line 273
    .line 274
    :cond_e
    const/4 v1, 0x3

    .line 275
    iput v1, v6, Lye;->A:I

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Ljava/lang/Float;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    new-array v2, v2, [F

    .line 288
    .line 289
    aput v1, v2, v5

    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    aput v1, v2, v3

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 295
    .line 296
    .line 297
    const-wide/16 v1, 0x1f4

    .line 298
    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 303
    .line 304
    .line 305
    :goto_8
    return-void

    .line 306
    :pswitch_a
    check-cast v6, Ljd;

    .line 307
    .line 308
    invoke-virtual {v6}, Ljd;->T()V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :pswitch_b
    check-cast v6, Ldd;

    .line 313
    .line 314
    iput-object v4, v6, Ldd;->l:Lc7;

    .line 315
    .line 316
    invoke-virtual {v6}, Ldd;->drawableStateChanged()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :pswitch_c
    check-cast v6, Lqc;

    .line 321
    .line 322
    iget-object v0, v6, Lqc;->W:Loc;

    .line 323
    .line 324
    iget-object v1, v6, Lqc;->e0:Landroid/app/Dialog;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Loc;->onDismiss(Landroid/content/DialogInterface;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :pswitch_d
    check-cast v6, Ldc;

    .line 331
    .line 332
    iget-object v0, v6, Ldc;->a:Landroid/view/ViewGroup;

    .line 333
    .line 334
    iget-object v1, v6, Ldc;->b:Landroid/view/View;

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v6, Ldc;->c:Lec;

    .line 340
    .line 341
    invoke-virtual {v0}, Lt3;->d()V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_e
    :try_start_1
    check-cast v6, Landroidx/activity/a;

    .line 346
    .line 347
    invoke-static {v6}, Landroidx/activity/a;->d(Landroidx/activity/a;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    .line 357
    .line 358
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_f

    .line 363
    .line 364
    goto :goto_9

    .line 365
    :cond_f
    throw v0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const-string v2, "Can not perform this action after onSaveInstanceState"

    .line 372
    .line 373
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_10

    .line 378
    .line 379
    :goto_9
    return-void

    .line 380
    :cond_10
    throw v0

    .line 381
    :pswitch_f
    check-cast v6, Lc9;

    .line 382
    .line 383
    iget-object v0, v6, Lc9;->b:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 386
    .line 387
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 388
    .line 389
    if-ne v1, v2, :cond_12

    .line 390
    .line 391
    if-nez v1, :cond_11

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_11
    iput v5, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 395
    .line 396
    :cond_12
    :goto_a
    return-void

    .line 397
    :pswitch_10
    check-cast v6, Lpl;

    .line 398
    .line 399
    iget-object v1, v6, Lpl;->c:Ldd;

    .line 400
    .line 401
    iget-object v2, v6, Lpl;->a:Lb7;

    .line 402
    .line 403
    iget-boolean v3, v6, Lpl;->o:Z

    .line 404
    .line 405
    if-nez v3, :cond_13

    .line 406
    .line 407
    goto/16 :goto_c

    .line 408
    .line 409
    :cond_13
    iget-boolean v3, v6, Lpl;->m:Z

    .line 410
    .line 411
    if-eqz v3, :cond_14

    .line 412
    .line 413
    iput-boolean v5, v6, Lpl;->m:Z

    .line 414
    .line 415
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    iput-wide v3, v2, Lb7;->e:J

    .line 420
    .line 421
    const-wide/16 v7, -0x1

    .line 422
    .line 423
    iput-wide v7, v2, Lb7;->g:J

    .line 424
    .line 425
    iput-wide v3, v2, Lb7;->f:J

    .line 426
    .line 427
    const/high16 v3, 0x3f000000    # 0.5f

    .line 428
    .line 429
    iput v3, v2, Lb7;->h:F

    .line 430
    .line 431
    :cond_14
    iget-wide v3, v2, Lb7;->g:J

    .line 432
    .line 433
    const-wide/16 v7, 0x0

    .line 434
    .line 435
    cmp-long v3, v3, v7

    .line 436
    .line 437
    if-lez v3, :cond_15

    .line 438
    .line 439
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v3

    .line 443
    iget-wide v9, v2, Lb7;->g:J

    .line 444
    .line 445
    iget v11, v2, Lb7;->i:I

    .line 446
    .line 447
    int-to-long v11, v11

    .line 448
    add-long/2addr v9, v11

    .line 449
    cmp-long v3, v3, v9

    .line 450
    .line 451
    if-lez v3, :cond_15

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_15
    invoke-virtual {v6}, Lpl;->e()Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-nez v3, :cond_16

    .line 459
    .line 460
    :goto_b
    iput-boolean v5, v6, Lpl;->o:Z

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_16
    iget-boolean v3, v6, Lpl;->n:Z

    .line 464
    .line 465
    if-eqz v3, :cond_17

    .line 466
    .line 467
    iput-boolean v5, v6, Lpl;->n:Z

    .line 468
    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 470
    .line 471
    .line 472
    move-result-wide v9

    .line 473
    const/4 v15, 0x0

    .line 474
    const/16 v16, 0x0

    .line 475
    .line 476
    const/4 v13, 0x3

    .line 477
    const/4 v14, 0x0

    .line 478
    move-wide v11, v9

    .line 479
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v1, v3}, Ldd;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 487
    .line 488
    .line 489
    :cond_17
    iget-wide v3, v2, Lb7;->f:J

    .line 490
    .line 491
    cmp-long v3, v3, v7

    .line 492
    .line 493
    if-eqz v3, :cond_18

    .line 494
    .line 495
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 496
    .line 497
    .line 498
    move-result-wide v3

    .line 499
    invoke-virtual {v2, v3, v4}, Lb7;->a(J)F

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    const/high16 v7, -0x3f800000    # -4.0f

    .line 504
    .line 505
    mul-float/2addr v7, v5

    .line 506
    mul-float/2addr v7, v5

    .line 507
    const/high16 v8, 0x40800000    # 4.0f

    .line 508
    .line 509
    mul-float/2addr v5, v8

    .line 510
    add-float/2addr v5, v7

    .line 511
    iget-wide v7, v2, Lb7;->f:J

    .line 512
    .line 513
    sub-long v7, v3, v7

    .line 514
    .line 515
    iput-wide v3, v2, Lb7;->f:J

    .line 516
    .line 517
    long-to-float v3, v7

    .line 518
    mul-float/2addr v3, v5

    .line 519
    iget v2, v2, Lb7;->d:F

    .line 520
    .line 521
    mul-float/2addr v3, v2

    .line 522
    float-to-int v2, v3

    .line 523
    iget-object v3, v6, Lpl;->r:Ldd;

    .line 524
    .line 525
    invoke-static {v3, v2}, Lql;->b(Landroid/widget/ListView;I)V

    .line 526
    .line 527
    .line 528
    sget-object v2, Lu70;->a:Ljava/util/WeakHashMap;

    .line 529
    .line 530
    invoke-static {v1, v0}, Le70;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 531
    .line 532
    .line 533
    :goto_c
    return-void

    .line 534
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    .line 535
    .line 536
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 537
    .line 538
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw v0

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
