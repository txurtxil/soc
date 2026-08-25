.class public final Lei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;

.field public final d:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lei;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lei;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lei;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lei;->d:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    iput-object p2, p0, Lei;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    iput-boolean p3, p0, Lei;->b:Z

    .line 16
    .line 17
    return-void
.end method

.method public static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "SHA256"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string v2, "CarApp.Val"

    .line 15
    .line 16
    const-string v3, "Could not find SHA256 hash algorithm"

    .line 17
    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    move-object v1, v0

    .line 22
    :goto_0
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    array-length v1, p0

    .line 35
    mul-int/lit8 v1, v1, 0x3

    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    array-length v1, p0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, v1, :cond_1

    .line 45
    .line 46
    aget-byte v3, p0, v2

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "%02x"

    .line 57
    .line 58
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method


# virtual methods
.method public final b(Ln2;)Z
    .locals 12

    .line 1
    iget v0, p1, Ln2;->b:I

    .line 2
    .line 3
    iget-object v1, p1, Ln2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "CarApp.Val"

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v5, "Evaluating "

    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-boolean v4, p0, Lei;->b:Z

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const-string p0, "Accepted - Validator disabled, all hosts allowed"

    .line 45
    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return v5

    .line 50
    :cond_2
    iget-object v4, p0, Lei;->c:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Landroid/util/Pair;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    if-nez v6, :cond_3

    .line 60
    .line 61
    :goto_0
    move-object v6, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eq v8, v0, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Ljava/lang/Boolean;

    .line 77
    .line 78
    :goto_1
    if-eqz v6, :cond_5

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0

    .line 85
    :cond_5
    const-string v6, " not found"

    .line 86
    .line 87
    const-string v8, "Package "

    .line 88
    .line 89
    const-string v9, "PackageManager is null. Package info cannot be found for package "

    .line 90
    .line 91
    const/16 v10, 0x1c

    .line 92
    .line 93
    :try_start_0
    iget-object v11, p0, Lei;->d:Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    if-nez v11, :cond_6

    .line 96
    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :goto_2
    move-object v9, v7

    .line 113
    goto :goto_4

    .line 114
    :catch_0
    move-exception v9

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    if-lt v9, v10, :cond_7

    .line 119
    .line 120
    const v9, 0x8001000

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    const/16 v9, 0x1040

    .line 129
    .line 130
    invoke-virtual {v11, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_4

    .line 135
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-static {v2, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_4
    const/4 v11, 0x0

    .line 155
    if-nez v9, :cond_8

    .line 156
    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p1, "Rejected - package name "

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :goto_5
    move v5, v11

    .line 178
    goto/16 :goto_d

    .line 179
    .line 180
    :cond_8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 181
    .line 182
    if-lt v6, v10, :cond_9

    .line 183
    .line 184
    invoke-static {v9}, Ldi;->a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    goto :goto_6

    .line 189
    :cond_9
    iget-object v6, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 190
    .line 191
    if-eqz v6, :cond_b

    .line 192
    .line 193
    array-length v10, v6

    .line 194
    if-eq v10, v5, :cond_a

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move-object v7, v6

    .line 198
    :cond_b
    :goto_6
    if-eqz v7, :cond_18

    .line 199
    .line 200
    array-length v6, v7

    .line 201
    if-nez v6, :cond_c

    .line 202
    .line 203
    goto/16 :goto_c

    .line 204
    .line 205
    :cond_c
    iget-object v6, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    .line 207
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 208
    .line 209
    if-ne v6, v0, :cond_17

    .line 210
    .line 211
    iget-object p1, v9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 212
    .line 213
    if-eqz p1, :cond_f

    .line 214
    .line 215
    iget-object p1, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 216
    .line 217
    if-nez p1, :cond_d

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_d
    move p1, v11

    .line 221
    :goto_7
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 222
    .line 223
    array-length v10, v8

    .line 224
    if-ge p1, v10, :cond_f

    .line 225
    .line 226
    aget v8, v8, p1

    .line 227
    .line 228
    and-int/lit8 v8, v8, 0x2

    .line 229
    .line 230
    if-eqz v8, :cond_e

    .line 231
    .line 232
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 233
    .line 234
    array-length v10, v8

    .line 235
    if-ge p1, v10, :cond_e

    .line 236
    .line 237
    aget-object v8, v8, p1

    .line 238
    .line 239
    const-string v10, "android.car.permission.TEMPLATE_RENDERER"

    .line 240
    .line 241
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_e

    .line 246
    .line 247
    move p1, v5

    .line 248
    goto :goto_9

    .line 249
    :cond_e
    add-int/lit8 p1, p1, 0x1

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_f
    :goto_8
    move p1, v11

    .line 253
    :goto_9
    iget-object p0, p0, Lei;->a:Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Ljava/util/List;

    .line 260
    .line 261
    if-nez p0, :cond_11

    .line 262
    .line 263
    :cond_10
    move p0, v11

    .line 264
    goto :goto_b

    .line 265
    :cond_11
    array-length v8, v7

    .line 266
    move v9, v11

    .line 267
    :goto_a
    if-ge v9, v8, :cond_10

    .line 268
    .line 269
    aget-object v10, v7, v9

    .line 270
    .line 271
    invoke-static {v10}, Lei;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    invoke-interface {p0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_12

    .line 280
    .line 281
    move p0, v5

    .line 282
    goto :goto_b

    .line 283
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :goto_b
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-ne v6, v8, :cond_13

    .line 291
    .line 292
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_19

    .line 297
    .line 298
    const-string p0, "Accepted - Local service call"

    .line 299
    .line 300
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto/16 :goto_d

    .line 304
    .line 305
    :cond_13
    if-eqz p0, :cond_14

    .line 306
    .line 307
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_19

    .line 312
    .line 313
    const-string p0, "Accepted - Host in allow-list"

    .line 314
    .line 315
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    goto/16 :goto_d

    .line 319
    .line 320
    :cond_14
    const/16 p0, 0x3e8

    .line 321
    .line 322
    if-ne v6, p0, :cond_15

    .line 323
    .line 324
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    if-eqz p0, :cond_19

    .line 329
    .line 330
    const-string p0, "Accepted - System binding"

    .line 331
    .line 332
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_15
    if-eqz p1, :cond_16

    .line 337
    .line 338
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    if-eqz p0, :cond_19

    .line 343
    .line 344
    const-string p0, "Accepted - Host has android.car.permission.TEMPLATE_RENDERER"

    .line 345
    .line 346
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_16
    aget-object p0, v7, v11

    .line 351
    .line 352
    invoke-static {p0}, Lei;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v3, "Unrecognized host.\nIf this is a valid caller, please add the following to your CarAppService#createHostValidator() implementation:\nreturn new HostValidator.Builder(context)\n\t.addAllowedHost(\""

    .line 359
    .line 360
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v3, "\", \""

    .line 367
    .line 368
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string p0, "\");\n\t.build()"

    .line 375
    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    goto/16 :goto_5

    .line 387
    .line 388
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 389
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v1, "Host "

    .line 393
    .line 394
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string p1, " doesn\'t match caller\'s actual UID "

    .line 401
    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw p0

    .line 416
    :cond_18
    :goto_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string p1, " is not signed or it has more than one signature"

    .line 425
    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    goto/16 :goto_5

    .line 437
    .line 438
    :cond_19
    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    return v5
.end method
