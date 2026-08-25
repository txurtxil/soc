.class public final Lk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp7;


# direct methods
.method public synthetic constructor <init>(Lp7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk7;->a:I

    iput-object p1, p0, Lk7;->b:Lp7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lk7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lk7;->b:Lp7;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lp7;->i:Lo7;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lo7;->getAnimationMode()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, v2, :cond_2

    .line 31
    .line 32
    new-array v0, v1, [F

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, p0, Lp7;->d:Landroid/animation/TimeInterpolator;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Li7;

    .line 47
    .line 48
    invoke-direct {v3, p0, v4, v4}, Li7;-><init>(Lp7;IB)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    new-array v3, v1, [F

    .line 55
    .line 56
    fill-array-data v3, :array_1

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v5, p0, Lp7;->f:Landroid/animation/TimeInterpolator;

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Li7;

    .line 69
    .line 70
    invoke-direct {v5, p0, v2, v4}, Li7;-><init>(Lp7;IB)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 77
    .line 78
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 79
    .line 80
    .line 81
    new-array v1, v1, [Landroid/animation/Animator;

    .line 82
    .line 83
    aput-object v0, v1, v4

    .line 84
    .line 85
    aput-object v3, v1, v2

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    .line 89
    .line 90
    iget v0, p0, Lp7;->a:I

    .line 91
    .line 92
    int-to-long v0, v0

    .line 93
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lh7;

    .line 97
    .line 98
    const/4 v1, 0x3

    .line 99
    invoke-direct {v0, p0, v1}, Lh7;-><init>(Lp7;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    .line 123
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 124
    .line 125
    add-int/2addr v1, v3

    .line 126
    :cond_3
    int-to-float v3, v1

    .line 127
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 133
    .line 134
    .line 135
    filled-new-array {v1, v4}, [I

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 140
    .line 141
    .line 142
    iget-object v3, p0, Lp7;->e:Landroid/animation/TimeInterpolator;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    .line 146
    .line 147
    iget v3, p0, Lp7;->c:I

    .line 148
    .line 149
    int-to-long v3, v3

    .line 150
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    .line 152
    .line 153
    new-instance v3, Lh7;

    .line 154
    .line 155
    invoke-direct {v3, p0, v2}, Lh7;-><init>(Lp7;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Li7;

    .line 162
    .line 163
    invoke-direct {v2, p0, v1}, Li7;-><init>(Lp7;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lp7;->a()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_1
    iget-object v0, p0, Lp7;->i:Lo7;

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    iget-object v3, p0, Lp7;->h:Landroid/content/Context;

    .line 182
    .line 183
    const-string v4, "window"

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Landroid/view/WindowManager;

    .line 190
    .line 191
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .line 193
    const/16 v5, 0x1e

    .line 194
    .line 195
    if-lt v4, v5, :cond_4

    .line 196
    .line 197
    invoke-static {v3}, Lz;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3}, Lz;->c(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    goto :goto_1

    .line 206
    :cond_4
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    new-instance v4, Landroid/graphics/Point;

    .line 211
    .line 212
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 216
    .line 217
    .line 218
    new-instance v3, Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 221
    .line 222
    .line 223
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 224
    .line 225
    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 226
    .line 227
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 228
    .line 229
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 230
    .line 231
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    new-array v1, v1, [I

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 238
    .line 239
    .line 240
    aget v1, v1, v2

    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    add-int/2addr v2, v1

    .line 247
    sub-int/2addr v3, v2

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    float-to-int v1, v1

    .line 253
    add-int/2addr v3, v1

    .line 254
    iget v1, p0, Lp7;->n:I

    .line 255
    .line 256
    if-lt v3, v1, :cond_5

    .line 257
    .line 258
    iput v1, p0, Lp7;->o:I

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 266
    .line 267
    if-nez v2, :cond_6

    .line 268
    .line 269
    sget-object p0, Lp7;->x:Ljava/lang/String;

    .line 270
    .line 271
    const-string v0, "Unable to apply gesture inset because layout params are not MarginLayoutParams"

    .line 272
    .line 273
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_6
    iget v2, p0, Lp7;->n:I

    .line 278
    .line 279
    iput v2, p0, Lp7;->o:I

    .line 280
    .line 281
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 282
    .line 283
    iget p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 284
    .line 285
    sub-int/2addr v2, v3

    .line 286
    add-int/2addr v2, p0

    .line 287
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_2
    return-void

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
