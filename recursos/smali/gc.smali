.class public final Lgc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lgc;->d:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lgc;->e:Z

    .line 22
    .line 23
    iput-object p1, p0, Lgc;->a:Landroid/view/ViewGroup;

    .line 24
    .line 25
    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Lhd;)Lgc;
    .locals 3

    .line 1
    const v0, 0x7f090195

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v2, v1, Lgc;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lgc;

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p1, Lgc;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lgc;-><init>(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method


# virtual methods
.method public final a(IILandroidx/fragment/app/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lr8;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p3, Landroidx/fragment/app/b;->c:Lvf;

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lgc;->d(Lvf;)Ls20;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Ls20;->c(II)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Ls20;

    .line 25
    .line 26
    invoke-direct {v2, p1, p2, p3, v1}, Ls20;-><init>(IILandroidx/fragment/app/b;Lr8;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance p1, Lr20;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p0, v2, p2}, Lr20;-><init>(Lgc;Ls20;I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, v2, Ls20;->d:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance p1, Lr20;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-direct {p1, p0, v2, p2}, Lr20;-><init>(Lgc;Ls20;I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v2, Ls20;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move v7, v4

    .line 14
    move-object v6, v5

    .line 15
    :cond_0
    :goto_0
    const/4 v8, 0x3

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x1

    .line 18
    if-ge v7, v3, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    add-int/lit8 v7, v7, 0x1

    .line 25
    .line 26
    check-cast v11, Ls20;

    .line 27
    .line 28
    iget-object v12, v11, Ls20;->c:Lvf;

    .line 29
    .line 30
    iget-object v12, v12, Lvf;->F:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {v12}, Lt20;->c(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    iget v13, v11, Ls20;->a:I

    .line 37
    .line 38
    invoke-static {v13}, Lt20;->h(I)I

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    if-eqz v13, :cond_2

    .line 43
    .line 44
    if-eq v13, v10, :cond_1

    .line 45
    .line 46
    if-eq v13, v9, :cond_2

    .line 47
    .line 48
    if-eq v13, v8, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-eq v12, v9, :cond_0

    .line 52
    .line 53
    move-object v6, v11

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-ne v12, v9, :cond_0

    .line 56
    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    move-object v5, v11

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v7, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v11, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    move v13, v4

    .line 81
    :goto_1
    if-ge v13, v12, :cond_c

    .line 82
    .line 83
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    add-int/lit8 v13, v13, 0x1

    .line 88
    .line 89
    check-cast v14, Ls20;

    .line 90
    .line 91
    new-instance v15, Lr8;

    .line 92
    .line 93
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v14}, Ls20;->d()V

    .line 97
    .line 98
    .line 99
    iget-object v10, v14, Ls20;->e:Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v8, Lec;

    .line 105
    .line 106
    invoke-direct {v8, v14, v15}, Lt3;-><init>(Ls20;Lr8;)V

    .line 107
    .line 108
    .line 109
    iput-boolean v4, v8, Lec;->d:Z

    .line 110
    .line 111
    iput-boolean v2, v8, Lec;->c:Z

    .line 112
    .line 113
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v8, Lr8;

    .line 117
    .line 118
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14}, Ls20;->d()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v10, Lfc;

    .line 128
    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    if-ne v14, v5, :cond_4

    .line 132
    .line 133
    :goto_2
    const/4 v15, 0x1

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move v15, v4

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    if-ne v14, v6, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    invoke-direct {v10, v14, v8}, Lt3;-><init>(Ls20;Lr8;)V

    .line 141
    .line 142
    .line 143
    iget v8, v14, Ls20;->a:I

    .line 144
    .line 145
    iget-object v4, v14, Ls20;->c:Lvf;

    .line 146
    .line 147
    if-ne v8, v9, :cond_8

    .line 148
    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    :goto_4
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_8
    if-eqz v2, :cond_9

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    :goto_5
    if-eqz v15, :cond_b

    .line 178
    .line 179
    if-eqz v2, :cond_a

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    :cond_b
    :goto_6
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v4, Lc1;

    .line 192
    .line 193
    invoke-direct {v4, v0, v11, v14}, Lc1;-><init>(Lgc;Ljava/util/ArrayList;Ls20;)V

    .line 194
    .line 195
    .line 196
    iget-object v8, v14, Ls20;->d:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    const/4 v4, 0x0

    .line 202
    const/4 v8, 0x3

    .line 203
    const/4 v10, 0x1

    .line 204
    goto :goto_1

    .line 205
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    const/4 v4, 0x0

    .line 215
    :goto_7
    if-ge v4, v2, :cond_d

    .line 216
    .line 217
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    .line 223
    check-cast v5, Lfc;

    .line 224
    .line 225
    iget-object v5, v5, Lt3;->a:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v5, Ls20;

    .line 228
    .line 229
    iget-object v6, v5, Ls20;->c:Lvf;

    .line 230
    .line 231
    iget-object v6, v6, Lvf;->F:Landroid/view/View;

    .line 232
    .line 233
    invoke-static {v6}, Lt20;->c(Landroid/view/View;)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    iget v5, v5, Ls20;->a:I

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/4 v4, 0x0

    .line 245
    :goto_8
    if-ge v4, v2, :cond_e

    .line 246
    .line 247
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    check-cast v5, Lfc;

    .line 254
    .line 255
    iget-object v6, v5, Lt3;->a:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v6, Ls20;

    .line 258
    .line 259
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Lt3;->d()V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    iget-object v0, v0, Lgc;->a:Landroid/view/ViewGroup;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    new-instance v5, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    const/4 v7, 0x0

    .line 290
    const/4 v8, 0x0

    .line 291
    :goto_9
    const-string v10, "FragmentManager"

    .line 292
    .line 293
    if-ge v8, v6, :cond_17

    .line 294
    .line 295
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    add-int/lit8 v8, v8, 0x1

    .line 300
    .line 301
    check-cast v12, Lec;

    .line 302
    .line 303
    iget-object v13, v12, Lt3;->a:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v13, Ls20;

    .line 306
    .line 307
    iget-object v14, v13, Ls20;->c:Lvf;

    .line 308
    .line 309
    iget-object v14, v14, Lvf;->F:Landroid/view/View;

    .line 310
    .line 311
    invoke-static {v14}, Lt20;->c(Landroid/view/View;)I

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    iget v13, v13, Ls20;->a:I

    .line 316
    .line 317
    if-eq v14, v13, :cond_f

    .line 318
    .line 319
    if-eq v14, v9, :cond_10

    .line 320
    .line 321
    if-eq v13, v9, :cond_10

    .line 322
    .line 323
    :cond_f
    move-object v14, v0

    .line 324
    move/from16 p1, v2

    .line 325
    .line 326
    move/from16 v22, v9

    .line 327
    .line 328
    const/4 v9, 0x3

    .line 329
    goto/16 :goto_d

    .line 330
    .line 331
    :cond_10
    invoke-virtual {v12, v4}, Lec;->j(Landroid/content/Context;)Lko;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    if-nez v13, :cond_11

    .line 336
    .line 337
    invoke-virtual {v12}, Lt3;->d()V

    .line 338
    .line 339
    .line 340
    :goto_a
    move-object v14, v0

    .line 341
    move/from16 p1, v2

    .line 342
    .line 343
    move/from16 v22, v9

    .line 344
    .line 345
    :goto_b
    const/4 v9, 0x3

    .line 346
    goto/16 :goto_e

    .line 347
    .line 348
    :cond_11
    iget-object v13, v13, Lko;->c:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v13, Landroid/animation/Animator;

    .line 351
    .line 352
    if-nez v13, :cond_12

    .line 353
    .line 354
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_12
    iget-object v14, v12, Lt3;->a:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v14, Ls20;

    .line 361
    .line 362
    iget-object v15, v14, Ls20;->c:Lvf;

    .line 363
    .line 364
    move/from16 v22, v9

    .line 365
    .line 366
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 367
    .line 368
    move/from16 p1, v2

    .line 369
    .line 370
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v9, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/a;->E(I)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_13

    .line 385
    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v9, "Ignoring Animator set on "

    .line 389
    .line 390
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v9, " as this Fragment was involved in a Transition."

    .line 397
    .line 398
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v10, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    :cond_13
    invoke-virtual {v12}, Lt3;->d()V

    .line 409
    .line 410
    .line 411
    move-object v14, v0

    .line 412
    goto :goto_b

    .line 413
    :cond_14
    iget v2, v14, Ls20;->a:I

    .line 414
    .line 415
    const/4 v9, 0x3

    .line 416
    if-ne v2, v9, :cond_15

    .line 417
    .line 418
    const/16 v19, 0x1

    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_15
    const/16 v19, 0x0

    .line 422
    .line 423
    :goto_c
    if-eqz v19, :cond_16

    .line 424
    .line 425
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    :cond_16
    iget-object v2, v15, Lvf;->F:Landroid/view/View;

    .line 429
    .line 430
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    new-instance v16, Lcc;

    .line 434
    .line 435
    move-object/from16 v17, v0

    .line 436
    .line 437
    move-object/from16 v18, v2

    .line 438
    .line 439
    move-object/from16 v21, v12

    .line 440
    .line 441
    move-object/from16 v20, v14

    .line 442
    .line 443
    invoke-direct/range {v16 .. v21}, Lcc;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLs20;Lec;)V

    .line 444
    .line 445
    .line 446
    move-object/from16 v2, v16

    .line 447
    .line 448
    move-object/from16 v14, v17

    .line 449
    .line 450
    move-object/from16 v0, v18

    .line 451
    .line 452
    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v13, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    .line 459
    .line 460
    .line 461
    iget-object v0, v12, Lt3;->b:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Lr8;

    .line 464
    .line 465
    new-instance v2, Lc9;

    .line 466
    .line 467
    const/16 v7, 0xb

    .line 468
    .line 469
    invoke-direct {v2, v7, v13}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v2}, Lr8;->a(Lq8;)V

    .line 473
    .line 474
    .line 475
    move/from16 v2, p1

    .line 476
    .line 477
    move-object v0, v14

    .line 478
    move/from16 v9, v22

    .line 479
    .line 480
    const/4 v7, 0x1

    .line 481
    goto/16 :goto_9

    .line 482
    .line 483
    :goto_d
    invoke-virtual {v12}, Lt3;->d()V

    .line 484
    .line 485
    .line 486
    :goto_e
    move/from16 v2, p1

    .line 487
    .line 488
    move-object v0, v14

    .line 489
    move/from16 v9, v22

    .line 490
    .line 491
    goto/16 :goto_9

    .line 492
    .line 493
    :cond_17
    move-object v14, v0

    .line 494
    move/from16 p1, v2

    .line 495
    .line 496
    move/from16 v22, v9

    .line 497
    .line 498
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    const/4 v1, 0x0

    .line 503
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 504
    .line 505
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    add-int/lit8 v1, v1, 0x1

    .line 510
    .line 511
    check-cast v2, Lec;

    .line 512
    .line 513
    iget-object v3, v2, Lt3;->a:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v3, Ls20;

    .line 516
    .line 517
    iget-object v6, v3, Ls20;->c:Lvf;

    .line 518
    .line 519
    const-string v8, "Ignoring Animation set on "

    .line 520
    .line 521
    if-eqz p1, :cond_19

    .line 522
    .line 523
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/a;->E(I)Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-eqz v3, :cond_18

    .line 528
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v6, " as Animations cannot run alongside Transitions."

    .line 538
    .line 539
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    :cond_18
    invoke-virtual {v2}, Lt3;->d()V

    .line 550
    .line 551
    .line 552
    goto :goto_f

    .line 553
    :cond_19
    if-eqz v7, :cond_1b

    .line 554
    .line 555
    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/a;->E(I)Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-eqz v3, :cond_1a

    .line 560
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v6, " as Animations cannot run alongside Animators."

    .line 570
    .line 571
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    :cond_1a
    invoke-virtual {v2}, Lt3;->d()V

    .line 582
    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_1b
    iget-object v6, v6, Lvf;->F:Landroid/view/View;

    .line 586
    .line 587
    invoke-virtual {v2, v4}, Lec;->j(Landroid/content/Context;)Lko;

    .line 588
    .line 589
    .line 590
    move-result-object v8

    .line 591
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    iget-object v8, v8, Lko;->b:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v8, Landroid/view/animation/Animation;

    .line 597
    .line 598
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    iget v3, v3, Ls20;->a:I

    .line 602
    .line 603
    const/4 v9, 0x1

    .line 604
    if-eq v3, v9, :cond_1c

    .line 605
    .line 606
    invoke-virtual {v6, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2}, Lt3;->d()V

    .line 610
    .line 611
    .line 612
    goto :goto_10

    .line 613
    :cond_1c
    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 614
    .line 615
    .line 616
    new-instance v3, Lxf;

    .line 617
    .line 618
    invoke-direct {v3, v8, v14, v6}, Lxf;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 619
    .line 620
    .line 621
    new-instance v8, Ldc;

    .line 622
    .line 623
    invoke-direct {v8, v14, v6, v2}, Ldc;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lec;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v6, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    .line 631
    .line 632
    :goto_10
    iget-object v3, v2, Lt3;->b:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v3, Lr8;

    .line 635
    .line 636
    new-instance v8, Lv5;

    .line 637
    .line 638
    move/from16 v12, v22

    .line 639
    .line 640
    invoke-direct {v8, v6, v14, v2, v12}, Lv5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v8}, Lr8;->a(Lq8;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_f

    .line 647
    .line 648
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    const/4 v4, 0x0

    .line 653
    :goto_11
    if-ge v4, v0, :cond_1e

    .line 654
    .line 655
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 660
    .line 661
    check-cast v1, Ls20;

    .line 662
    .line 663
    iget-object v2, v1, Ls20;->c:Lvf;

    .line 664
    .line 665
    iget-object v2, v2, Lvf;->F:Landroid/view/View;

    .line 666
    .line 667
    iget v1, v1, Ls20;->a:I

    .line 668
    .line 669
    invoke-static {v2, v1}, Lt20;->a(Landroid/view/View;I)V

    .line 670
    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_1e
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 674
    .line 675
    .line 676
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lgc;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lgc;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    sget-object v1, Lu70;->a:Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-static {v0}, Lg70;->b(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lgc;->e()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Lgc;->d:Z

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v2, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_6

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v3, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    move v4, v1

    .line 51
    :cond_2
    :goto_0
    if-ge v4, v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    check-cast v5, Ls20;

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    invoke-static {v6}, Landroidx/fragment/app/a;->E(I)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    const-string v6, "FragmentManager"

    .line 69
    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v8, "SpecialEffectsController: Cancelling operation "

    .line 76
    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ls20;->a()V

    .line 94
    .line 95
    .line 96
    iget-boolean v6, v5, Ls20;->g:Z

    .line 97
    .line 98
    if-nez v6, :cond_2

    .line 99
    .line 100
    iget-object v6, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0}, Lgc;->g()V

    .line 107
    .line 108
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v3, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move v4, v1

    .line 131
    :goto_2
    if-ge v4, v3, :cond_5

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    check-cast v5, Ls20;

    .line 140
    .line 141
    invoke-virtual {v5}, Ls20;->d()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget-boolean v3, p0, Lgc;->d:Z

    .line 146
    .line 147
    invoke-virtual {p0, v2, v3}, Lgc;->b(Ljava/util/ArrayList;Z)V

    .line 148
    .line 149
    .line 150
    iput-boolean v1, p0, Lgc;->d:Z

    .line 151
    .line 152
    :cond_6
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method

.method public final d(Lvf;)Ls20;
    .locals 4

    .line 1
    iget-object p0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Ls20;

    .line 17
    .line 18
    iget-object v3, v2, Ls20;->c:Lvf;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-eq v3, p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v3, v2, Ls20;->f:Z

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lgc;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget-object v1, Lu70;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-static {v0}, Lg70;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lgc;->g()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    check-cast v6, Ls20;

    .line 32
    .line 33
    invoke-virtual {v6}, Ls20;->d()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v3, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v5, v4

    .line 52
    :goto_1
    const/4 v6, 0x2

    .line 53
    if-ge v5, v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    check-cast v7, Ls20;

    .line 62
    .line 63
    invoke-static {v6}, Landroidx/fragment/app/a;->E(I)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const-string v6, "FragmentManager"

    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v9, "SpecialEffectsController: "

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    const-string v9, ""

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v10, "Container "

    .line 92
    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v10, p0, Lgc;->a:Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v10, " is not attached to window. "

    .line 102
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v9, "Cancelling running operation "

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {v7}, Ls20;->a()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    .line 134
    iget-object v3, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    :goto_3
    if-ge v4, v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 150
    .line 151
    check-cast v5, Ls20;

    .line 152
    .line 153
    invoke-static {v6}, Landroidx/fragment/app/a;->E(I)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    const-string v7, "FragmentManager"

    .line 160
    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v9, "SpecialEffectsController: "

    .line 167
    .line 168
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    const-string v9, ""

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v10, "Container "

    .line 182
    .line 183
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v10, p0, Lgc;->a:Landroid/view/ViewGroup;

    .line 187
    .line 188
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v10, " is not attached to window. "

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v9, "Cancelling pending operation "

    .line 204
    .line 205
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_5
    invoke-virtual {v5}, Ls20;->a()V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    monitor-exit v1

    .line 223
    return-void

    .line 224
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    throw p0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object p0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Ls20;

    .line 17
    .line 18
    iget v3, v2, Ls20;->b:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    iget-object v3, v2, Ls20;->c:Lvf;

    .line 24
    .line 25
    invoke-virtual {v3}, Lvf;->H()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Lt20;->b(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v2, v3, v4}, Ls20;->c(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
