.class public final Lr3;
.super Lt3;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lw3;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw3;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr3;->c:I

    .line 3
    .line 4
    iput-object p1, p0, Lr3;->d:Lw3;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lt3;-><init>(Lw3;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "power"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/PowerManager;

    .line 20
    .line 21
    iput-object p1, p0, Lr3;->e:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lw3;Lv5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr3;->c:I

    .line 24
    iput-object p1, p0, Lr3;->d:Lw3;

    invoke-direct {p0, p1}, Lt3;-><init>(Lw3;)V

    .line 25
    iput-object p2, p0, Lr3;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    iget p0, p0, Lr3;->c:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.action.TIME_SET"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.TIME_TICK"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lr3;->c:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v0, v0, Lr3;->e:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Lv5;

    .line 13
    .line 14
    iget-object v1, v0, Lv5;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ls50;

    .line 17
    .line 18
    iget-object v4, v0, Lv5;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Landroid/location/LocationManager;

    .line 21
    .line 22
    iget-wide v5, v1, Ls50;->b:J

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    cmp-long v5, v5, v7

    .line 29
    .line 30
    if-lez v5, :cond_0

    .line 31
    .line 32
    iget-boolean v0, v1, Ls50;->a:Z

    .line 33
    .line 34
    goto/16 :goto_8

    .line 35
    .line 36
    :cond_0
    iget-object v0, v0, Lv5;->d:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v5, v0

    .line 39
    check-cast v5, Landroid/content/Context;

    .line 40
    .line 41
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 42
    .line 43
    invoke-static {v5, v0}, Lgn;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v6, "Failed to get last known location"

    .line 48
    .line 49
    const-string v7, "TwilightManager"

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string v0, "network"

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    move-object v0, v8

    .line 72
    :goto_0
    move-object v9, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v9, v8

    .line 75
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 76
    .line 77
    invoke-static {v5, v0}, Lgn;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    const-string v0, "gps"

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 92
    .line 93
    .line 94
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 101
    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    cmp-long v0, v4, v10

    .line 113
    .line 114
    if-lez v0, :cond_5

    .line 115
    .line 116
    :goto_3
    move-object v9, v8

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v8, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 122
    if-eqz v9, :cond_c

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v11

    .line 128
    sget-object v4, Lr50;->d:Lr50;

    .line 129
    .line 130
    if-nez v4, :cond_6

    .line 131
    .line 132
    new-instance v4, Lr50;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    sput-object v4, Lr50;->d:Lr50;

    .line 138
    .line 139
    :cond_6
    sget-object v13, Lr50;->d:Lr50;

    .line 140
    .line 141
    const-wide/32 v4, 0x5265c00

    .line 142
    .line 143
    .line 144
    sub-long v14, v11, v4

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 147
    .line 148
    .line 149
    move-result-wide v16

    .line 150
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 151
    .line 152
    .line 153
    move-result-wide v18

    .line 154
    invoke-virtual/range {v13 .. v19}, Lr50;->a(JDD)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 162
    .line 163
    .line 164
    move-result-wide v15

    .line 165
    move-object v10, v13

    .line 166
    move-wide v13, v6

    .line 167
    invoke-virtual/range {v10 .. v16}, Lr50;->a(JDD)V

    .line 168
    .line 169
    .line 170
    move-object v13, v10

    .line 171
    iget v6, v13, Lr50;->c:I

    .line 172
    .line 173
    if-ne v6, v3, :cond_7

    .line 174
    .line 175
    move v0, v3

    .line 176
    :cond_7
    iget-wide v6, v13, Lr50;->b:J

    .line 177
    .line 178
    iget-wide v14, v13, Lr50;->a:J

    .line 179
    .line 180
    add-long/2addr v4, v11

    .line 181
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 182
    .line 183
    .line 184
    move-result-wide v16

    .line 185
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 186
    .line 187
    .line 188
    move-result-wide v18

    .line 189
    move-wide/from16 v20, v14

    .line 190
    .line 191
    move-wide v14, v4

    .line 192
    move-wide/from16 v4, v20

    .line 193
    .line 194
    invoke-virtual/range {v13 .. v19}, Lr50;->a(JDD)V

    .line 195
    .line 196
    .line 197
    iget-wide v8, v13, Lr50;->b:J

    .line 198
    .line 199
    const-wide/16 v13, -0x1

    .line 200
    .line 201
    cmp-long v10, v6, v13

    .line 202
    .line 203
    if-eqz v10, :cond_b

    .line 204
    .line 205
    cmp-long v10, v4, v13

    .line 206
    .line 207
    if-nez v10, :cond_8

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_8
    cmp-long v10, v11, v4

    .line 211
    .line 212
    if-lez v10, :cond_9

    .line 213
    .line 214
    move-wide v6, v8

    .line 215
    goto :goto_5

    .line 216
    :cond_9
    cmp-long v8, v11, v6

    .line 217
    .line 218
    if-lez v8, :cond_a

    .line 219
    .line 220
    move-wide v6, v4

    .line 221
    :cond_a
    :goto_5
    const-wide/32 v4, 0xea60

    .line 222
    .line 223
    .line 224
    add-long/2addr v6, v4

    .line 225
    goto :goto_7

    .line 226
    :cond_b
    :goto_6
    const-wide/32 v4, 0x2932e00

    .line 227
    .line 228
    .line 229
    add-long v6, v11, v4

    .line 230
    .line 231
    :goto_7
    iput-boolean v0, v1, Ls50;->a:Z

    .line 232
    .line 233
    iput-wide v6, v1, Ls50;->b:J

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_c
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 237
    .line 238
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const/16 v4, 0xb

    .line 246
    .line 247
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    const/4 v4, 0x6

    .line 252
    if-lt v1, v4, :cond_d

    .line 253
    .line 254
    const/16 v4, 0x16

    .line 255
    .line 256
    if-lt v1, v4, :cond_e

    .line 257
    .line 258
    :cond_d
    move v0, v3

    .line 259
    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_f
    move v2, v3

    .line 263
    :goto_9
    return v2

    .line 264
    :pswitch_0
    check-cast v0, Landroid/os/PowerManager;

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_10

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_10
    move v2, v3

    .line 274
    :goto_a
    return v2

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 2

    .line 1
    iget v0, p0, Lr3;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lr3;->d:Lw3;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v1}, Lw3;->p(ZZ)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lw3;->p(ZZ)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
