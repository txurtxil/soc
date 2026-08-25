.class public abstract Lb00;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Landroid/content/Intent;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:Z

.field public static g:Lcm;

.field public static h:Lx6;

.field public static i:Lx6;

.field public static j:Landroid/media/projection/MediaProjection;

.field public static final k:Landroid/os/Handler;

.field public static final l:Lzz;

.field public static final m:Lzz;

.field public static final n:Ljava/util/List;

.field public static final o:Z

.field public static p:Z

.field public static final q:La00;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lb00;->k:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Lzz;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lb00;->l:Lzz;

    .line 18
    .line 19
    new-instance v1, Lzz;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lb00;->m:Lzz;

    .line 25
    .line 26
    filled-new-array {v0, v1}, [Lzz;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lb00;->n:Ljava/util/List;

    .line 35
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v1, 0x22

    .line 39
    .line 40
    if-ge v0, v1, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    sput-boolean v0, Lb00;->o:Z

    .line 46
    .line 47
    new-instance v0, La00;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lb00;->q:La00;

    .line 53
    .line 54
    return-void
.end method

.method public static a(Lzz;Landroid/view/Surface;III)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p4

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/Surface;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v2, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x1

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-boolean v2, v0, Lzz;->i:Z

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    sget-boolean v2, Lb00;->p:Z

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    sget v2, Lb00;->c:I

    .line 31
    .line 32
    if-lez v2, :cond_3

    .line 33
    .line 34
    sget v2, Lb00;->d:I

    .line 35
    .line 36
    if-lez v2, :cond_3

    .line 37
    .line 38
    move v2, v12

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v2, v11

    .line 41
    :goto_1
    const-string v13, " dpi="

    .line 42
    .line 43
    const-string v14, "x"

    .line 44
    .line 45
    const-string v15, "ScreenMirrorManager"

    .line 46
    .line 47
    if-eqz v2, :cond_8

    .line 48
    .line 49
    sget v2, Lb00;->c:I

    .line 50
    .line 51
    sget v3, Lb00;->d:I

    .line 52
    .line 53
    sget v4, Lb00;->e:I

    .line 54
    .line 55
    if-lez v4, :cond_4

    .line 56
    .line 57
    :goto_2
    move v6, v4

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    iget v4, v0, Lzz;->f:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_3
    iget-object v4, v0, Lzz;->j:Leq;

    .line 63
    .line 64
    if-nez v4, :cond_5

    .line 65
    .line 66
    new-instance v4, Leq;

    .line 67
    .line 68
    invoke-direct {v4}, Leq;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v4, v0, Lzz;->j:Leq;

    .line 72
    .line 73
    :cond_5
    iget-object v7, v4, Leq;->C:Landroid/view/Surface;

    .line 74
    .line 75
    if-eqz v7, :cond_6

    .line 76
    .line 77
    iget-object v7, v4, Leq;->b:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v8, Lcq;

    .line 80
    .line 81
    invoke-direct {v8, v4, v2, v3, v12}, Lcq;-><init>(Ljava/lang/Object;III)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    iget-object v7, v4, Leq;->C:Landroid/view/Surface;

    .line 88
    .line 89
    move/from16 v18, v2

    .line 90
    .line 91
    move/from16 v19, v3

    .line 92
    .line 93
    move-object v2, v4

    .line 94
    :goto_4
    move-object v8, v7

    .line 95
    goto :goto_5

    .line 96
    :cond_6
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    .line 97
    .line 98
    invoke-direct {v7, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 99
    .line 100
    .line 101
    iget-object v8, v4, Leq;->b:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v16, Lbq;

    .line 104
    .line 105
    const/16 v21, 0x1

    .line 106
    .line 107
    move/from16 v18, v2

    .line 108
    .line 109
    move/from16 v19, v3

    .line 110
    .line 111
    move-object/from16 v17, v4

    .line 112
    .line 113
    move-object/from16 v20, v7

    .line 114
    .line 115
    invoke-direct/range {v16 .. v21}, Lbq;-><init>(Leq;IILjava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    move-object/from16 v4, v16

    .line 119
    .line 120
    move-object/from16 v2, v17

    .line 121
    .line 122
    move-object/from16 v3, v20

    .line 123
    .line 124
    invoke-virtual {v8, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    const-wide/16 v7, 0x2ee

    .line 128
    .line 129
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 130
    .line 131
    invoke-virtual {v3, v7, v8, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_7

    .line 136
    .line 137
    const-string v3, "MirrorCompositor"

    .line 138
    .line 139
    const-string v4, "start: GL init timed out after 750ms, falling back"

    .line 140
    .line 141
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object v7, v2, Leq;->C:Landroid/view/Surface;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :goto_5
    if-nez v8, :cond_9

    .line 148
    .line 149
    const-string v2, "applySelfDrawn: compositor unavailable, using AUTO_MIRROR"

    .line 150
    .line 151
    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_8
    move/from16 v3, p2

    .line 155
    .line 156
    move/from16 v4, p3

    .line 157
    .line 158
    goto/16 :goto_7

    .line 159
    .line 160
    :cond_9
    iget-object v3, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 161
    .line 162
    if-eqz v3, :cond_b

    .line 163
    .line 164
    iget-boolean v1, v0, Lzz;->k:Z

    .line 165
    .line 166
    if-nez v1, :cond_a

    .line 167
    .line 168
    invoke-virtual {v3, v8}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    move-object v1, v2

    .line 172
    move v7, v6

    .line 173
    goto :goto_6

    .line 174
    :cond_b
    iget-boolean v3, v0, Lzz;->b:Z

    .line 175
    .line 176
    if-nez v3, :cond_c

    .line 177
    .line 178
    iget v4, v2, Leq;->B:I

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    sget-object v10, Lb00;->k:Landroid/os/Handler;

    .line 182
    .line 183
    const-string v3, "ScreenOnAuto"

    .line 184
    .line 185
    const/16 v7, 0x10

    .line 186
    .line 187
    move v5, v4

    .line 188
    move-object/from16 v22, v2

    .line 189
    .line 190
    move-object v2, v1

    .line 191
    move-object/from16 v1, v22

    .line 192
    .line 193
    invoke-virtual/range {v2 .. v10}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    move v7, v6

    .line 198
    iput-object v2, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 199
    .line 200
    iput v4, v0, Lzz;->g:I

    .line 201
    .line 202
    iput v4, v0, Lzz;->h:I

    .line 203
    .line 204
    iput-boolean v12, v0, Lzz;->i:Z

    .line 205
    .line 206
    iput-boolean v12, v0, Lzz;->b:Z

    .line 207
    .line 208
    :goto_6
    iget v2, v0, Lzz;->g:I

    .line 209
    .line 210
    iget v3, v0, Lzz;->h:I

    .line 211
    .line 212
    iget-object v4, v1, Leq;->b:Landroid/os/Handler;

    .line 213
    .line 214
    new-instance v5, Lcq;

    .line 215
    .line 216
    invoke-direct {v5, v1, v2, v3, v11}, Lcq;-><init>(Ljava/lang/Object;III)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    .line 221
    .line 222
    iget-object v8, v1, Leq;->b:Landroid/os/Handler;

    .line 223
    .line 224
    move-object v2, v1

    .line 225
    new-instance v1, Lbq;

    .line 226
    .line 227
    const/4 v6, 0x0

    .line 228
    move-object/from16 v5, p1

    .line 229
    .line 230
    move/from16 v3, p2

    .line 231
    .line 232
    move/from16 v4, p3

    .line 233
    .line 234
    move/from16 v9, v18

    .line 235
    .line 236
    move/from16 v10, v19

    .line 237
    .line 238
    invoke-direct/range {v1 .. v6}, Lbq;-><init>(Leq;IILjava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    iput-boolean v12, v0, Lzz;->k:Z

    .line 245
    .line 246
    iget v1, v0, Lzz;->g:I

    .line 247
    .line 248
    iget v0, v0, Lzz;->h:I

    .line 249
    .line 250
    const-string v2, "applySelfDrawn: phone "

    .line 251
    .line 252
    const-string v5, " in VD "

    .line 253
    .line 254
    invoke-static {v2, v9, v14, v10, v5}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, " box "

    .line 268
    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_c
    const-string v0, "applySelfDrawn: slot\'s create already consumed; need a fresh MediaProjection"

    .line 296
    .line 297
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :goto_7
    iget-object v2, v0, Lzz;->j:Leq;

    .line 302
    .line 303
    if-eqz v2, :cond_d

    .line 304
    .line 305
    invoke-virtual {v2}, Leq;->d()V

    .line 306
    .line 307
    .line 308
    :cond_d
    iget-object v2, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 309
    .line 310
    if-eqz v2, :cond_e

    .line 311
    .line 312
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 313
    .line 314
    .line 315
    iput v3, v0, Lzz;->g:I

    .line 316
    .line 317
    iput v4, v0, Lzz;->h:I

    .line 318
    .line 319
    move-object/from16 v7, p1

    .line 320
    .line 321
    invoke-virtual {v2, v7}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 322
    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "applySurface: reused VD, swapped surface "

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_e
    move-object/from16 v7, p1

    .line 355
    .line 356
    iget-boolean v2, v0, Lzz;->b:Z

    .line 357
    .line 358
    if-nez v2, :cond_f

    .line 359
    .line 360
    const/4 v8, 0x0

    .line 361
    sget-object v9, Lb00;->k:Landroid/os/Handler;

    .line 362
    .line 363
    const-string v2, "ScreenOnAuto"

    .line 364
    .line 365
    const/16 v6, 0x10

    .line 366
    .line 367
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    iput-object v1, v0, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 372
    .line 373
    iput v3, v0, Lzz;->g:I

    .line 374
    .line 375
    iput v4, v0, Lzz;->h:I

    .line 376
    .line 377
    iput-boolean v11, v0, Lzz;->i:Z

    .line 378
    .line 379
    iput-boolean v12, v0, Lzz;->b:Z

    .line 380
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v3, "applySurface: created VD "

    .line 384
    .line 385
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_f
    const-string v1, "applySurface: slot\'s create already consumed; need a fresh MediaProjection"

    .line 400
    .line 401
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :goto_8
    iget-object v1, v0, Lzz;->j:Leq;

    .line 405
    .line 406
    if-eqz v1, :cond_10

    .line 407
    .line 408
    iget-object v2, v1, Leq;->b:Landroid/os/Handler;

    .line 409
    .line 410
    new-instance v3, Lm1;

    .line 411
    .line 412
    const/16 v4, 0x8

    .line 413
    .line 414
    invoke-direct {v3, v4, v1}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    .line 419
    .line 420
    :cond_10
    const/4 v1, 0x0

    .line 421
    iput-object v1, v0, Lzz;->j:Leq;

    .line 422
    .line 423
    iput-boolean v11, v0, Lzz;->k:Z

    .line 424
    .line 425
    return-void
.end method

.method public static b()V
    .locals 6

    .line 1
    sget-object v0, Lb00;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lzz;

    .line 18
    .line 19
    iget-object v2, v1, Lzz;->c:Landroid/view/Surface;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget v3, v1, Lzz;->d:I

    .line 24
    .line 25
    iget v4, v1, Lzz;->e:I

    .line 26
    .line 27
    iget v5, v1, Lzz;->f:I

    .line 28
    .line 29
    invoke-static {v1, v2, v3, v4, v5}, Lb00;->a(Lzz;Landroid/view/Surface;III)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static c()V
    .locals 8

    .line 1
    sget-object v0, Lb00;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lzz;

    .line 18
    .line 19
    iget-object v2, v1, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    iput-object v2, v1, Lzz;->a:Landroid/hardware/display/VirtualDisplay;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput v3, v1, Lzz;->g:I

    .line 31
    .line 32
    iput v3, v1, Lzz;->h:I

    .line 33
    .line 34
    iput-boolean v3, v1, Lzz;->i:Z

    .line 35
    .line 36
    iput-boolean v3, v1, Lzz;->b:Z

    .line 37
    .line 38
    iget-object v4, v1, Lzz;->j:Leq;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v5, v4, Leq;->b:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v6, Lm1;

    .line 45
    .line 46
    const/16 v7, 0x8

    .line 47
    .line 48
    invoke-direct {v6, v7, v4}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iput-object v2, v1, Lzz;->j:Leq;

    .line 55
    .line 56
    iput-boolean v3, v1, Lzz;->k:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public static d(IIILyz;Landroid/view/Surface;)V
    .locals 6

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxz;

    .line 5
    .line 6
    move v1, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lxz;-><init>(IIILyz;Landroid/view/Surface;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
