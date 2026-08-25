.class public final Lzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lzv;->a:I

    iput-object p1, p0, Lzv;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzv;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lzv;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 11
    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    check-cast v1, Lzb;

    .line 15
    .line 16
    iget-wide v4, v1, Lhw;->d:J

    .line 17
    .line 18
    iget-object v6, v1, Lzb;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    iget-object v8, v1, Lzb;->j:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    iget-object v10, v1, Lzb;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    iget-object v12, v1, Lzb;->i:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    if-eqz v9, :cond_0

    .line 45
    .line 46
    if-eqz v13, :cond_0

    .line 47
    .line 48
    if-eqz v11, :cond_0

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    const/4 v15, 0x0

    .line 57
    :goto_0
    if-ge v15, v14, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    add-int/lit8 v15, v15, 0x1

    .line 64
    .line 65
    move-object/from16 v2, v16

    .line 66
    .line 67
    check-cast v2, Lnu;

    .line 68
    .line 69
    iget-object v3, v2, Lnu;->a:Landroid/view/View;

    .line 70
    .line 71
    move-object/from16 v17, v6

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    move/from16 v18, v7

    .line 78
    .line 79
    iget-object v7, v1, Lzb;->q:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    move/from16 v19, v9

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    new-instance v9, Lub;

    .line 96
    .line 97
    invoke-direct {v9, v1, v2, v6, v3}, Lub;-><init>(Lzb;Lnu;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 105
    .line 106
    .line 107
    move-object/from16 v6, v17

    .line 108
    .line 109
    move/from16 v7, v18

    .line 110
    .line 111
    move/from16 v9, v19

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v17, v6

    .line 115
    .line 116
    move/from16 v18, v7

    .line 117
    .line 118
    move/from16 v19, v9

    .line 119
    .line 120
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 121
    .line 122
    .line 123
    if-nez v19, :cond_3

    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    iget-object v3, v1, Lzb;->m:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    new-instance v3, Ltb;

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    invoke-direct {v3, v1, v2, v6}, Ltb;-><init>(Lzb;Ljava/util/ArrayList;I)V

    .line 145
    .line 146
    .line 147
    if-nez v18, :cond_2

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lyb;

    .line 154
    .line 155
    iget-object v2, v2, Lyb;->a:Lnu;

    .line 156
    .line 157
    iget-object v2, v2, Lnu;->a:Landroid/view/View;

    .line 158
    .line 159
    sget-object v6, Lu70;->a:Ljava/util/WeakHashMap;

    .line 160
    .line 161
    invoke-static {v2, v3, v4, v5}, Le70;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v3}, Ltb;->run()V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_1
    if-nez v11, :cond_5

    .line 169
    .line 170
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    iget-object v3, v1, Lzb;->n:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 184
    .line 185
    .line 186
    new-instance v3, Ltb;

    .line 187
    .line 188
    const/4 v6, 0x1

    .line 189
    invoke-direct {v3, v1, v2, v6}, Ltb;-><init>(Lzb;Ljava/util/ArrayList;I)V

    .line 190
    .line 191
    .line 192
    if-nez v18, :cond_4

    .line 193
    .line 194
    const/4 v6, 0x0

    .line 195
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lxb;

    .line 200
    .line 201
    iget-object v2, v2, Lxb;->a:Lnu;

    .line 202
    .line 203
    iget-object v2, v2, Lnu;->a:Landroid/view/View;

    .line 204
    .line 205
    sget-object v6, Lu70;->a:Ljava/util/WeakHashMap;

    .line 206
    .line 207
    invoke-static {v2, v3, v4, v5}, Le70;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_4
    invoke-virtual {v3}, Ltb;->run()V

    .line 212
    .line 213
    .line 214
    :cond_5
    :goto_2
    if-nez v13, :cond_b

    .line 215
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    iget-object v3, v1, Lzb;->l:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    new-instance v3, Ltb;

    .line 233
    .line 234
    const/4 v6, 0x2

    .line 235
    invoke-direct {v3, v1, v2, v6}, Ltb;-><init>(Lzb;Ljava/util/ArrayList;I)V

    .line 236
    .line 237
    .line 238
    if-eqz v18, :cond_7

    .line 239
    .line 240
    if-eqz v19, :cond_7

    .line 241
    .line 242
    if-nez v11, :cond_6

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    invoke-virtual {v3}, Ltb;->run()V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    .line 250
    .line 251
    if-nez v18, :cond_8

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_8
    move-wide v4, v6

    .line 255
    :goto_4
    if-nez v19, :cond_9

    .line 256
    .line 257
    iget-wide v8, v1, Lhw;->e:J

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_9
    move-wide v8, v6

    .line 261
    :goto_5
    if-nez v11, :cond_a

    .line 262
    .line 263
    iget-wide v6, v1, Lhw;->f:J

    .line 264
    .line 265
    :cond_a
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 266
    .line 267
    .line 268
    move-result-wide v6

    .line 269
    add-long/2addr v6, v4

    .line 270
    const/4 v1, 0x0

    .line 271
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Lnu;

    .line 276
    .line 277
    iget-object v2, v2, Lnu;->a:Landroid/view/View;

    .line 278
    .line 279
    sget-object v4, Lu70;->a:Ljava/util/WeakHashMap;

    .line 280
    .line 281
    invoke-static {v2, v3, v6, v7}, Le70;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_b
    :goto_6
    const/4 v1, 0x0

    .line 286
    :goto_7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:Z

    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 290
    .line 291
    if-eqz v1, :cond_f

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_c

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_c
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 301
    .line 302
    if-nez v1, :cond_d

    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_d
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 309
    .line 310
    if-eqz v1, :cond_e

    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    iput-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_8
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
