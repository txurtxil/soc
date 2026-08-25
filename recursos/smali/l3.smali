.class public final Ll3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwr;
.implements Lqa;
.implements Lkp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw3;


# direct methods
.method public synthetic constructor <init>(Lw3;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll3;->a:I

    iput-object p1, p0, Ll3;->b:Lw3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lso;Z)V
    .locals 8

    .line 1
    iget v0, p0, Ll3;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ll3;->b:Lw3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lso;->k()Lso;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    :goto_0
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move-object p1, v0

    .line 22
    :cond_1
    iget-object v4, p0, Lw3;->L:[Lv3;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    array-length v5, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v5, v1

    .line 29
    :goto_1
    if-ge v1, v5, :cond_4

    .line 30
    .line 31
    aget-object v6, v4, v1

    .line 32
    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    iget-object v7, v6, Lv3;->h:Lso;

    .line 36
    .line 37
    if-ne v7, p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v6, 0x0

    .line 44
    :goto_2
    if-eqz v6, :cond_6

    .line 45
    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    iget p1, v6, Lv3;->a:I

    .line 49
    .line 50
    invoke-virtual {p0, p1, v6, v0}, Lw3;->s(ILv3;Lso;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v6, v2}, Lw3;->u(Lv3;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {p0, v6, p2}, Lw3;->u(Lv3;Z)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p0, p1}, Lw3;->t(Lso;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;Lf90;)Lf90;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-object v3, v2, Lf90;->a:Le90;

    .line 6
    .line 7
    invoke-virtual {v3}, Le90;->g()Llj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v4, v0, Llj;->b:I

    .line 12
    .line 13
    move-object/from16 v0, p0

    .line 14
    .line 15
    iget-object v5, v0, Ll3;->b:Lw3;

    .line 16
    .line 17
    iget-object v6, v5, Lw3;->k:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Le90;->g()Llj;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v7, v0, Llj;->b:I

    .line 24
    .line 25
    iget-object v0, v5, Lw3;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 26
    .line 27
    const/16 v8, 0x8

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    if-eqz v0, :cond_f

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    if-eqz v0, :cond_f

    .line 39
    .line 40
    iget-object v0, v5, Lw3;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v10, v0

    .line 47
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    iget-object v0, v5, Lw3;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_c

    .line 56
    .line 57
    iget-object v0, v5, Lw3;->c0:Landroid/graphics/Rect;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, v5, Lw3;->c0:Landroid/graphics/Rect;

    .line 67
    .line 68
    new-instance v0, Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, v5, Lw3;->d0:Landroid/graphics/Rect;

    .line 74
    .line 75
    :cond_0
    iget-object v12, v5, Lw3;->c0:Landroid/graphics/Rect;

    .line 76
    .line 77
    iget-object v0, v5, Lw3;->d0:Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-virtual {v2}, Lf90;->a()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-virtual {v3}, Le90;->g()Llj;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget v14, v14, Llj;->b:I

    .line 88
    .line 89
    invoke-virtual {v2}, Lf90;->b()I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    invoke-virtual {v3}, Le90;->g()Llj;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    iget v11, v11, Llj;->d:I

    .line 98
    .line 99
    invoke-virtual {v12, v13, v14, v15, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    .line 101
    .line 102
    iget-object v11, v5, Lw3;->A:Landroid/view/ViewGroup;

    .line 103
    .line 104
    sget-object v13, Ll80;->a:Ljava/lang/reflect/Method;

    .line 105
    .line 106
    if-eqz v13, :cond_1

    .line 107
    .line 108
    :try_start_0
    filled-new-array {v12, v0}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v13, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v11, "ViewUtils"

    .line 118
    .line 119
    const-string v13, "Could not invoke computeFitSystemWindows"

    .line 120
    .line 121
    invoke-static {v11, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    iget v11, v12, Landroid/graphics/Rect;->left:I

    .line 127
    .line 128
    iget v12, v12, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    iget-object v13, v5, Lw3;->A:Landroid/view/ViewGroup;

    .line 131
    .line 132
    sget-object v14, Lu70;->a:Ljava/util/WeakHashMap;

    .line 133
    .line 134
    invoke-static {v13}, Lk70;->a(Landroid/view/View;)Lf90;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    if-nez v13, :cond_2

    .line 139
    .line 140
    move v14, v9

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v13}, Lf90;->a()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    :goto_1
    if-nez v13, :cond_3

    .line 147
    .line 148
    move v13, v9

    .line 149
    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {v13}, Lf90;->b()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    :goto_2
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 155
    .line 156
    if-ne v15, v0, :cond_5

    .line 157
    .line 158
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 159
    .line 160
    if-ne v15, v11, :cond_5

    .line 161
    .line 162
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 163
    .line 164
    if-eq v15, v12, :cond_4

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    move v11, v9

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    :goto_3
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 170
    .line 171
    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 172
    .line 173
    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 174
    .line 175
    const/4 v11, 0x1

    .line 176
    :goto_4
    if-lez v0, :cond_6

    .line 177
    .line 178
    iget-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 179
    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    new-instance v0, Landroid/view/View;

    .line 183
    .line 184
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    .line 194
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 195
    .line 196
    const/16 v15, 0x33

    .line 197
    .line 198
    const/4 v8, -0x1

    .line 199
    invoke-direct {v0, v8, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 200
    .line 201
    .line 202
    iput v14, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 203
    .line 204
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 205
    .line 206
    iget-object v12, v5, Lw3;->A:Landroid/view/ViewGroup;

    .line 207
    .line 208
    iget-object v13, v5, Lw3;->C:Landroid/view/View;

    .line 209
    .line 210
    invoke-virtual {v12, v13, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_6
    iget-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 215
    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 223
    .line 224
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 225
    .line 226
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 227
    .line 228
    if-ne v8, v12, :cond_7

    .line 229
    .line 230
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 231
    .line 232
    if-ne v8, v14, :cond_7

    .line 233
    .line 234
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 235
    .line 236
    if-eq v8, v13, :cond_8

    .line 237
    .line 238
    :cond_7
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 239
    .line 240
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 241
    .line 242
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 243
    .line 244
    iget-object v8, v5, Lw3;->C:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    :goto_5
    iget-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 250
    .line 251
    if-eqz v0, :cond_9

    .line 252
    .line 253
    const/4 v8, 0x1

    .line 254
    goto :goto_6

    .line 255
    :cond_9
    move v8, v9

    .line 256
    :goto_6
    if-eqz v8, :cond_b

    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    iget-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 265
    .line 266
    invoke-static {v0}, Le70;->g(Landroid/view/View;)I

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    and-int/lit16 v12, v12, 0x2000

    .line 271
    .line 272
    if-eqz v12, :cond_a

    .line 273
    .line 274
    const v12, 0x7f060006

    .line 275
    .line 276
    .line 277
    invoke-static {v6, v12}, Lza;->a(Landroid/content/Context;I)I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    goto :goto_7

    .line 282
    :cond_a
    const v12, 0x7f060005

    .line 283
    .line 284
    .line 285
    invoke-static {v6, v12}, Lza;->a(Landroid/content/Context;I)I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    .line 291
    .line 292
    :cond_b
    iget-boolean v0, v5, Lw3;->H:Z

    .line 293
    .line 294
    if-nez v0, :cond_e

    .line 295
    .line 296
    if-eqz v8, :cond_e

    .line 297
    .line 298
    move v7, v9

    .line 299
    goto :goto_8

    .line 300
    :cond_c
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 301
    .line 302
    if-eqz v0, :cond_d

    .line 303
    .line 304
    iput v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 305
    .line 306
    move v8, v9

    .line 307
    const/4 v11, 0x1

    .line 308
    goto :goto_8

    .line 309
    :cond_d
    move v8, v9

    .line 310
    move v11, v8

    .line 311
    :cond_e
    :goto_8
    if-eqz v11, :cond_10

    .line 312
    .line 313
    iget-object v0, v5, Lw3;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 314
    .line 315
    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_f
    move v8, v9

    .line 320
    :cond_10
    :goto_9
    iget-object v0, v5, Lw3;->C:Landroid/view/View;

    .line 321
    .line 322
    if-eqz v0, :cond_12

    .line 323
    .line 324
    if-eqz v8, :cond_11

    .line 325
    .line 326
    move v8, v9

    .line 327
    goto :goto_a

    .line 328
    :cond_11
    const/16 v8, 0x8

    .line 329
    .line 330
    :goto_a
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    :cond_12
    if-eq v4, v7, :cond_15

    .line 334
    .line 335
    invoke-virtual {v2}, Lf90;->a()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-virtual {v2}, Lf90;->b()I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    invoke-virtual {v3}, Le90;->g()Llj;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    iget v3, v3, Llj;->d:I

    .line 348
    .line 349
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .line 351
    const/16 v6, 0x1e

    .line 352
    .line 353
    if-lt v5, v6, :cond_13

    .line 354
    .line 355
    new-instance v5, Lx80;

    .line 356
    .line 357
    invoke-direct {v5, v2}, Lx80;-><init>(Lf90;)V

    .line 358
    .line 359
    .line 360
    goto :goto_b

    .line 361
    :cond_13
    const/16 v6, 0x1d

    .line 362
    .line 363
    if-lt v5, v6, :cond_14

    .line 364
    .line 365
    new-instance v5, Lw80;

    .line 366
    .line 367
    invoke-direct {v5, v2}, Lw80;-><init>(Lf90;)V

    .line 368
    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_14
    new-instance v5, Lv80;

    .line 372
    .line 373
    invoke-direct {v5, v2}, Lv80;-><init>(Lf90;)V

    .line 374
    .line 375
    .line 376
    :goto_b
    invoke-static {v0, v7, v4, v3}, Llj;->a(IIII)Llj;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v5, v0}, Ly80;->d(Llj;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Ly80;->b()Lf90;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    goto :goto_c

    .line 388
    :cond_15
    move-object v0, v2

    .line 389
    :goto_c
    sget-object v2, Lu70;->a:Ljava/util/WeakHashMap;

    .line 390
    .line 391
    invoke-virtual {v0}, Lf90;->d()Landroid/view/WindowInsets;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_16

    .line 396
    .line 397
    invoke-static {v1, v2}, Lh70;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-nez v2, :cond_16

    .line 406
    .line 407
    invoke-static {v3, v1}, Lf90;->e(Landroid/view/WindowInsets;Landroid/view/View;)Lf90;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    :cond_16
    return-object v0
.end method

.method public q(Lso;)Z
    .locals 3

    .line 1
    iget v0, p0, Ll3;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x6c

    .line 5
    .line 6
    iget-object p0, p0, Ll3;->b:Lw3;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lso;->k()Lso;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lw3;->F:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lw3;->l:Landroid/view/Window;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean p0, p0, Lw3;->Q:Z

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1

    .line 37
    :pswitch_0
    iget-object p0, p0, Lw3;->l:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-interface {p0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
