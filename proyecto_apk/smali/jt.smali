.class public final Ljt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method public static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 54

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    float-to-double v4, v7

    .line 1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v12, v1

    mul-double v14, v12, v8

    move/from16 v6, p2

    move-wide/from16 v16, v4

    float-to-double v4, v6

    mul-double v18, v4, v10

    add-double v18, v18, v14

    float-to-double v14, v0

    div-double v18, v18, v14

    neg-float v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v10

    mul-double v20, v4, v8

    add-double v20, v20, v0

    float-to-double v0, v2

    div-double v20, v20, v0

    move-wide/from16 v22, v0

    float-to-double v0, v3

    mul-double/2addr v0, v8

    move-wide/from16 v24, v0

    move/from16 v0, p4

    float-to-double v1, v0

    mul-double v26, v1, v10

    add-double v26, v26, v24

    div-double v26, v26, v14

    neg-float v0, v3

    move-wide/from16 v24, v1

    float-to-double v0, v0

    mul-double/2addr v0, v10

    mul-double v24, v24, v8

    add-double v24, v24, v0

    div-double v24, v24, v22

    sub-double v0, v18, v26

    sub-double v28, v20, v24

    add-double v30, v18, v26

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v34, v20, v24

    div-double v34, v34, v32

    mul-double v36, v0, v0

    mul-double v38, v28, v28

    move-wide/from16 v40, v0

    add-double v0, v38, v36

    const-wide/16 v36, 0x0

    cmpl-double v2, v0, v36

    move/from16 v38, v2

    .line 4
    const-string v2, "PathParser"

    if-nez v38, :cond_0

    .line 5
    const-string v0, " Points are coincident"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    div-double v42, v38, v0

    const-wide/high16 v44, 0x3fd0000000000000L    # 0.25

    sub-double v42, v42, v44

    cmpg-double v44, v42, v36

    if-gez v44, :cond_1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Points are too far apart "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v4

    double-to-float v0, v0

    mul-float v5, p5, v0

    mul-float v0, v0, p6

    move/from16 v1, p1

    move/from16 v4, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move v2, v6

    move v6, v0

    move-object/from16 v0, p0

    .line 8
    invoke-static/range {v0 .. v9}, Ljt;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_1
    move/from16 v0, p9

    .line 9
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v6, v1, v40

    mul-double v1, v1, v28

    move/from16 v3, p8

    if-ne v3, v0, :cond_2

    sub-double v30, v30, v1

    add-double v34, v34, v6

    goto :goto_0

    :cond_2
    add-double v30, v30, v1

    sub-double v34, v34, v6

    :goto_0
    sub-double v1, v20, v34

    sub-double v6, v18, v30

    .line 10
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v6, v24, v34

    move-wide/from16 p1, v1

    sub-double v1, v26, v30

    .line 11
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, p1

    cmpl-double v3, v1, v36

    if-ltz v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eq v0, v7, :cond_5

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v3, :cond_4

    sub-double v1, v1, v18

    goto :goto_2

    :cond_4
    add-double v1, v1, v18

    :cond_5
    :goto_2
    mul-double v30, v30, v14

    mul-double v34, v34, v22

    mul-double v18, v30, v8

    mul-double v20, v34, v10

    sub-double v18, v18, v20

    mul-double v30, v30, v10

    mul-double v34, v34, v8

    add-double v34, v34, v30

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double v9, v1, v7

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v9, v9, v20

    .line 12
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    .line 13
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 14
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 15
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 16
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 p8, v7

    neg-double v6, v14

    mul-double v26, v6, v9

    mul-double v28, v26, v24

    mul-double v30, v22, v16

    mul-double v36, v30, v20

    sub-double v28, v28, v36

    mul-double v6, v6, v16

    mul-double v24, v24, v6

    mul-double v22, v22, v9

    mul-double v20, v20, v22

    add-double v20, v20, v24

    move-wide/from16 p4, v1

    int-to-double v1, v0

    div-double v1, p4, v1

    move-wide/from16 v24, v20

    move-wide/from16 v20, v12

    move-wide v11, v4

    const/4 v5, 0x0

    move-wide/from16 v3, p1

    :goto_3
    if-ge v5, v0, :cond_6

    add-double v36, v3, v1

    .line 17
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    .line 18
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v42

    mul-double v44, v14, v9

    mul-double v44, v44, v42

    add-double v44, v44, v18

    mul-double v46, v30, v40

    move v8, v0

    move-wide/from16 v48, v1

    sub-double v0, v44, v46

    mul-double v44, v14, v16

    mul-double v44, v44, v42

    add-double v44, v44, v34

    mul-double v46, v22, v40

    move-wide/from16 p1, v3

    add-double v2, v46, v44

    mul-double v44, v26, v40

    mul-double v46, v30, v42

    sub-double v44, v44, v46

    mul-double v40, v40, v6

    mul-double v42, v42, v22

    add-double v40, v42, v40

    sub-double v42, v36, p1

    div-double v46, v42, v32

    .line 19
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->tan(D)D

    move-result-wide v46

    .line 20
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v52, v46, v50

    mul-double v52, v52, v46

    add-double v52, v52, p8

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    sub-double v46, v46, v38

    mul-double v46, v46, v42

    div-double v46, v46, v50

    mul-double v28, v28, v46

    move v13, v5

    add-double v4, v28, v20

    mul-double v24, v24, v46

    add-double v11, v24, v11

    mul-double v20, v46, v44

    move-wide/from16 v24, v6

    sub-double v6, v0, v20

    mul-double v46, v46, v40

    move-wide/from16 v20, v9

    move v10, v8

    sub-double v8, v2, v46

    move/from16 v28, v10

    const/4 v10, 0x0

    move/from16 v29, v13

    move-object/from16 v13, p0

    .line 21
    invoke-virtual {v13, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v4, v4

    double-to-float v5, v11

    double-to-float v6, v6

    double-to-float v7, v8

    double-to-float v8, v0

    double-to-float v9, v2

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move-object/from16 p1, v13

    .line 22
    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v5, v29, 0x1

    move-wide v11, v2

    move-wide/from16 v9, v20

    move-wide/from16 v6, v24

    move-wide/from16 v3, v36

    move-wide/from16 v24, v40

    move-wide/from16 v20, v0

    move/from16 v0, v28

    move-wide/from16 v28, v44

    move-wide/from16 v1, v48

    goto/16 :goto_3

    :cond_6
    return-void
.end method

.method public static b([Ljt;Landroid/graphics/Path;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v11, 0x6

    .line 6
    new-array v12, v11, [F

    .line 7
    .line 8
    const/16 v13, 0x6d

    .line 9
    .line 10
    const/4 v14, 0x0

    .line 11
    move v2, v13

    .line 12
    move v15, v14

    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v15, v3, :cond_21

    .line 15
    .line 16
    aget-object v3, v0, v15

    .line 17
    .line 18
    iget-char v8, v3, Ljt;->a:C

    .line 19
    .line 20
    iget-object v9, v3, Ljt;->b:[F

    .line 21
    .line 22
    aget v3, v12, v14

    .line 23
    .line 24
    const/16 v16, 0x1

    .line 25
    .line 26
    aget v4, v12, v16

    .line 27
    .line 28
    const/16 v17, 0x2

    .line 29
    .line 30
    aget v5, v12, v17

    .line 31
    .line 32
    const/16 v18, 0x3

    .line 33
    .line 34
    aget v6, v12, v18

    .line 35
    .line 36
    const/16 v19, 0x4

    .line 37
    .line 38
    aget v7, v12, v19

    .line 39
    .line 40
    const/16 v20, 0x5

    .line 41
    .line 42
    aget v10, v12, v20

    .line 43
    .line 44
    sparse-switch v8, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    :goto_1
    move/from16 v21, v17

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :sswitch_0
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    .line 55
    .line 56
    move v3, v7

    .line 57
    move v5, v3

    .line 58
    move v4, v10

    .line 59
    move v6, v4

    .line 60
    goto :goto_1

    .line 61
    :sswitch_1
    move/from16 v21, v19

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :sswitch_2
    move/from16 v21, v16

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :sswitch_3
    move/from16 v21, v11

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :sswitch_4
    const/16 v21, 0x7

    .line 71
    .line 72
    :goto_2
    move/from16 v22, v4

    .line 73
    .line 74
    move/from16 v23, v7

    .line 75
    .line 76
    move/from16 v24, v10

    .line 77
    .line 78
    move v10, v3

    .line 79
    move v3, v14

    .line 80
    :goto_3
    array-length v4, v9

    .line 81
    if-ge v3, v4, :cond_20

    .line 82
    .line 83
    const/16 v4, 0x41

    .line 84
    .line 85
    if-eq v8, v4, :cond_1d

    .line 86
    .line 87
    const/16 v4, 0x43

    .line 88
    .line 89
    if-eq v8, v4, :cond_1c

    .line 90
    .line 91
    const/16 v11, 0x48

    .line 92
    .line 93
    if-eq v8, v11, :cond_1b

    .line 94
    .line 95
    const/16 v11, 0x51

    .line 96
    .line 97
    if-eq v8, v11, :cond_1a

    .line 98
    .line 99
    move/from16 v25, v14

    .line 100
    .line 101
    const/16 v14, 0x56

    .line 102
    .line 103
    if-eq v8, v14, :cond_19

    .line 104
    .line 105
    const/16 v14, 0x61

    .line 106
    .line 107
    if-eq v8, v14, :cond_16

    .line 108
    .line 109
    const/16 v14, 0x63

    .line 110
    .line 111
    if-eq v8, v14, :cond_15

    .line 112
    .line 113
    const/16 v7, 0x68

    .line 114
    .line 115
    if-eq v8, v7, :cond_14

    .line 116
    .line 117
    const/16 v7, 0x71

    .line 118
    .line 119
    if-eq v8, v7, :cond_13

    .line 120
    .line 121
    const/16 v4, 0x76

    .line 122
    .line 123
    if-eq v8, v4, :cond_12

    .line 124
    .line 125
    const/16 v4, 0x4c

    .line 126
    .line 127
    if-eq v8, v4, :cond_11

    .line 128
    .line 129
    const/16 v4, 0x4d

    .line 130
    .line 131
    if-eq v8, v4, :cond_f

    .line 132
    .line 133
    const/16 v4, 0x73

    .line 134
    .line 135
    const/16 v14, 0x53

    .line 136
    .line 137
    const/high16 v29, 0x40000000    # 2.0f

    .line 138
    .line 139
    if-eq v8, v14, :cond_c

    .line 140
    .line 141
    const/16 v14, 0x74

    .line 142
    .line 143
    const/16 v11, 0x54

    .line 144
    .line 145
    if-eq v8, v11, :cond_9

    .line 146
    .line 147
    const/16 v11, 0x6c

    .line 148
    .line 149
    if-eq v8, v11, :cond_8

    .line 150
    .line 151
    if-eq v8, v13, :cond_6

    .line 152
    .line 153
    if-eq v8, v4, :cond_3

    .line 154
    .line 155
    if-eq v8, v14, :cond_0

    .line 156
    .line 157
    move/from16 v28, v3

    .line 158
    .line 159
    :goto_4
    move-object/from16 v27, v9

    .line 160
    .line 161
    move/from16 v3, v22

    .line 162
    .line 163
    :goto_5
    move/from16 v22, v8

    .line 164
    .line 165
    goto/16 :goto_1b

    .line 166
    .line 167
    :cond_0
    if-eq v2, v7, :cond_2

    .line 168
    .line 169
    if-eq v2, v14, :cond_2

    .line 170
    .line 171
    const/16 v4, 0x51

    .line 172
    .line 173
    if-eq v2, v4, :cond_2

    .line 174
    .line 175
    const/16 v4, 0x54

    .line 176
    .line 177
    if-ne v2, v4, :cond_1

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_1
    const/4 v2, 0x0

    .line 181
    const/4 v7, 0x0

    .line 182
    goto :goto_7

    .line 183
    :cond_2
    :goto_6
    sub-float v7, v10, v5

    .line 184
    .line 185
    sub-float v2, v22, v6

    .line 186
    .line 187
    :goto_7
    aget v4, v9, v3

    .line 188
    .line 189
    add-int/lit8 v5, v3, 0x1

    .line 190
    .line 191
    aget v6, v9, v5

    .line 192
    .line 193
    invoke-virtual {v1, v7, v2, v4, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 194
    .line 195
    .line 196
    add-float/2addr v7, v10

    .line 197
    add-float v2, v22, v2

    .line 198
    .line 199
    aget v4, v9, v3

    .line 200
    .line 201
    add-float/2addr v10, v4

    .line 202
    aget v4, v9, v5

    .line 203
    .line 204
    add-float v22, v22, v4

    .line 205
    .line 206
    move v6, v2

    .line 207
    move/from16 v28, v3

    .line 208
    .line 209
    move v5, v7

    .line 210
    goto :goto_4

    .line 211
    :cond_3
    const/16 v7, 0x63

    .line 212
    .line 213
    if-eq v2, v7, :cond_5

    .line 214
    .line 215
    if-eq v2, v4, :cond_5

    .line 216
    .line 217
    const/16 v4, 0x43

    .line 218
    .line 219
    if-eq v2, v4, :cond_5

    .line 220
    .line 221
    const/16 v4, 0x53

    .line 222
    .line 223
    if-ne v2, v4, :cond_4

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_4
    const/4 v2, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    goto :goto_9

    .line 229
    :cond_5
    :goto_8
    sub-float v7, v10, v5

    .line 230
    .line 231
    sub-float v2, v22, v6

    .line 232
    .line 233
    move/from16 v30, v7

    .line 234
    .line 235
    move v7, v2

    .line 236
    move/from16 v2, v30

    .line 237
    .line 238
    :goto_9
    aget v4, v9, v3

    .line 239
    .line 240
    add-int/lit8 v11, v3, 0x1

    .line 241
    .line 242
    aget v5, v9, v11

    .line 243
    .line 244
    add-int/lit8 v14, v3, 0x2

    .line 245
    .line 246
    aget v6, v9, v14

    .line 247
    .line 248
    add-int/lit8 v26, v3, 0x3

    .line 249
    .line 250
    move/from16 v27, v3

    .line 251
    .line 252
    move v3, v7

    .line 253
    aget v7, v9, v26

    .line 254
    .line 255
    move/from16 v28, v27

    .line 256
    .line 257
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 258
    .line 259
    .line 260
    aget v2, v9, v28

    .line 261
    .line 262
    add-float/2addr v2, v10

    .line 263
    aget v3, v9, v11

    .line 264
    .line 265
    add-float v3, v22, v3

    .line 266
    .line 267
    aget v4, v9, v14

    .line 268
    .line 269
    add-float/2addr v10, v4

    .line 270
    aget v4, v9, v26

    .line 271
    .line 272
    :goto_a
    add-float v22, v22, v4

    .line 273
    .line 274
    move v5, v2

    .line 275
    move v6, v3

    .line 276
    goto :goto_4

    .line 277
    :cond_6
    move/from16 v28, v3

    .line 278
    .line 279
    aget v2, v9, v28

    .line 280
    .line 281
    add-float/2addr v10, v2

    .line 282
    add-int/lit8 v3, v28, 0x1

    .line 283
    .line 284
    aget v3, v9, v3

    .line 285
    .line 286
    add-float v22, v22, v3

    .line 287
    .line 288
    if-lez v28, :cond_7

    .line 289
    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    :cond_7
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v27, v9

    .line 299
    .line 300
    move/from16 v23, v10

    .line 301
    .line 302
    move/from16 v3, v22

    .line 303
    .line 304
    move/from16 v24, v3

    .line 305
    .line 306
    goto/16 :goto_5

    .line 307
    .line 308
    :cond_8
    move/from16 v28, v3

    .line 309
    .line 310
    aget v2, v9, v28

    .line 311
    .line 312
    add-int/lit8 v3, v28, 0x1

    .line 313
    .line 314
    aget v4, v9, v3

    .line 315
    .line 316
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 317
    .line 318
    .line 319
    aget v2, v9, v28

    .line 320
    .line 321
    add-float/2addr v10, v2

    .line 322
    aget v2, v9, v3

    .line 323
    .line 324
    :goto_b
    add-float v22, v22, v2

    .line 325
    .line 326
    goto/16 :goto_4

    .line 327
    .line 328
    :cond_9
    move/from16 v28, v3

    .line 329
    .line 330
    if-eq v2, v7, :cond_b

    .line 331
    .line 332
    if-eq v2, v14, :cond_b

    .line 333
    .line 334
    const/16 v4, 0x51

    .line 335
    .line 336
    if-eq v2, v4, :cond_b

    .line 337
    .line 338
    const/16 v4, 0x54

    .line 339
    .line 340
    if-ne v2, v4, :cond_a

    .line 341
    .line 342
    goto :goto_d

    .line 343
    :cond_a
    :goto_c
    move/from16 v2, v22

    .line 344
    .line 345
    goto :goto_e

    .line 346
    :cond_b
    :goto_d
    mul-float v10, v10, v29

    .line 347
    .line 348
    sub-float/2addr v10, v5

    .line 349
    mul-float v22, v22, v29

    .line 350
    .line 351
    sub-float v22, v22, v6

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :goto_e
    aget v3, v9, v28

    .line 355
    .line 356
    add-int/lit8 v4, v28, 0x1

    .line 357
    .line 358
    aget v5, v9, v4

    .line 359
    .line 360
    invoke-virtual {v1, v10, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 361
    .line 362
    .line 363
    aget v3, v9, v28

    .line 364
    .line 365
    aget v4, v9, v4

    .line 366
    .line 367
    move v6, v2

    .line 368
    move/from16 v22, v8

    .line 369
    .line 370
    move-object/from16 v27, v9

    .line 371
    .line 372
    move v5, v10

    .line 373
    move v10, v3

    .line 374
    move v3, v4

    .line 375
    goto/16 :goto_1b

    .line 376
    .line 377
    :cond_c
    move/from16 v28, v3

    .line 378
    .line 379
    const/16 v7, 0x63

    .line 380
    .line 381
    if-eq v2, v7, :cond_e

    .line 382
    .line 383
    if-eq v2, v4, :cond_e

    .line 384
    .line 385
    const/16 v4, 0x43

    .line 386
    .line 387
    if-eq v2, v4, :cond_e

    .line 388
    .line 389
    const/16 v4, 0x53

    .line 390
    .line 391
    if-ne v2, v4, :cond_d

    .line 392
    .line 393
    goto :goto_10

    .line 394
    :cond_d
    :goto_f
    move v2, v10

    .line 395
    move/from16 v3, v22

    .line 396
    .line 397
    goto :goto_11

    .line 398
    :cond_e
    :goto_10
    mul-float v10, v10, v29

    .line 399
    .line 400
    sub-float/2addr v10, v5

    .line 401
    mul-float v22, v22, v29

    .line 402
    .line 403
    sub-float v22, v22, v6

    .line 404
    .line 405
    goto :goto_f

    .line 406
    :goto_11
    aget v4, v9, v28

    .line 407
    .line 408
    add-int/lit8 v10, v28, 0x1

    .line 409
    .line 410
    aget v5, v9, v10

    .line 411
    .line 412
    add-int/lit8 v11, v28, 0x2

    .line 413
    .line 414
    aget v6, v9, v11

    .line 415
    .line 416
    add-int/lit8 v14, v28, 0x3

    .line 417
    .line 418
    aget v7, v9, v14

    .line 419
    .line 420
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 421
    .line 422
    .line 423
    aget v2, v9, v28

    .line 424
    .line 425
    aget v3, v9, v10

    .line 426
    .line 427
    aget v4, v9, v11

    .line 428
    .line 429
    aget v5, v9, v14

    .line 430
    .line 431
    move v6, v3

    .line 432
    move v10, v4

    .line 433
    move v3, v5

    .line 434
    move/from16 v22, v8

    .line 435
    .line 436
    move-object/from16 v27, v9

    .line 437
    .line 438
    :goto_12
    move v5, v2

    .line 439
    goto/16 :goto_1b

    .line 440
    .line 441
    :cond_f
    move/from16 v28, v3

    .line 442
    .line 443
    aget v2, v9, v28

    .line 444
    .line 445
    add-int/lit8 v3, v28, 0x1

    .line 446
    .line 447
    aget v3, v9, v3

    .line 448
    .line 449
    if-lez v28, :cond_10

    .line 450
    .line 451
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    .line 453
    .line 454
    :goto_13
    move v10, v2

    .line 455
    :goto_14
    move/from16 v22, v8

    .line 456
    .line 457
    move-object/from16 v27, v9

    .line 458
    .line 459
    goto/16 :goto_1b

    .line 460
    .line 461
    :cond_10
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 462
    .line 463
    .line 464
    move v10, v2

    .line 465
    move/from16 v23, v10

    .line 466
    .line 467
    move/from16 v24, v3

    .line 468
    .line 469
    goto :goto_14

    .line 470
    :cond_11
    move/from16 v28, v3

    .line 471
    .line 472
    aget v2, v9, v28

    .line 473
    .line 474
    add-int/lit8 v3, v28, 0x1

    .line 475
    .line 476
    aget v4, v9, v3

    .line 477
    .line 478
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 479
    .line 480
    .line 481
    aget v2, v9, v28

    .line 482
    .line 483
    aget v3, v9, v3

    .line 484
    .line 485
    goto :goto_13

    .line 486
    :cond_12
    move/from16 v28, v3

    .line 487
    .line 488
    aget v2, v9, v28

    .line 489
    .line 490
    const/4 v3, 0x0

    .line 491
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 492
    .line 493
    .line 494
    aget v2, v9, v28

    .line 495
    .line 496
    goto/16 :goto_b

    .line 497
    .line 498
    :cond_13
    move/from16 v28, v3

    .line 499
    .line 500
    aget v2, v9, v28

    .line 501
    .line 502
    add-int/lit8 v3, v28, 0x1

    .line 503
    .line 504
    aget v4, v9, v3

    .line 505
    .line 506
    add-int/lit8 v5, v28, 0x2

    .line 507
    .line 508
    aget v6, v9, v5

    .line 509
    .line 510
    add-int/lit8 v7, v28, 0x3

    .line 511
    .line 512
    aget v11, v9, v7

    .line 513
    .line 514
    invoke-virtual {v1, v2, v4, v6, v11}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 515
    .line 516
    .line 517
    aget v2, v9, v28

    .line 518
    .line 519
    add-float/2addr v2, v10

    .line 520
    aget v3, v9, v3

    .line 521
    .line 522
    add-float v3, v22, v3

    .line 523
    .line 524
    aget v4, v9, v5

    .line 525
    .line 526
    add-float/2addr v10, v4

    .line 527
    aget v4, v9, v7

    .line 528
    .line 529
    goto/16 :goto_a

    .line 530
    .line 531
    :cond_14
    move/from16 v28, v3

    .line 532
    .line 533
    aget v2, v9, v28

    .line 534
    .line 535
    const/4 v3, 0x0

    .line 536
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 537
    .line 538
    .line 539
    aget v2, v9, v28

    .line 540
    .line 541
    add-float/2addr v10, v2

    .line 542
    goto/16 :goto_4

    .line 543
    .line 544
    :cond_15
    move/from16 v28, v3

    .line 545
    .line 546
    aget v2, v9, v28

    .line 547
    .line 548
    add-int/lit8 v3, v28, 0x1

    .line 549
    .line 550
    aget v3, v9, v3

    .line 551
    .line 552
    add-int/lit8 v11, v28, 0x2

    .line 553
    .line 554
    aget v4, v9, v11

    .line 555
    .line 556
    add-int/lit8 v14, v28, 0x3

    .line 557
    .line 558
    aget v5, v9, v14

    .line 559
    .line 560
    add-int/lit8 v26, v28, 0x4

    .line 561
    .line 562
    aget v6, v9, v26

    .line 563
    .line 564
    add-int/lit8 v27, v28, 0x5

    .line 565
    .line 566
    aget v7, v9, v27

    .line 567
    .line 568
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 569
    .line 570
    .line 571
    aget v1, v9, v11

    .line 572
    .line 573
    add-float/2addr v1, v10

    .line 574
    aget v2, v9, v14

    .line 575
    .line 576
    add-float v2, v22, v2

    .line 577
    .line 578
    aget v3, v9, v26

    .line 579
    .line 580
    add-float/2addr v10, v3

    .line 581
    aget v3, v9, v27

    .line 582
    .line 583
    add-float v22, v22, v3

    .line 584
    .line 585
    move v5, v1

    .line 586
    move v6, v2

    .line 587
    goto/16 :goto_4

    .line 588
    .line 589
    :cond_16
    move/from16 v28, v3

    .line 590
    .line 591
    add-int/lit8 v11, v28, 0x5

    .line 592
    .line 593
    aget v1, v9, v11

    .line 594
    .line 595
    add-float v4, v1, v10

    .line 596
    .line 597
    add-int/lit8 v14, v28, 0x6

    .line 598
    .line 599
    aget v1, v9, v14

    .line 600
    .line 601
    add-float v5, v1, v22

    .line 602
    .line 603
    aget v6, v9, v28

    .line 604
    .line 605
    add-int/lit8 v3, v28, 0x1

    .line 606
    .line 607
    aget v7, v9, v3

    .line 608
    .line 609
    add-int/lit8 v3, v28, 0x2

    .line 610
    .line 611
    aget v1, v9, v3

    .line 612
    .line 613
    add-int/lit8 v3, v28, 0x3

    .line 614
    .line 615
    aget v2, v9, v3

    .line 616
    .line 617
    const/16 v26, 0x0

    .line 618
    .line 619
    cmpl-float v2, v2, v26

    .line 620
    .line 621
    if-eqz v2, :cond_17

    .line 622
    .line 623
    move-object v2, v9

    .line 624
    move/from16 v9, v16

    .line 625
    .line 626
    goto :goto_15

    .line 627
    :cond_17
    move-object v2, v9

    .line 628
    move/from16 v9, v25

    .line 629
    .line 630
    :goto_15
    add-int/lit8 v3, v28, 0x4

    .line 631
    .line 632
    aget v3, v2, v3

    .line 633
    .line 634
    cmpl-float v3, v3, v26

    .line 635
    .line 636
    move-object/from16 v27, v2

    .line 637
    .line 638
    move v2, v10

    .line 639
    if-eqz v3, :cond_18

    .line 640
    .line 641
    move/from16 v10, v16

    .line 642
    .line 643
    :goto_16
    move/from16 v3, v22

    .line 644
    .line 645
    move/from16 v22, v8

    .line 646
    .line 647
    move v8, v1

    .line 648
    move-object/from16 v1, p1

    .line 649
    .line 650
    goto :goto_17

    .line 651
    :cond_18
    move/from16 v10, v25

    .line 652
    .line 653
    goto :goto_16

    .line 654
    :goto_17
    invoke-static/range {v1 .. v10}, Ljt;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 655
    .line 656
    .line 657
    aget v4, v27, v11

    .line 658
    .line 659
    add-float v10, v2, v4

    .line 660
    .line 661
    aget v2, v27, v14

    .line 662
    .line 663
    add-float/2addr v2, v3

    .line 664
    move v3, v2

    .line 665
    move v6, v3

    .line 666
    move v5, v10

    .line 667
    goto/16 :goto_1b

    .line 668
    .line 669
    :cond_19
    move/from16 v28, v3

    .line 670
    .line 671
    move/from16 v22, v8

    .line 672
    .line 673
    move-object/from16 v27, v9

    .line 674
    .line 675
    move v2, v10

    .line 676
    aget v3, v27, v28

    .line 677
    .line 678
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 679
    .line 680
    .line 681
    aget v3, v27, v28

    .line 682
    .line 683
    goto/16 :goto_1b

    .line 684
    .line 685
    :cond_1a
    move/from16 v28, v3

    .line 686
    .line 687
    move/from16 v22, v8

    .line 688
    .line 689
    move-object/from16 v27, v9

    .line 690
    .line 691
    move/from16 v25, v14

    .line 692
    .line 693
    aget v2, v27, v28

    .line 694
    .line 695
    add-int/lit8 v3, v28, 0x1

    .line 696
    .line 697
    aget v4, v27, v3

    .line 698
    .line 699
    add-int/lit8 v5, v28, 0x2

    .line 700
    .line 701
    aget v6, v27, v5

    .line 702
    .line 703
    add-int/lit8 v7, v28, 0x3

    .line 704
    .line 705
    aget v8, v27, v7

    .line 706
    .line 707
    invoke-virtual {v1, v2, v4, v6, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 708
    .line 709
    .line 710
    aget v2, v27, v28

    .line 711
    .line 712
    aget v3, v27, v3

    .line 713
    .line 714
    aget v4, v27, v5

    .line 715
    .line 716
    aget v5, v27, v7

    .line 717
    .line 718
    move v6, v3

    .line 719
    move v10, v4

    .line 720
    move v3, v5

    .line 721
    goto/16 :goto_12

    .line 722
    .line 723
    :cond_1b
    move/from16 v28, v3

    .line 724
    .line 725
    move-object/from16 v27, v9

    .line 726
    .line 727
    move/from16 v25, v14

    .line 728
    .line 729
    move/from16 v3, v22

    .line 730
    .line 731
    move/from16 v22, v8

    .line 732
    .line 733
    aget v2, v27, v28

    .line 734
    .line 735
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 736
    .line 737
    .line 738
    aget v2, v27, v28

    .line 739
    .line 740
    move v10, v2

    .line 741
    goto/16 :goto_1b

    .line 742
    .line 743
    :cond_1c
    move/from16 v28, v3

    .line 744
    .line 745
    move/from16 v22, v8

    .line 746
    .line 747
    move-object/from16 v27, v9

    .line 748
    .line 749
    move/from16 v25, v14

    .line 750
    .line 751
    aget v2, v27, v28

    .line 752
    .line 753
    add-int/lit8 v3, v28, 0x1

    .line 754
    .line 755
    aget v3, v27, v3

    .line 756
    .line 757
    add-int/lit8 v8, v28, 0x2

    .line 758
    .line 759
    aget v4, v27, v8

    .line 760
    .line 761
    add-int/lit8 v9, v28, 0x3

    .line 762
    .line 763
    aget v5, v27, v9

    .line 764
    .line 765
    add-int/lit8 v10, v28, 0x4

    .line 766
    .line 767
    aget v6, v27, v10

    .line 768
    .line 769
    add-int/lit8 v11, v28, 0x5

    .line 770
    .line 771
    aget v7, v27, v11

    .line 772
    .line 773
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 774
    .line 775
    .line 776
    aget v1, v27, v10

    .line 777
    .line 778
    aget v2, v27, v11

    .line 779
    .line 780
    aget v3, v27, v8

    .line 781
    .line 782
    aget v4, v27, v9

    .line 783
    .line 784
    move v10, v1

    .line 785
    move v5, v3

    .line 786
    move v6, v4

    .line 787
    move v3, v2

    .line 788
    goto :goto_1b

    .line 789
    :cond_1d
    move/from16 v28, v3

    .line 790
    .line 791
    move-object/from16 v27, v9

    .line 792
    .line 793
    move v2, v10

    .line 794
    move/from16 v25, v14

    .line 795
    .line 796
    move/from16 v3, v22

    .line 797
    .line 798
    move/from16 v22, v8

    .line 799
    .line 800
    add-int/lit8 v11, v28, 0x5

    .line 801
    .line 802
    aget v4, v27, v11

    .line 803
    .line 804
    add-int/lit8 v14, v28, 0x6

    .line 805
    .line 806
    aget v5, v27, v14

    .line 807
    .line 808
    aget v6, v27, v28

    .line 809
    .line 810
    add-int/lit8 v1, v28, 0x1

    .line 811
    .line 812
    aget v7, v27, v1

    .line 813
    .line 814
    add-int/lit8 v1, v28, 0x2

    .line 815
    .line 816
    aget v8, v27, v1

    .line 817
    .line 818
    add-int/lit8 v1, v28, 0x3

    .line 819
    .line 820
    aget v1, v27, v1

    .line 821
    .line 822
    const/16 v26, 0x0

    .line 823
    .line 824
    cmpl-float v1, v1, v26

    .line 825
    .line 826
    if-eqz v1, :cond_1e

    .line 827
    .line 828
    move/from16 v9, v16

    .line 829
    .line 830
    goto :goto_18

    .line 831
    :cond_1e
    move/from16 v9, v25

    .line 832
    .line 833
    :goto_18
    add-int/lit8 v1, v28, 0x4

    .line 834
    .line 835
    aget v1, v27, v1

    .line 836
    .line 837
    cmpl-float v1, v1, v26

    .line 838
    .line 839
    if-eqz v1, :cond_1f

    .line 840
    .line 841
    move/from16 v10, v16

    .line 842
    .line 843
    :goto_19
    move-object/from16 v1, p1

    .line 844
    .line 845
    goto :goto_1a

    .line 846
    :cond_1f
    move/from16 v10, v25

    .line 847
    .line 848
    goto :goto_19

    .line 849
    :goto_1a
    invoke-static/range {v1 .. v10}, Ljt;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 850
    .line 851
    .line 852
    aget v1, v27, v11

    .line 853
    .line 854
    aget v2, v27, v14

    .line 855
    .line 856
    move v5, v1

    .line 857
    move v10, v5

    .line 858
    move v3, v2

    .line 859
    move v6, v3

    .line 860
    :goto_1b
    add-int v1, v28, v21

    .line 861
    .line 862
    move/from16 v2, v22

    .line 863
    .line 864
    move v8, v2

    .line 865
    move/from16 v14, v25

    .line 866
    .line 867
    move-object/from16 v9, v27

    .line 868
    .line 869
    const/4 v11, 0x6

    .line 870
    move/from16 v22, v3

    .line 871
    .line 872
    move v3, v1

    .line 873
    move-object/from16 v1, p1

    .line 874
    .line 875
    goto/16 :goto_3

    .line 876
    .line 877
    :cond_20
    move v2, v10

    .line 878
    move/from16 v25, v14

    .line 879
    .line 880
    move/from16 v3, v22

    .line 881
    .line 882
    aput v2, v12, v25

    .line 883
    .line 884
    aput v3, v12, v16

    .line 885
    .line 886
    aput v5, v12, v17

    .line 887
    .line 888
    aput v6, v12, v18

    .line 889
    .line 890
    aput v23, v12, v19

    .line 891
    .line 892
    aput v24, v12, v20

    .line 893
    .line 894
    aget-object v1, v0, v15

    .line 895
    .line 896
    iget-char v2, v1, Ljt;->a:C

    .line 897
    .line 898
    add-int/lit8 v15, v15, 0x1

    .line 899
    .line 900
    move-object/from16 v1, p1

    .line 901
    .line 902
    const/4 v11, 0x6

    .line 903
    goto/16 :goto_0

    .line 904
    .line 905
    :cond_21
    return-void

    .line 906
    nop

    .line 907
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_4
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
