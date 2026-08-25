.class public abstract Lcb0;
.super Lbb0;


# instance fields
.field final a:Landroid/os/Handler;

.field b:Lj90;

.field c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "CAR.PROJECTION"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lay;->s:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ldb0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ldb0;-><init>(Lcb0;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcb0;->a:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p0, "null"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x7b

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x20

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x56

    .line 56
    .line 57
    const/16 v4, 0x2e

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const/4 v5, 0x4

    .line 62
    if-eq v2, v5, :cond_2

    .line 63
    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    if-eq v2, v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/16 v2, 0x47

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/16 v2, 0x49

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->isFocusable()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/16 v5, 0x46

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    move v2, v5

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v2, v4

    .line 95
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    const/16 v2, 0x45

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move v2, v4

    .line 108
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->willNotDraw()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    move v2, v4

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    const/16 v2, 0x44

    .line 120
    .line 121
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    const/16 v2, 0x48

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_7
    move v2, v4

    .line 134
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    move v3, v4

    .line 145
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9

    .line 153
    .line 154
    const/16 v2, 0x43

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_9
    move v2, v4

    .line 158
    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/View;->isLongClickable()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_a

    .line 166
    .line 167
    const/16 v2, 0x4c

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_a
    move v2, v4

    .line 171
    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    move v5, v4

    .line 185
    :goto_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_c

    .line 193
    .line 194
    const/16 v2, 0x53

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_c
    move v2, v4

    .line 198
    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_d

    .line 206
    .line 207
    const/16 v4, 0x50

    .line 208
    .line 209
    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const/16 v1, 0x2c

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const/16 v2, 0x2d

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/4 v2, -0x1

    .line 261
    if-eq v1, v2, :cond_10

    .line 262
    .line 263
    const-string v2, " #"

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-eqz v1, :cond_10

    .line 280
    .line 281
    if-eqz v2, :cond_10

    .line 282
    .line 283
    const/high16 v3, -0x1000000

    .line 284
    .line 285
    and-int/2addr v3, v1

    .line 286
    const/high16 v4, 0x1000000

    .line 287
    .line 288
    if-eq v3, v4, :cond_f

    .line 289
    .line 290
    const/high16 v4, 0x7f000000

    .line 291
    .line 292
    if-eq v3, v4, :cond_e

    .line 293
    .line 294
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_b

    .line 299
    :cond_e
    const-string v3, "app"

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :cond_f
    const-string v3, "android"

    .line 303
    .line 304
    :goto_b
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    const-string v2, " "

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, ":"

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, "/"

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    .line 335
    .line 336
    :catch_0
    :cond_10
    const-string v1, "}"

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 349
    .line 350
    if-eqz v0, :cond_11

    .line 351
    .line 352
    check-cast p2, Landroid/view/ViewGroup;

    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-lez v0, :cond_11

    .line 359
    .line 360
    const-string v1, "  "

    .line 361
    .line 362
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    const/4 v1, 0x0

    .line 367
    :goto_c
    if-ge v1, v0, :cond_11

    .line 368
    .line 369
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {p0, p1, v2}, Lcb0;->f(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 374
    .line 375
    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcb0;->b:Lj90;

    .line 2
    .line 3
    iget-object v0, v0, Lj90;->a:Leb0;

    .line 4
    .line 5
    iget-object v0, v0, Law;->b:Lay;

    .line 6
    .line 7
    iget-boolean v1, v0, Lay;->k:Z

    .line 8
    .line 9
    if-nez v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {v0}, Lay;->v()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lay;->r()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lay;->n:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v2, v0, Lay;->o:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v3, v0, Lay;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    :goto_0
    move v1, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v3, v5

    .line 34
    if-gez v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v6, v0, Lay;->f:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move v1, v5

    .line 52
    :goto_1
    if-eqz v1, :cond_7

    .line 53
    .line 54
    iput-boolean v5, v0, Lay;->b:Z

    .line 55
    .line 56
    :try_start_0
    iget-object v2, v0, Lay;->n:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v3, v0, Lay;->o:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz v2, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v5, v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-gtz v3, :cond_4

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lc2;->l()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lc2;->l()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const-string v2, "Internal error with the back stack records"

    .line 113
    .line 114
    invoke-static {v2}, Lc2;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_2
    iput-boolean v4, v0, Lay;->b:Z

    .line 118
    .line 119
    iget-object v2, v0, Lay;->o:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lay;->n:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    iput-boolean v4, v0, Lay;->b:Z

    .line 132
    .line 133
    iget-object v1, v0, Lay;->o:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Lay;->n:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lay;->w()V

    .line 145
    .line 146
    .line 147
    if-nez v1, :cond_8

    .line 148
    .line 149
    invoke-super {p0}, Lbb0;->a()V

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void

    .line 153
    :cond_9
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 154
    .line 155
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 0

    .line 159
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/high16 p0, -0x10000

    and-int/2addr p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Can only use lower 16 bits for requestCode"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCreated="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcb0;->d:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mResumed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcb0;->e:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcb0;->c:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mReallyStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcb0;->f:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, p0, Lcb0;->b:Lj90;

    .line 160
    iget-object v2, v2, Lj90;->a:Leb0;

    .line 161
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v2, Law;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 162
    iget-object v0, p0, Lcb0;->b:Lj90;

    .line 163
    iget-object v0, v0, Lj90;->a:Leb0;

    .line 164
    iget-object v0, v0, Law;->b:Lay;

    .line 165
    invoke-virtual {v0, p1, p2, p3, p4}, Lay;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "View Hierarchy:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lbb0;->d()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p3, p0}, Lcb0;->f(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcb0;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcb0;->f:Z

    iput-boolean p1, p0, Lcb0;->g:Z

    iget-object p1, p0, Lcb0;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcb0;->b:Lj90;

    iget-boolean v1, p0, Lcb0;->g:Z

    .line 166
    iget-object p1, p1, Lj90;->a:Leb0;

    .line 167
    iput-boolean v1, p1, Law;->e:Z

    .line 168
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 169
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 170
    iget-object p0, p0, Law;->b:Lay;

    .line 171
    iput-boolean v0, p0, Lay;->b:Z

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0}, Lay;->g(IZ)V

    iput-boolean v0, p0, Lay;->b:Z

    :cond_0
    return-void
.end method

.method public getSupportFragmentManager()Lk90;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 2
    .line 3
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 4
    .line 5
    iget-object p0, p0, Law;->b:Lay;

    .line 6
    .line 7
    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 2
    .line 3
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 4
    .line 5
    iget-object p0, p0, Law;->b:Lay;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lay;->h(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcb0;->b:Lj90;

    .line 8
    .line 9
    iget-object v0, v0, Lj90;->a:Leb0;

    .line 10
    .line 11
    iget-object v1, v0, Law;->b:Lay;

    .line 12
    .line 13
    iget-object v2, v1, Lay;->h:Leb0;

    .line 14
    .line 15
    if-nez v2, :cond_5

    .line 16
    .line 17
    iput-object v0, v1, Lay;->h:Leb0;

    .line 18
    .line 19
    iput-object v0, v1, Lay;->i:Leb0;

    .line 20
    .line 21
    invoke-virtual {p0}, Lbb0;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lbb0;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lbb0;->e()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lfb0;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcb0;->b:Lj90;

    .line 48
    .line 49
    iget-object v3, v0, Lfb0;->b:Lu90;

    .line 50
    .line 51
    iget-object v2, v2, Lj90;->a:Leb0;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget v4, v3, Lu90;->c:I

    .line 56
    .line 57
    move v5, v1

    .line 58
    :goto_0
    if-ge v5, v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Lu90;->c(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lq90;

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iput-object v3, v2, Law;->d:Lu90;

    .line 73
    .line 74
    :cond_2
    if-eqz p1, :cond_4

    .line 75
    .line 76
    const-string v2, "android:support:fragments"

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v2, p0, Lcb0;->b:Lj90;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, v0, Lfb0;->a:Ljava/util/List;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v0, v3

    .line 91
    :goto_1
    iget-object v2, v2, Lj90;->a:Leb0;

    .line 92
    .line 93
    iget-object v2, v2, Law;->b:Lay;

    .line 94
    .line 95
    new-instance v4, Laz;

    .line 96
    .line 97
    invoke-direct {v4, v0, v3}, Laz;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1, v4}, Lay;->j(Landroid/os/Parcelable;Laz;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 104
    .line 105
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 106
    .line 107
    iget-object p0, p0, Law;->b:Lay;

    .line 108
    .line 109
    iput-boolean v1, p0, Lay;->k:Z

    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lay;->b:Z

    .line 113
    .line 114
    invoke-virtual {p0, p1, v1}, Lay;->g(IZ)V

    .line 115
    .line 116
    .line 117
    iput-boolean v1, p0, Lay;->b:Z

    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    const-string p0, "Already attached"

    .line 121
    .line 122
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    const-string p0, "Context not attached to CarActivity"

    .line 127
    .line 128
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 11
    .line 12
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 13
    .line 14
    iget-object p0, p0, Law;->b:Lay;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lay;->d(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x0

    .line 23
    :cond_1
    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcb0;->a(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 6
    .line 7
    iget-object v1, v1, Lj90;->a:Leb0;

    .line 8
    .line 9
    iget-object v1, v1, Law;->b:Lay;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v1, Lay;->l:Z

    .line 13
    .line 14
    invoke-virtual {v1}, Lay;->v()V

    .line 15
    .line 16
    .line 17
    iput-boolean v2, v1, Lay;->b:Z

    .line 18
    .line 19
    invoke-virtual {v1, v0, v0}, Lay;->g(IZ)V

    .line 20
    .line 21
    .line 22
    iput-boolean v0, v1, Lay;->b:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, v1, Lay;->h:Leb0;

    .line 26
    .line 27
    iput-object v0, v1, Lay;->i:Leb0;

    .line 28
    .line 29
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 30
    .line 31
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 32
    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 2
    .line 3
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 4
    .line 5
    iget-object p0, p0, Law;->b:Lay;

    .line 6
    .line 7
    invoke-virtual {p0}, Lay;->D()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 2
    .line 3
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 4
    .line 5
    iget-object p0, p0, Law;->b:Lay;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lay;->k:Z

    .line 9
    .line 10
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcb0;->e:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcb0;->a:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcb0;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 19
    .line 20
    invoke-virtual {v1}, Lj90;->a()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 24
    .line 25
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 26
    .line 27
    iget-object p0, p0, Law;->b:Lay;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lay;->b:Z

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {p0, v1, v0}, Lay;->g(IZ)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lay;->b:Z

    .line 37
    .line 38
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcb0;->b:Lj90;

    .line 8
    .line 9
    invoke-virtual {v0}, Lj90;->a()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 13
    .line 14
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 15
    .line 16
    iget-object p0, p0, Law;->b:Lay;

    .line 17
    .line 18
    invoke-virtual {p0}, Lay;->v()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcb0;->e:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 11
    .line 12
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 13
    .line 14
    iget-object p0, p0, Law;->b:Lay;

    .line 15
    .line 16
    invoke-virtual {p0}, Lay;->v()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcb0;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcb0;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcb0;->b:Lj90;

    .line 10
    .line 11
    iget-object v0, v0, Lj90;->a:Leb0;

    .line 12
    .line 13
    iget-object v0, v0, Law;->b:Lay;

    .line 14
    .line 15
    invoke-virtual {v0}, Lay;->y()Laz;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Laz;->a:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v2

    .line 26
    :goto_0
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 27
    .line 28
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 29
    .line 30
    iget-object v3, p0, Law;->d:Lu90;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    iget v3, v3, Lu90;->c:I

    .line 36
    .line 37
    new-array v5, v3, [Lq90;

    .line 38
    .line 39
    add-int/lit8 v6, v3, -0x1

    .line 40
    .line 41
    :goto_1
    if-ltz v6, :cond_2

    .line 42
    .line 43
    iget-object v7, p0, Law;->d:Lu90;

    .line 44
    .line 45
    invoke-virtual {v7, v6}, Lu90;->c(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Lq90;

    .line 50
    .line 51
    aput-object v7, v5, v6

    .line 52
    .line 53
    add-int/lit8 v6, v6, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-boolean v6, p0, Law;->e:Z

    .line 57
    .line 58
    move v7, v4

    .line 59
    :goto_2
    if-ge v7, v3, :cond_5

    .line 60
    .line 61
    aget-object v4, v5, v7

    .line 62
    .line 63
    iget-boolean v8, v4, Lq90;->a:Z

    .line 64
    .line 65
    if-nez v8, :cond_3

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Lq90;->a()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lq90;->b()V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-boolean v8, v4, Lq90;->a:Z

    .line 76
    .line 77
    if-eqz v8, :cond_4

    .line 78
    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    move v4, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v4}, Lq90;->c()V

    .line 84
    .line 85
    .line 86
    throw v2

    .line 87
    :cond_5
    if-eqz v4, :cond_6

    .line 88
    .line 89
    iget-object p0, p0, Law;->d:Lu90;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move-object p0, v2

    .line 93
    :goto_3
    if-nez v0, :cond_7

    .line 94
    .line 95
    if-nez p0, :cond_7

    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_7
    new-instance v1, Lfb0;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, v1, Lfb0;->a:Ljava/util/List;

    .line 104
    .line 105
    iput-object p0, v1, Lfb0;->b:Lu90;

    .line 106
    .line 107
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbb0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 5
    .line 6
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 7
    .line 8
    iget-object p0, p0, Law;->b:Lay;

    .line 9
    .line 10
    invoke-virtual {p0}, Lay;->z()Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-string v0, "android:support:fragments"

    .line 17
    .line 18
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcb0;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcb0;->f:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcb0;->a:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcb0;->d:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iput-boolean v2, p0, Lcb0;->d:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 19
    .line 20
    iget-object v1, v1, Lj90;->a:Leb0;

    .line 21
    .line 22
    iget-object v1, v1, Law;->b:Lay;

    .line 23
    .line 24
    iput-boolean v0, v1, Lay;->k:Z

    .line 25
    .line 26
    iput-boolean v2, v1, Lay;->b:Z

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-virtual {v1, v3, v0}, Lay;->g(IZ)V

    .line 30
    .line 31
    .line 32
    iput-boolean v0, v1, Lay;->b:Z

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 35
    .line 36
    iget-object v1, v1, Lj90;->a:Leb0;

    .line 37
    .line 38
    iget-object v1, v1, Law;->b:Lay;

    .line 39
    .line 40
    iput-boolean v0, v1, Lay;->k:Z

    .line 41
    .line 42
    invoke-virtual {v1}, Lay;->v()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 46
    .line 47
    iget-object v1, v1, Lj90;->a:Leb0;

    .line 48
    .line 49
    iget-boolean v3, v1, Law;->g:Z

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput-boolean v2, v1, Law;->g:Z

    .line 55
    .line 56
    iget-boolean v3, v1, Law;->f:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-object v3, v1, Law;->d:Lu90;

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    new-instance v3, Lu90;

    .line 65
    .line 66
    invoke-direct {v3}, Lu90;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v3, v1, Law;->d:Lu90;

    .line 70
    .line 71
    :cond_2
    iget-object v3, v1, Law;->d:Lu90;

    .line 72
    .line 73
    const-string v4, "(root)"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lu90;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lq90;

    .line 80
    .line 81
    :cond_3
    iput-boolean v2, v1, Law;->f:Z

    .line 82
    .line 83
    :goto_0
    iget-object v1, p0, Lcb0;->b:Lj90;

    .line 84
    .line 85
    iget-object v1, v1, Lj90;->a:Leb0;

    .line 86
    .line 87
    iget-object v1, v1, Law;->b:Lay;

    .line 88
    .line 89
    iput-boolean v0, v1, Lay;->k:Z

    .line 90
    .line 91
    iput-boolean v2, v1, Lay;->b:Z

    .line 92
    .line 93
    const/4 v2, 0x4

    .line 94
    invoke-virtual {v1, v2, v0}, Lay;->g(IZ)V

    .line 95
    .line 96
    .line 97
    iput-boolean v0, v1, Lay;->b:Z

    .line 98
    .line 99
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 100
    .line 101
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 102
    .line 103
    iget-object v1, p0, Law;->d:Lu90;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget v1, v1, Lu90;->c:I

    .line 108
    .line 109
    new-array v2, v1, [Lq90;

    .line 110
    .line 111
    add-int/lit8 v3, v1, -0x1

    .line 112
    .line 113
    :goto_1
    if-ltz v3, :cond_4

    .line 114
    .line 115
    iget-object v4, p0, Law;->d:Lu90;

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Lu90;->c(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lq90;

    .line 122
    .line 123
    aput-object v4, v2, v3

    .line 124
    .line 125
    add-int/lit8 v3, v3, -0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    if-lez v1, :cond_6

    .line 129
    .line 130
    aget-object p0, v2, v0

    .line 131
    .line 132
    const/4 p0, 0x0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-boolean v1, p0, Lq90;->a:Z

    .line 137
    .line 138
    if-eqz v1, :cond_5

    .line 139
    .line 140
    iput-boolean v0, p0, Lq90;->a:Z

    .line 141
    .line 142
    throw p0

    .line 143
    :cond_5
    throw p0

    .line 144
    :cond_6
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcb0;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcb0;->a:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcb0;->b:Lj90;

    .line 10
    .line 11
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 12
    .line 13
    iget-object p0, p0, Law;->b:Lay;

    .line 14
    .line 15
    iput-boolean v0, p0, Lay;->k:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lay;->b:Z

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lay;->g(IZ)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lay;->b:Z

    .line 25
    .line 26
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Leb0;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Leb0;-><init>(Lcb0;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lj90;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lj90;-><init>(Leb0;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcb0;->b:Lj90;

    .line 15
    .line 16
    return-void
.end method
