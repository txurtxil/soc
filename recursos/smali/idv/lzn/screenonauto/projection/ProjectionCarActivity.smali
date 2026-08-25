.class public final Lidv/lzn/screenonauto/projection/ProjectionCarActivity;
.super Lcom/google/android/apps/auto/sdk/CarActivity;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public final A:Lw30;

.field public final B:Landroid/os/Handler;

.field public final C:Lm1;

.field public D:Z

.field public final E:Liq;

.field public final F:Lmv;

.field public h:Landroid/view/SurfaceView;

.field public i:Landroid/view/GestureDetector;

.field public j:Landroid/view/ScaleGestureDetector;

.field public k:Z

.field public l:Z

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/ImageView;

.field public s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

.field public t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

.field public u:Landroid/widget/LinearLayout;

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly6;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Ly6;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lw30;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lw30;-><init>(Lrg;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->A:Lw30;

    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->B:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v0, Lm1;

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v1, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->C:Lm1;

    .line 36
    .line 37
    new-instance v0, Liq;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1, p0}, Liq;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->E:Liq;

    .line 44
    .line 45
    new-instance v0, Lmv;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lmv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->F:Lmv;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 13

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "legacy_buttons_left"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const v1, 0x800003

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v1, 0x800005

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 40
    .line 41
    const/high16 v4, 0x41800000    # 16.0f

    .line 42
    .line 43
    mul-float/2addr v3, v4

    .line 44
    float-to-int v3, v3

    .line 45
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "legacy_buttons_dodge_nav"

    .line 50
    .line 51
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x0

    .line 56
    if-eqz v4, :cond_a

    .line 57
    .line 58
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v6, 0x1e

    .line 61
    .line 62
    const/4 v7, 0x2

    .line 63
    const/4 v8, 0x1

    .line 64
    if-ge v4, v6, :cond_2

    .line 65
    .line 66
    :goto_1
    move-object v6, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-class v6, Landroid/view/WindowManager;

    .line 73
    .line 74
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/view/WindowManager;

    .line 79
    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    :try_start_0
    invoke-static {v4}, Lz;->f(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Lz;->e(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {}, Lz;->o()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {v4, v6}, Lz;->b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x3

    .line 103
    new-array v6, v6, [I

    .line 104
    .line 105
    invoke-static {v4}, Lb0;->y(Landroid/graphics/Insets;)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    aput v9, v6, v2

    .line 110
    .line 111
    invoke-static {v4}, Lb0;->v(Landroid/graphics/Insets;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    aput v9, v6, v8

    .line 116
    .line 117
    invoke-static {v4}, Lb0;->x(Landroid/graphics/Insets;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    aput v4, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v4

    .line 125
    new-instance v6, Lcy;

    .line 126
    .line 127
    invoke-direct {v6, v4}, Lcy;-><init>(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    instance-of v4, v6, Lcy;

    .line 131
    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    move-object v6, v5

    .line 135
    :cond_4
    check-cast v6, [I

    .line 136
    .line 137
    :goto_3
    if-nez v6, :cond_5

    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v6, Lat;

    .line 148
    .line 149
    invoke-direct {v6, v2, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_7

    .line 153
    .line 154
    :cond_5
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k()Lq50;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    new-instance v6, Lat;

    .line 169
    .line 170
    invoke-direct {v6, v2, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_6
    iget-object v9, v4, Lq50;->a:Ljava/lang/Float;

    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    iget-object v10, v4, Lq50;->b:Ljava/lang/Float;

    .line 181
    .line 182
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    iget-object v4, v4, Lq50;->c:Ljava/lang/Float;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 201
    .line 202
    const/high16 v12, 0x42800000    # 64.0f

    .line 203
    .line 204
    mul-float/2addr v11, v12

    .line 205
    float-to-int v11, v11

    .line 206
    add-int/2addr v11, v3

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    aget v2, v6, v2

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    aget v2, v6, v8

    .line 213
    .line 214
    :goto_4
    int-to-float v8, v2

    .line 215
    mul-float/2addr v8, v9

    .line 216
    add-float/2addr v8, v10

    .line 217
    float-to-int v8, v8

    .line 218
    if-lez v2, :cond_8

    .line 219
    .line 220
    int-to-float v2, v11

    .line 221
    cmpg-float v2, v10, v2

    .line 222
    .line 223
    if-gez v2, :cond_8

    .line 224
    .line 225
    if-le v8, v3, :cond_8

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_8
    move v8, v3

    .line 229
    :goto_5
    aget v2, v6, v7

    .line 230
    .line 231
    int-to-float v6, v2

    .line 232
    mul-float/2addr v6, v9

    .line 233
    add-float/2addr v6, v4

    .line 234
    float-to-int v6, v6

    .line 235
    if-lez v2, :cond_9

    .line 236
    .line 237
    int-to-float v2, v11

    .line 238
    cmpg-float v2, v4, v2

    .line 239
    .line 240
    if-gez v2, :cond_9

    .line 241
    .line 242
    if-le v6, v3, :cond_9

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_9
    move v6, v3

    .line 246
    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    new-instance v6, Lat;

    .line 255
    .line 256
    invoke-direct {v6, v2, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    new-instance v6, Lat;

    .line 269
    .line 270
    invoke-direct {v6, v2, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :goto_7
    iget-object v2, v6, Lat;->a:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v2, Ljava/lang/Number;

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    iget-object v4, v6, Lat;->b:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v4, Ljava/lang/Number;

    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    iget-object v6, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 290
    .line 291
    const-string v7, "toggleColumn"

    .line 292
    .line 293
    if-eqz v6, :cond_11

    .line 294
    .line 295
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    .line 304
    or-int/lit8 v8, v1, 0x50

    .line 305
    .line 306
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 307
    .line 308
    if-eqz v0, :cond_b

    .line 309
    .line 310
    move v8, v2

    .line 311
    goto :goto_8

    .line 312
    :cond_b
    move v8, v3

    .line 313
    :goto_8
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 314
    .line 315
    .line 316
    if-eqz v0, :cond_c

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_c
    move v3, v2

    .line 320
    :goto_9
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 321
    .line 322
    .line 323
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 324
    .line 325
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 326
    .line 327
    const-string v2, "shortcutBarScroll"

    .line 328
    .line 329
    if-eqz v0, :cond_10

    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 339
    .line 340
    or-int/lit8 v3, v1, 0x30

    .line 341
    .line 342
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 343
    .line 344
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 356
    .line 357
    .line 358
    iget-object v3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 359
    .line 360
    if-eqz v3, :cond_f

    .line 361
    .line 362
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 366
    .line 367
    if-eqz v1, :cond_e

    .line 368
    .line 369
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    iget-object p0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 373
    .line 374
    if-eqz p0, :cond_d

    .line 375
    .line 376
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_d
    invoke-static {v2}, Lqj;->v(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v5

    .line 384
    :cond_e
    invoke-static {v7}, Lqj;->v(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v5

    .line 388
    :cond_f
    invoke-static {v7}, Lqj;->v(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v5

    .line 392
    :cond_10
    invoke-static {v2}, Lqj;->v(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v5

    .line 396
    :cond_11
    invoke-static {v7}, Lqj;->v(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v5

    .line 400
    :cond_12
    :goto_a
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "map_action_force_landscape"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_9

    .line 32
    .line 33
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "map_action_auto_dim"

    .line 38
    .line 39
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    move v4, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v2

    .line 48
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "map_action_back"

    .line 60
    .line 61
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    move v4, v3

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v4, v2

    .line 70
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "map_action_home"

    .line 82
    .line 83
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    move v4, v3

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v4, v2

    .line 92
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "map_action_recents"

    .line 104
    .line 105
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_5

    .line 110
    .line 111
    move v2, v3

    .line 112
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    const-string p0, "recentsButton"

    .line 117
    .line 118
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_7
    const-string p0, "homeButton"

    .line 123
    .line 124
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v1

    .line 128
    :cond_8
    const-string p0, "backButton"

    .line 129
    .line 130
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_9
    const-string p0, "autoDimButton"

    .line 135
    .line 136
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v1
.end method

.method public final k()Lq50;
    .locals 5

    .line 1
    sget v0, Lb00;->c:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sget v1, Lb00;->d:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v3, v0, v2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    cmpg-float v3, v1, v2

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iget v3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->x:I

    .line 19
    .line 20
    if-lez v3, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget v3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->v:I

    .line 24
    .line 25
    :goto_0
    int-to-float v3, v3

    .line 26
    iget v4, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->y:I

    .line 27
    .line 28
    if-lez v4, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    iget v4, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->w:I

    .line 32
    .line 33
    :goto_1
    int-to-float p0, v4

    .line 34
    cmpg-float v4, v3, v2

    .line 35
    .line 36
    if-nez v4, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    cmpg-float v2, p0, v2

    .line 40
    .line 41
    if-nez v2, :cond_5

    .line 42
    .line 43
    :goto_2
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_5
    div-float v2, v3, v0

    .line 46
    .line 47
    div-float v4, p0, v1

    .line 48
    .line 49
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    mul-float/2addr v0, v2

    .line 54
    sub-float/2addr v3, v0

    .line 55
    const/high16 v0, 0x40000000    # 2.0f

    .line 56
    .line 57
    div-float/2addr v3, v0

    .line 58
    mul-float/2addr v1, v2

    .line 59
    sub-float/2addr p0, v1

    .line 60
    div-float/2addr p0, v0

    .line 61
    new-instance v0, Lq50;

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, v1, v2, p0}, Lq50;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "map_action_force_landscape"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "forceLandscapeButton"

    .line 33
    .line 34
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    :cond_1
    :goto_0
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "map_action_auto_dim"

    .line 48
    .line 49
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string p0, "autoDimButton"

    .line 64
    .line 65
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :cond_3
    :goto_1
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v4, "map_action_back"

    .line 78
    .line 79
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const-string p0, "backButton"

    .line 94
    .line 95
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_5
    :goto_2
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v4, "map_action_home"

    .line 108
    .line 109
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    const-string p0, "homeButton"

    .line 124
    .line 125
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_7
    :goto_3
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 130
    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v4, "map_action_recents"

    .line 138
    .line 139
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    const-string p0, "recentsButton"

    .line 154
    .line 155
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v2

    .line 159
    :cond_9
    :goto_4
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-lez v1, :cond_b

    .line 168
    .line 169
    iget-object p0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 170
    .line 171
    if-eqz p0, :cond_a

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_a
    const-string p0, "shortcutBarScroll"

    .line 178
    .line 179
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v2

    .line 183
    :cond_b
    return-object v0
.end method

.method public final m()Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->A:Lw30;

    .line 2
    .line 3
    invoke-virtual {p0}, Lw30;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/SharedPreferences;

    .line 8
    .line 9
    return-object p0
.end method

.method public final n()V
    .locals 13

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 25
    .line 26
    const/high16 v1, 0x42000000    # 32.0f

    .line 27
    .line 28
    mul-float/2addr v1, v0

    .line 29
    float-to-int v1, v1

    .line 30
    const/high16 v2, 0x41c00000    # 24.0f

    .line 31
    .line 32
    mul-float/2addr v2, v0

    .line 33
    float-to-int v2, v2

    .line 34
    const/high16 v3, 0x41800000    # 16.0f

    .line 35
    .line 36
    mul-float/2addr v3, v0

    .line 37
    float-to-int v3, v3

    .line 38
    const/high16 v4, 0x41000000    # 8.0f

    .line 39
    .line 40
    mul-float/2addr v4, v0

    .line 41
    float-to-int v4, v4

    .line 42
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Lgt;->b(Landroid/content/SharedPreferences;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x0

    .line 62
    const-string v8, "shortcutBar"

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Ljava/lang/String;

    .line 72
    .line 73
    sget-object v10, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v10, v6}, Lz5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    if-nez v10, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance v11, Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    const/4 v10, -0x1

    .line 98
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    const/high16 v10, 0x41d00000    # 26.0f

    .line 102
    .line 103
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    .line 105
    .line 106
    const v10, 0x7f080079

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v10}, Lya;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v2, v3, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 117
    .line 118
    .line 119
    const/high16 v10, 0x41400000    # 12.0f

    .line 120
    .line 121
    mul-float/2addr v10, v0

    .line 122
    float-to-int v10, v10

    .line 123
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const v12, 0x7f080097

    .line 134
    .line 135
    .line 136
    invoke-static {v10, v6, v12}, Lz5;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-eqz v10, :cond_2

    .line 141
    .line 142
    invoke-virtual {v10, v7, v7, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v10, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    const/4 v7, 0x1

    .line 149
    invoke-virtual {v11, v7}, Landroid/view/View;->setClickable(Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 153
    .line 154
    .line 155
    new-instance v10, Llv;

    .line 156
    .line 157
    invoke-direct {v10, p0, v6, v7}, Llv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v6, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    if-eqz v6, :cond_3

    .line 166
    .line 167
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .line 169
    const/4 v8, -0x2

    .line 170
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    invoke-static {v8}, Lqj;->v(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v9

    .line 184
    :cond_4
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 185
    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-lez v1, :cond_5

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    const/16 v7, 0x8

    .line 200
    .line 201
    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    invoke-static {v8}, Lqj;->v(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v9

    .line 212
    :cond_7
    const-string p0, "shortcutBarScroll"

    .line 213
    .line 214
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v9
.end method

.method public final o()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->l()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->B:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->C:Lm1;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-virtual {v3, v5}, Lidv/lzn/screenonauto/projection/PassThroughColumn;->setPassTouches(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Lidv/lzn/screenonauto/projection/PassThroughScroll;->setPassTouches(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    move v4, v5

    .line 43
    :goto_0
    if-ge v4, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    check-cast v6, Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 58
    .line 59
    .line 60
    const/high16 v7, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->D:Z

    .line 71
    .line 72
    const-wide/16 v3, 0x1388

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string p0, "shortcutBarScroll"

    .line 79
    .line 80
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v4

    .line 84
    :cond_3
    const-string p0, "toggleColumn"

    .line 85
    .line 86
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v4
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c001f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f09015c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p1, Landroid/view/SurfaceView;

    .line 21
    .line 22
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->h:Landroid/view/SurfaceView;

    .line 23
    .line 24
    new-instance p1, Landroid/view/GestureDetector;

    .line 25
    .line 26
    new-instance v0, Lnv;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lnv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i:Landroid/view/GestureDetector;

    .line 35
    .line 36
    new-instance p1, Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
    new-instance v0, Lov;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lov;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j:Landroid/view/ScaleGestureDetector;

    .line 47
    .line 48
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->h:Landroid/view/SurfaceView;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    const-string v1, "surfaceView"

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    new-instance v2, Lz6;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v2, v3, p0}, Lz6;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0901cf

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast p1, Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 75
    .line 76
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 77
    .line 78
    const p1, 0x7f0900be

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p1, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 91
    .line 92
    new-instance v2, Lkv;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-direct {v2, p0, v4}, Lkv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q()V

    .line 102
    .line 103
    .line 104
    const p1, 0x7f090060

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    check-cast p1, Landroid/widget/ImageView;

    .line 115
    .line 116
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 117
    .line 118
    new-instance v2, Lkv;

    .line 119
    .line 120
    invoke-direct {v2, p0, v3}, Lkv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->p()V

    .line 127
    .line 128
    .line 129
    const p1, 0x7f090061

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    check-cast p1, Landroid/widget/ImageView;

    .line 140
    .line 141
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 142
    .line 143
    const p1, 0x7f0900cd

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast p1, Landroid/widget/ImageView;

    .line 154
    .line 155
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 156
    .line 157
    const p1, 0x7f09015f

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast p1, Landroid/widget/ImageView;

    .line 168
    .line 169
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 170
    .line 171
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 172
    .line 173
    if-eqz p1, :cond_3

    .line 174
    .line 175
    new-instance v2, Llv;

    .line 176
    .line 177
    sget-object v3, Lmt;->b:Lmt;

    .line 178
    .line 179
    invoke-direct {v2, p0, v3, v4}, Llv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 186
    .line 187
    if-eqz p1, :cond_2

    .line 188
    .line 189
    new-instance v2, Llv;

    .line 190
    .line 191
    sget-object v3, Lmt;->c:Lmt;

    .line 192
    .line 193
    invoke-direct {v2, p0, v3, v4}, Llv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 200
    .line 201
    if-eqz p1, :cond_1

    .line 202
    .line 203
    new-instance v2, Llv;

    .line 204
    .line 205
    sget-object v3, Lmt;->d:Lmt;

    .line 206
    .line 207
    invoke-direct {v2, p0, v3, v4}, Llv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j()V

    .line 214
    .line 215
    .line 216
    const p1, 0x7f090188

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    check-cast p1, Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 227
    .line 228
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 229
    .line 230
    const p1, 0x7f090187

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarActivity;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    check-cast p1, Landroid/widget/LinearLayout;

    .line 241
    .line 242
    iput-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 243
    .line 244
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i()V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->h:Landroid/view/SurfaceView;

    .line 251
    .line 252
    if-eqz p1, :cond_0

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance v0, Lpv;

    .line 259
    .line 260
    invoke-direct {v0, p0}, Lpv;-><init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_0
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_1
    const-string p0, "recentsButton"

    .line 272
    .line 273
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_2
    const-string p0, "homeButton"

    .line 278
    .line 279
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_3
    const-string p0, "backButton"

    .line 284
    .line 285
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_4
    invoke-static {v1}, Lqj;->v(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroid/os/PowerManager;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/PowerManager;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const v1, 0x1000000a

    .line 38
    .line 39
    .line 40
    const-string v2, "ScreenOnAuto:wake"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lk60;->i:Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    :cond_2
    const-wide/16 v2, 0x4e20

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->E:Liq;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->p()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/apps/auto/sdk/CarActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 6
    .line 7
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 8
    .line 9
    invoke-virtual {v0}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->cancelForwardedStream()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->E:Liq;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->B:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->C:Lm1;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lb00;->h:Lx6;

    .line 30
    .line 31
    iput-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->z:Landroid/view/Surface;

    .line 32
    .line 33
    sget-object p0, Lb00;->k:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lm1;

    .line 36
    .line 37
    const/16 v1, 0xd

    .line 38
    .line 39
    sget-object v2, Lyz;->b:Lyz;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "auto_dim"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "autoDimButton"

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const v4, 0x7f08008b

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v4, 0x7f08008a

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const v0, 0x7f100025

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const v0, 0x7f100023

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v2

    .line 65
    :cond_4
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v2
.end method

.method public final q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "force_landscape_active"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "forceLandscapeButton"

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const v4, 0x7f080096

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v4, 0x7f080095

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const v0, 0x7f100026

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const v0, 0x7f100027

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :cond_3
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method

.method public final r()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "map_action_force_landscape"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m:Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "forceLandscapeButton"

    .line 33
    .line 34
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    :cond_1
    :goto_0
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "map_action_auto_dim"

    .line 48
    .line 49
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->n:Landroid/widget/ImageView;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string p0, "autoDimButton"

    .line 64
    .line 65
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :cond_3
    :goto_1
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v4, "map_action_back"

    .line 78
    .line 79
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o:Landroid/widget/ImageView;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const-string p0, "backButton"

    .line 94
    .line 95
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_5
    :goto_2
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v4, "map_action_home"

    .line 108
    .line 109
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->q:Landroid/widget/ImageView;

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    const-string p0, "homeButton"

    .line 124
    .line 125
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_7
    :goto_3
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 130
    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v4, "map_action_recents"

    .line 138
    .line 139
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->r:Landroid/widget/ImageView;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    const-string p0, "recentsButton"

    .line 154
    .line 155
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v2

    .line 159
    :cond_9
    :goto_4
    iget-object v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    move v4, v3

    .line 168
    :goto_5
    if-ge v4, v1, :cond_b

    .line 169
    .line 170
    iget-object v5, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->u:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    if-eqz v5, :cond_a

    .line 173
    .line 174
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    add-int/lit8 v4, v4, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    const-string p0, "shortcutBar"

    .line 188
    .line 189
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v2

    .line 193
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :goto_6
    if-ge v3, v1, :cond_c

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    check-cast v2, Landroid/view/View;

    .line 206
    .line 207
    iget-object v4, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->F:Lmv;

    .line 208
    .line 209
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_c
    return-void
.end method
