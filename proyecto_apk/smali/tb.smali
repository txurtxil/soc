.class public final Ltb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lzb;


# direct methods
.method public synthetic constructor <init>(Lzb;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Ltb;->a:I

    iput-object p1, p0, Ltb;->c:Lzb;

    iput-object p2, p0, Ltb;->b:Ljava/util/ArrayList;

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
    iget v1, v0, Ltb;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Ltb;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    iget-object v2, v0, Ltb;->c:Lzb;

    .line 19
    .line 20
    if-ge v4, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    check-cast v6, Lnu;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v7, v6, Lnu;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-object v9, v2, Lzb;->o:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    iget-wide v10, v2, Lhw;->c:J

    .line 49
    .line 50
    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    new-instance v10, Lub;

    .line 55
    .line 56
    invoke-direct {v10, v2, v6, v7, v8}, Lub;-><init>(Lzb;Lnu;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v2, Lzb;->l:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :goto_1
    iget-object v7, v0, Ltb;->c:Lzb;

    .line 81
    .line 82
    if-ge v4, v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    move-object v8, v6

    .line 91
    check-cast v8, Lxb;

    .line 92
    .line 93
    iget-object v12, v7, Lzb;->r:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-wide v13, v7, Lhw;->f:J

    .line 96
    .line 97
    iget-object v6, v8, Lxb;->a:Lnu;

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    if-nez v6, :cond_1

    .line 101
    .line 102
    move-object v10, v9

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    iget-object v6, v6, Lnu;->a:Landroid/view/View;

    .line 105
    .line 106
    move-object v10, v6

    .line 107
    :goto_2
    iget-object v6, v8, Lxb;->b:Lnu;

    .line 108
    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    iget-object v9, v6, Lnu;->a:Landroid/view/View;

    .line 112
    .line 113
    :cond_2
    move-object v15, v9

    .line 114
    if-eqz v10, :cond_3

    .line 115
    .line 116
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    iget-object v6, v8, Lxb;->a:Lnu;

    .line 125
    .line 126
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget v6, v8, Lxb;->e:I

    .line 130
    .line 131
    iget v11, v8, Lxb;->c:I

    .line 132
    .line 133
    sub-int/2addr v6, v11

    .line 134
    int-to-float v6, v6

    .line 135
    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 136
    .line 137
    .line 138
    iget v6, v8, Lxb;->f:I

    .line 139
    .line 140
    iget v11, v8, Lxb;->d:I

    .line 141
    .line 142
    sub-int/2addr v6, v11

    .line 143
    int-to-float v6, v6

    .line 144
    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    move-object v11, v6

    .line 152
    new-instance v6, Lwb;

    .line 153
    .line 154
    move-object/from16 v16, v11

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    move-object/from16 v3, v16

    .line 158
    .line 159
    invoke-direct/range {v6 .. v11}, Lwb;-><init>(Lzb;Lxb;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    .line 168
    .line 169
    :cond_3
    if-eqz v15, :cond_4

    .line 170
    .line 171
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    iget-object v3, v8, Lxb;->b:Lnu;

    .line 176
    .line 177
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    const/high16 v12, 0x3f800000    # 1.0f

    .line 193
    .line 194
    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    new-instance v6, Lwb;

    .line 199
    .line 200
    const/4 v11, 0x1

    .line 201
    move-object v10, v15

    .line 202
    invoke-direct/range {v6 .. v11}, Lwb;-><init>(Lzb;Lxb;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_4
    const/high16 v12, 0x3f800000    # 1.0f

    .line 214
    .line 215
    :goto_3
    move v3, v12

    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 219
    .line 220
    .line 221
    iget-object v0, v7, Lzb;->n:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    :goto_4
    iget-object v7, v0, Ltb;->c:Lzb;

    .line 232
    .line 233
    if-ge v4, v1, :cond_8

    .line 234
    .line 235
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    check-cast v3, Lyb;

    .line 242
    .line 243
    iget-object v8, v3, Lyb;->a:Lnu;

    .line 244
    .line 245
    iget v6, v3, Lyb;->b:I

    .line 246
    .line 247
    iget v9, v3, Lyb;->c:I

    .line 248
    .line 249
    iget v10, v3, Lyb;->d:I

    .line 250
    .line 251
    iget v3, v3, Lyb;->e:I

    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move v11, v10

    .line 257
    iget-object v10, v8, Lnu;->a:Landroid/view/View;

    .line 258
    .line 259
    sub-int v6, v11, v6

    .line 260
    .line 261
    sub-int v11, v3, v9

    .line 262
    .line 263
    if-eqz v6, :cond_6

    .line 264
    .line 265
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 270
    .line 271
    .line 272
    :cond_6
    if-eqz v11, :cond_7

    .line 273
    .line 274
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    .line 280
    .line 281
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    iget-object v3, v7, Lzb;->p:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    iget-wide v13, v7, Lhw;->e:J

    .line 291
    .line 292
    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    move v9, v6

    .line 297
    new-instance v6, Lvb;

    .line 298
    .line 299
    invoke-direct/range {v6 .. v12}, Lvb;-><init>(Lzb;Lnu;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 311
    .line 312
    .line 313
    iget-object v0, v7, Lzb;->m:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
