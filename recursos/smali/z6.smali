.class public final synthetic Lz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lz6;->a:I

    iput-object p2, p0, Lz6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget p1, p0, Lz6;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lz6;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 10
    .line 11
    sget p1, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez p1, :cond_5

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-boolean v4, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->D:Z

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->s:Lidv/lzn/screenonauto/projection/PassThroughColumn;

    .line 40
    .line 41
    if-eqz v5, :cond_4

    .line 42
    .line 43
    iget-object v6, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->t:Lidv/lzn/screenonauto/projection/PassThroughScroll;

    .line 44
    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    const/4 v7, 0x2

    .line 48
    new-array v7, v7, [Landroid/view/View;

    .line 49
    .line 50
    aput-object v5, v7, v0

    .line 51
    .line 52
    aput-object v6, v7, v1

    .line 53
    .line 54
    invoke-static {v7}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    invoke-virtual {v6, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    float-to-int v6, p1

    .line 84
    float-to-int v7, v3

    .line 85
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 93
    .line 94
    .line 95
    :goto_1
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 96
    .line 97
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->m()Landroid/content/SharedPreferences;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->isAvailable(Landroid/content/SharedPreferences;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 109
    .line 110
    iput-boolean v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->l:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string p0, "shortcutBarScroll"

    .line 114
    .line 115
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2

    .line 119
    :cond_4
    const-string p0, "toggleColumn"

    .line 120
    .line 121
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v2

    .line 125
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 126
    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k()Lq50;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    iget-object v3, p1, Lq50;->a:Ljava/lang/Float;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget-object v4, p1, Lq50;->b:Ljava/lang/Float;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    iget-object p1, p1, Lq50;->c:Ljava/lang/Float;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    sget-object v5, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 155
    .line 156
    invoke-virtual {v5, p2, v3, v4, p1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->forward(Landroid/view/MotionEvent;FFF)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_7

    .line 161
    .line 162
    iput-boolean v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_9

    .line 169
    .line 170
    invoke-virtual {v5}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->cancelForwardedStream()V

    .line 171
    .line 172
    .line 173
    iput-boolean v1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->l:Z

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eq p1, v1, :cond_8

    .line 181
    .line 182
    const/4 v3, 0x3

    .line 183
    if-eq p1, v3, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    iput-boolean v0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 187
    .line 188
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->k:Z

    .line 189
    .line 190
    if-nez p1, :cond_d

    .line 191
    .line 192
    iget-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->l:Z

    .line 193
    .line 194
    if-nez p1, :cond_d

    .line 195
    .line 196
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j:Landroid/view/ScaleGestureDetector;

    .line 197
    .line 198
    const-string v0, "scaleDetector"

    .line 199
    .line 200
    if-eqz p1, :cond_c

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->j:Landroid/view/ScaleGestureDetector;

    .line 206
    .line 207
    if-eqz p1, :cond_b

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_d

    .line 214
    .line 215
    iget-object p0, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->i:Landroid/view/GestureDetector;

    .line 216
    .line 217
    if-eqz p0, :cond_a

    .line 218
    .line 219
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    const-string p0, "gestureDetector"

    .line 224
    .line 225
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v2

    .line 229
    :cond_b
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v2

    .line 233
    :cond_c
    invoke-static {v0}, Lqj;->v(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v2

    .line 237
    :cond_d
    :goto_4
    return v1

    .line 238
    :pswitch_0
    check-cast p0, La7;

    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    const/4 p2, 0x4

    .line 245
    if-ne p1, p2, :cond_11

    .line 246
    .line 247
    invoke-virtual {p0}, La7;->d()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_e

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide p1

    .line 258
    sget-wide v1, Ls8;->i:J

    .line 259
    .line 260
    sub-long/2addr p1, v1

    .line 261
    const-wide/16 v1, 0x1f4

    .line 262
    .line 263
    cmp-long p1, p1, v1

    .line 264
    .line 265
    if-gez p1, :cond_f

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_f
    iget-boolean p1, p0, La7;->f:Z

    .line 269
    .line 270
    if-eqz p1, :cond_10

    .line 271
    .line 272
    invoke-virtual {p0}, La7;->c()V

    .line 273
    .line 274
    .line 275
    :cond_10
    invoke-virtual {p0}, La7;->b()V

    .line 276
    .line 277
    .line 278
    :cond_11
    :goto_5
    return v0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
