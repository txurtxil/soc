.class public final Lqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/lang/ThreadLocal;

.field public static final f:Lo6;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:J

.field public c:J

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqh;->e:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lo6;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lo6;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lqh;->f:Lo6;

    .line 15
    .line 16
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lnu;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv5;->y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lv5;->x(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v4, v3, Lnu;->c:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Lnu;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lrw;

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->M()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lrw;->i(IJ)Lnu;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lnu;->f()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lnu;->g()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    iget-object p2, p1, Lnu;->a:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Lrw;->f(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v0, p1, v1}, Lrw;->a(Lnu;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->N(Z)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->N(Z)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lqh;->b:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lqh;->b:J

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 23
    .line 24
    iput p2, p0, Loh;->a:I

    .line 25
    .line 26
    iput p3, p0, Loh;->b:I

    .line 27
    .line 28
    return-void
.end method

.method public final b(J)V
    .locals 14

    .line 1
    iget-object v0, p0, Lqh;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lqh;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v7, v5, v2}, Loh;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 29
    .line 30
    .line 31
    iget v5, v7, Loh;->d:I

    .line 32
    .line 33
    add-int/2addr v4, v5

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 38
    .line 39
    .line 40
    move v3, v2

    .line 41
    move v4, v3

    .line 42
    :goto_1
    const/4 v5, 0x1

    .line 43
    if-ge v3, v1, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_2

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_2
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 59
    .line 60
    iget v8, v7, Loh;->a:I

    .line 61
    .line 62
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget v9, v7, Loh;->b:I

    .line 67
    .line 68
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    add-int/2addr v9, v8

    .line 73
    move v8, v2

    .line 74
    :goto_2
    iget v10, v7, Loh;->d:I

    .line 75
    .line 76
    mul-int/lit8 v10, v10, 0x2

    .line 77
    .line 78
    if-ge v8, v10, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-lt v4, v10, :cond_3

    .line 85
    .line 86
    new-instance v10, Lph;

    .line 87
    .line 88
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lph;

    .line 100
    .line 101
    :goto_3
    iget-object v11, v7, Loh;->c:[I

    .line 102
    .line 103
    add-int/lit8 v12, v8, 0x1

    .line 104
    .line 105
    aget v12, v11, v12

    .line 106
    .line 107
    if-gt v12, v9, :cond_4

    .line 108
    .line 109
    move v13, v5

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    move v13, v2

    .line 112
    :goto_4
    iput-boolean v13, v10, Lph;->a:Z

    .line 113
    .line 114
    iput v9, v10, Lph;->b:I

    .line 115
    .line 116
    iput v12, v10, Lph;->c:I

    .line 117
    .line 118
    iput-object v6, v10, Lph;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    aget v11, v11, v8

    .line 121
    .line 122
    iput v11, v10, Lph;->e:I

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x2

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    sget-object p0, Lqh;->f:Lo6;

    .line 133
    .line 134
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    .line 136
    .line 137
    move p0, v2

    .line 138
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-ge p0, v1, :cond_f

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lph;

    .line 149
    .line 150
    iget-object v3, v1, Lph;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    .line 152
    if-nez v3, :cond_7

    .line 153
    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_7
    iget-boolean v4, v1, Lph;->a:Z

    .line 157
    .line 158
    if-eqz v4, :cond_8

    .line 159
    .line 160
    const-wide v6, 0x7fffffffffffffffL

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_8
    move-wide v6, p1

    .line 167
    :goto_7
    iget v4, v1, Lph;->e:I

    .line 168
    .line 169
    invoke-static {v3, v4, v6, v7}, Lqh;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lnu;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    iget-object v4, v3, Lnu;->b:Ljava/lang/ref/WeakReference;

    .line 176
    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    invoke-virtual {v3}, Lnu;->f()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_9

    .line 184
    .line 185
    invoke-virtual {v3}, Lnu;->g()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_9

    .line 190
    .line 191
    iget-object v3, v3, Lnu;->b:Ljava/lang/ref/WeakReference;

    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    if-nez v3, :cond_a

    .line 200
    .line 201
    :cond_9
    move-wide v8, p1

    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_a
    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 205
    .line 206
    if-eqz v4, :cond_d

    .line 207
    .line 208
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 209
    .line 210
    invoke-virtual {v4}, Lv5;->y()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_d

    .line 215
    .line 216
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->b:Lrw;

    .line 217
    .line 218
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 219
    .line 220
    if-eqz v6, :cond_b

    .line 221
    .line 222
    invoke-virtual {v6}, Lhw;->e()V

    .line 223
    .line 224
    .line 225
    :cond_b
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Llw;

    .line 226
    .line 227
    if-eqz v6, :cond_c

    .line 228
    .line 229
    invoke-virtual {v6, v4}, Llw;->b0(Lrw;)V

    .line 230
    .line 231
    .line 232
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Llw;

    .line 233
    .line 234
    invoke-virtual {v6, v4}, Llw;->c0(Lrw;)V

    .line 235
    .line 236
    .line 237
    :cond_c
    iget-object v6, v4, Lrw;->a:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Lrw;->d()V

    .line 243
    .line 244
    .line 245
    :cond_d
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 246
    .line 247
    invoke-virtual {v4, v3, v5}, Loh;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 248
    .line 249
    .line 250
    iget v6, v4, Loh;->d:I

    .line 251
    .line 252
    if-eqz v6, :cond_9

    .line 253
    .line 254
    :try_start_0
    const-string v6, "RV Nested Prefetch"

    .line 255
    .line 256
    sget v7, Ln50;->a:I

    .line 257
    .line 258
    invoke-static {v6}, Lm50;->a(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->e0:Lvw;

    .line 262
    .line 263
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 264
    .line 265
    iput v5, v6, Lvw;->c:I

    .line 266
    .line 267
    check-cast v7, Lju;

    .line 268
    .line 269
    iget-object v7, v7, Lju;->e:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    iput v7, v6, Lvw;->d:I

    .line 276
    .line 277
    iput-boolean v2, v6, Lvw;->f:Z

    .line 278
    .line 279
    iput-boolean v2, v6, Lvw;->g:Z

    .line 280
    .line 281
    iput-boolean v2, v6, Lvw;->h:Z

    .line 282
    .line 283
    move v6, v2

    .line 284
    :goto_8
    iget v7, v4, Loh;->d:I

    .line 285
    .line 286
    mul-int/lit8 v7, v7, 0x2

    .line 287
    .line 288
    if-ge v6, v7, :cond_e

    .line 289
    .line 290
    iget-object v7, v4, Loh;->c:[I

    .line 291
    .line 292
    aget v7, v7, v6

    .line 293
    .line 294
    move-wide v8, p1

    .line 295
    invoke-static {v3, v7, v8, v9}, Lqh;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Lnu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .line 297
    .line 298
    add-int/lit8 v6, v6, 0x2

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_e
    move-wide v8, p1

    .line 302
    invoke-static {}, Lm50;->b()V

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    move-object p0, v0

    .line 308
    sget v0, Ln50;->a:I

    .line 309
    .line 310
    invoke-static {}, Lm50;->b()V

    .line 311
    .line 312
    .line 313
    throw p0

    .line 314
    :goto_9
    iput-boolean v2, v1, Lph;->a:Z

    .line 315
    .line 316
    iput v2, v1, Lph;->b:I

    .line 317
    .line 318
    iput v2, v1, Lph;->c:I

    .line 319
    .line 320
    const/4 v3, 0x0

    .line 321
    iput-object v3, v1, Lph;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 322
    .line 323
    iput v2, v1, Lph;->e:I

    .line 324
    .line 325
    add-int/lit8 p0, p0, 0x1

    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    :cond_f
    :goto_a
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lqh;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    const-string v3, "RV Prefetch"

    .line 6
    .line 7
    sget v4, Ln50;->a:I

    .line 8
    .line 9
    invoke-static {v3}, Lm50;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :goto_0
    iput-wide v1, p0, Lqh;->b:J

    .line 19
    .line 20
    invoke-static {}, Lm50;->b()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    move-wide v5, v1

    .line 30
    :goto_1
    if-ge v4, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    cmp-long v0, v5, v1

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    iget-wide v5, p0, Lqh;->c:J

    .line 70
    .line 71
    add-long/2addr v3, v5

    .line 72
    invoke-virtual {p0, v3, v4}, Lqh;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_3
    iput-wide v1, p0, Lqh;->b:J

    .line 77
    .line 78
    sget p0, Ln50;->a:I

    .line 79
    .line 80
    invoke-static {}, Lm50;->b()V

    .line 81
    .line 82
    .line 83
    throw v0
.end method
