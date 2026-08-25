.class public final synthetic Lxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/MirrorAccessibilityService;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxp;->a:I

    iput-object p1, p0, Lxp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

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
    iget v1, v0, Lxp;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v0, v0, Lxp;->b:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->m:Z

    .line 19
    .line 20
    sget v3, Lb00;->c:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    sget v4, Lb00;->d:I

    .line 24
    .line 25
    int-to-float v4, v4

    .line 26
    const/4 v5, 0x0

    .line 27
    cmpg-float v6, v3, v5

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_1
    cmpg-float v6, v4, v5

    .line 34
    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const v7, 0x3f4ccccd    # 0.8f

    .line 44
    .line 45
    .line 46
    mul-float/2addr v7, v6

    .line 47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const/4 v9, 0x5

    .line 56
    const/high16 v10, 0x41200000    # 10.0f

    .line 57
    .line 58
    invoke-static {v9, v10, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/high16 v10, 0x40000000    # 2.0f

    .line 63
    .line 64
    mul-float/2addr v8, v10

    .line 65
    sub-float/2addr v6, v8

    .line 66
    cmpg-float v8, v6, v5

    .line 67
    .line 68
    if-gez v8, :cond_3

    .line 69
    .line 70
    move v6, v5

    .line 71
    :cond_3
    cmpl-float v8, v7, v6

    .line 72
    .line 73
    if-lez v8, :cond_4

    .line 74
    .line 75
    move v7, v6

    .line 76
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/high16 v8, 0x42080000    # 34.0f

    .line 85
    .line 86
    invoke-static {v9, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const v8, 0x3f666666    # 0.9f

    .line 91
    .line 92
    .line 93
    mul-float/2addr v8, v7

    .line 94
    cmpl-float v9, v6, v8

    .line 95
    .line 96
    if-lez v9, :cond_5

    .line 97
    .line 98
    move v6, v8

    .line 99
    :cond_5
    iget v8, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->n:F

    .line 100
    .line 101
    const/high16 v9, 0x3f800000    # 1.0f

    .line 102
    .line 103
    sub-float v11, v8, v9

    .line 104
    .line 105
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    const v12, 0x3c23d70a    # 0.01f

    .line 110
    .line 111
    .line 112
    cmpg-float v11, v11, v12

    .line 113
    .line 114
    if-gez v11, :cond_6

    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_6
    cmpl-float v11, v8, v9

    .line 119
    .line 120
    if-lez v11, :cond_7

    .line 121
    .line 122
    move v11, v6

    .line 123
    goto :goto_0

    .line 124
    :cond_7
    move v11, v7

    .line 125
    :goto_0
    mul-float/2addr v8, v11

    .line 126
    invoke-static {v8, v6, v7}, Lgn;->i(FFF)F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    cmpg-float v7, v11, v6

    .line 131
    .line 132
    if-nez v7, :cond_8

    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_8
    div-float/2addr v11, v10

    .line 137
    div-float/2addr v6, v10

    .line 138
    cmpl-float v7, v4, v3

    .line 139
    .line 140
    if-ltz v7, :cond_9

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_9
    move v2, v1

    .line 144
    :goto_1
    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iget v7, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->o:F

    .line 149
    .line 150
    sub-float/2addr v3, v9

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    move v8, v5

    .line 154
    goto :goto_2

    .line 155
    :cond_a
    move v8, v1

    .line 156
    :goto_2
    invoke-static {v7, v3, v8}, Lem;->b(FFF)F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iget v7, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->q:F

    .line 161
    .line 162
    sub-float/2addr v4, v9

    .line 163
    if-eqz v2, :cond_b

    .line 164
    .line 165
    move v5, v1

    .line 166
    :cond_b
    invoke-static {v7, v4, v5}, Lem;->b(FFF)F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    new-instance v13, Landroid/graphics/Path;

    .line 171
    .line 172
    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 173
    .line 174
    .line 175
    if-eqz v2, :cond_c

    .line 176
    .line 177
    sub-float v4, v1, v11

    .line 178
    .line 179
    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    .line 181
    .line 182
    sub-float v4, v1, v6

    .line 183
    .line 184
    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_c
    sub-float v4, v3, v11

    .line 189
    .line 190
    invoke-virtual {v13, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    .line 192
    .line 193
    sub-float v4, v3, v6

    .line 194
    .line 195
    invoke-virtual {v13, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    .line 197
    .line 198
    :goto_3
    new-instance v4, Landroid/graphics/Path;

    .line 199
    .line 200
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 201
    .line 202
    .line 203
    if-eqz v2, :cond_d

    .line 204
    .line 205
    add-float/2addr v11, v1

    .line 206
    invoke-virtual {v4, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 207
    .line 208
    .line 209
    add-float/2addr v1, v6

    .line 210
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_d
    add-float/2addr v11, v3

    .line 215
    invoke-virtual {v4, v11, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    .line 217
    .line 218
    add-float/2addr v3, v6

    .line 219
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    .line 221
    .line 222
    :goto_4
    :try_start_0
    new-instance v1, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 223
    .line 224
    invoke-direct {v1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    new-instance v12, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 228
    .line 229
    const-wide/16 v14, 0x0

    .line 230
    .line 231
    const-wide/16 v16, 0xc8

    .line 232
    .line 233
    invoke-direct/range {v12 .. v17}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v12}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v14, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 241
    .line 242
    const-wide/16 v16, 0x0

    .line 243
    .line 244
    const-wide/16 v18, 0xc8

    .line 245
    .line 246
    move-object v15, v4

    .line 247
    invoke-direct/range {v14 .. v19}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v14}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v2

    .line 265
    sput-wide v2, Ls8;->i:J

    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    invoke-virtual {v0, v1, v2, v2}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .line 270
    .line 271
    :catchall_0
    :goto_5
    return-void

    .line 272
    :pswitch_0
    iget-boolean v1, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->e:Z

    .line 273
    .line 274
    if-eqz v1, :cond_e

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    .line 279
    const/16 v2, 0x1a

    .line 280
    .line 281
    if-lt v1, v2, :cond_f

    .line 282
    .line 283
    invoke-virtual {v0}, Lidv/lzn/screenonauto/MirrorAccessibilityService;->c()V

    .line 284
    .line 285
    .line 286
    :cond_f
    :goto_6
    return-void

    .line 287
    :pswitch_1
    sget-object v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 288
    .line 289
    const/4 v1, 0x3

    .line 290
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_2
    sget-object v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_3
    sget-object v1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 301
    .line 302
    const/4 v1, 0x2

    .line 303
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
