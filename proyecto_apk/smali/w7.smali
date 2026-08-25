.class public final Lw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget p0, p0, Lw7;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p0, Lx20;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, p0, Lx20;->a:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Lx20;->b:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v1, :cond_0

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_0
    iput-boolean v0, p0, Lx20;->d:Z

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    new-array v0, v0, [I

    .line 42
    .line 43
    iput-object v0, p0, Lx20;->c:[I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object p0

    .line 49
    :pswitch_0
    new-instance p0, Lu00;

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lu00;-><init>(Landroid/os/Parcel;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_1
    new-instance p0, Lgy;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget v0, Lfy;->b:I

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lli;->p:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    instance-of v1, v0, Lli;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    move-object v2, v0

    .line 82
    check-cast v2, Lli;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v2, Lki;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, v2, Lki;->a:Landroid/os/IBinder;

    .line 91
    .line 92
    :goto_0
    iput-object v2, p0, Lgy;->a:Lli;

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_2
    new-instance p0, Landroid/support/v4/media/RatingCompat;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_3
    new-instance p0, Lhu;

    .line 110
    .line 111
    invoke-direct {p0, p1}, Lhu;-><init>(Landroid/os/Parcel;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_4
    new-instance p0, Lzt;

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lzt;-><init>(Landroid/os/Parcel;)V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_5
    new-instance p0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 122
    .line 123
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_6
    new-instance p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->a:I

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput p1, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    .line 161
    .line 162
    return-object p0

    .line 163
    :pswitch_7
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    .line 164
    .line 165
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 166
    .line 167
    .line 168
    return-object p0

    .line 169
    :pswitch_8
    new-instance p0, Lzq;

    .line 170
    .line 171
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iput p1, p0, Lzq;->a:I

    .line 179
    .line 180
    return-object p0

    .line 181
    :pswitch_9
    new-instance p0, Lpq;

    .line 182
    .line 183
    invoke-direct {p0, p1}, Lpq;-><init>(Landroid/os/Parcel;)V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 192
    .line 193
    check-cast p0, Landroid/os/Parcelable;

    .line 194
    .line 195
    invoke-direct {p1, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;Landroid/support/v4/media/session/b;)V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :pswitch_b
    new-instance p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 200
    .line 201
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    .line 202
    .line 203
    .line 204
    return-object p0

    .line 205
    :pswitch_c
    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 206
    .line 207
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 208
    .line 209
    .line 210
    return-object p0

    .line 211
    :pswitch_d
    sget-object p0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 212
    .line 213
    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    if-eqz p0, :cond_9

    .line 218
    .line 219
    check-cast p0, Landroid/media/MediaDescription;

    .line 220
    .line 221
    invoke-static {p0}, Lzn;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {p0}, Lzn;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-static {p0}, Lzn;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {p0}, Lzn;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-static {p0}, Lzn;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-static {p0}, Lzn;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-static {p0}, Lzn;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    if-eqz p1, :cond_4

    .line 250
    .line 251
    invoke-static {p1}, Lko;->P(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    :cond_4
    const-string v0, "android.support.v4.media.description.MEDIA_URI"

    .line 256
    .line 257
    if-eqz p1, :cond_5

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Landroid/net/Uri;

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_5
    move-object v1, v2

    .line 267
    :goto_1
    if-eqz v1, :cond_7

    .line 268
    .line 269
    const-string v3, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 270
    .line 271
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_6

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    const/4 v11, 0x2

    .line 282
    if-ne v10, v11, :cond_6

    .line 283
    .line 284
    move-object v10, v2

    .line 285
    goto :goto_2

    .line 286
    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_7
    move-object v10, p1

    .line 293
    :goto_2
    if-eqz v1, :cond_8

    .line 294
    .line 295
    :goto_3
    move-object v11, v1

    .line 296
    goto :goto_4

    .line 297
    :cond_8
    invoke-static {p0}, Lao;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    goto :goto_3

    .line 302
    :goto_4
    new-instance v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 303
    .line 304
    invoke-direct/range {v3 .. v11}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 305
    .line 306
    .line 307
    iput-object p0, v3, Landroid/support/v4/media/MediaDescriptionCompat;->i:Landroid/media/MediaDescription;

    .line 308
    .line 309
    move-object v2, v3

    .line 310
    :cond_9
    return-object v2

    .line 311
    :pswitch_e
    new-instance p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 312
    .line 313
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 314
    .line 315
    .line 316
    return-object p0

    .line 317
    :pswitch_f
    new-instance p0, Lzm;

    .line 318
    .line 319
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 320
    .line 321
    .line 322
    const-class v0, Lzm;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    iput p1, p0, Lzm;->a:I

    .line 339
    .line 340
    return-object p0

    .line 341
    :pswitch_10
    new-instance p0, Lkl;

    .line 342
    .line 343
    invoke-direct {p0, p1}, Lkl;-><init>(Landroid/os/Parcel;)V

    .line 344
    .line 345
    .line 346
    return-object p0

    .line 347
    :pswitch_11
    new-instance p0, Lal;

    .line 348
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    iput v2, p0, Lal;->a:I

    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    iput v2, p0, Lal;->b:I

    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-ne p1, v1, :cond_a

    .line 369
    .line 370
    move v0, v1

    .line 371
    :cond_a
    iput-boolean v0, p0, Lal;->c:Z

    .line 372
    .line 373
    return-object p0

    .line 374
    :pswitch_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    new-instance p0, Lpj;

    .line 378
    .line 379
    const-class v0, Landroid/content/IntentSender;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    check-cast v0, Landroid/content/IntentSender;

    .line 393
    .line 394
    const-class v1, Landroid/content/Intent;

    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Landroid/content/Intent;

    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    invoke-direct {p0, v0, v1, v2, p1}, Lpj;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 415
    .line 416
    .line 417
    return-object p0

    .line 418
    :pswitch_13
    new-instance p0, Lng;

    .line 419
    .line 420
    invoke-direct {p0, p1}, Lng;-><init>(Landroid/os/Parcel;)V

    .line 421
    .line 422
    .line 423
    return-object p0

    .line 424
    :pswitch_14
    new-instance p0, Ljg;

    .line 425
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    iput-object v2, p0, Ljg;->e:Ljava/lang/String;

    .line 430
    .line 431
    new-instance v0, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .line 435
    .line 436
    iput-object v0, p0, Ljg;->f:Ljava/util/ArrayList;

    .line 437
    .line 438
    new-instance v0, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    iput-object v0, p0, Ljg;->g:Ljava/util/ArrayList;

    .line 444
    .line 445
    sget-object v0, Lng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iput-object v0, p0, Ljg;->a:Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iput-object v0, p0, Ljg;->b:Ljava/util/ArrayList;

    .line 458
    .line 459
    sget-object v0, Lf7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 460
    .line 461
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    check-cast v0, [Lf7;

    .line 466
    .line 467
    iput-object v0, p0, Ljg;->c:[Lf7;

    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    iput v0, p0, Ljg;->d:I

    .line 474
    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iput-object v0, p0, Ljg;->e:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    iput-object v0, p0, Ljg;->f:Ljava/util/ArrayList;

    .line 486
    .line 487
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 488
    .line 489
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    iput-object v0, p0, Ljg;->g:Ljava/util/ArrayList;

    .line 494
    .line 495
    sget-object v0, Leg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    iput-object p1, p0, Ljg;->h:Ljava/util/ArrayList;

    .line 502
    .line 503
    return-object p0

    .line 504
    :pswitch_15
    new-instance p0, Leg;

    .line 505
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    iput-object v0, p0, Leg;->a:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    iput p1, p0, Leg;->b:I

    .line 520
    .line 521
    return-object p0

    .line 522
    :pswitch_16
    new-instance p0, Lid;

    .line 523
    .line 524
    invoke-direct {p0, p1}, Lid;-><init>(Landroid/os/Parcel;)V

    .line 525
    .line 526
    .line 527
    return-object p0

    .line 528
    :pswitch_17
    new-instance p0, Lmoe/shizuku/api/BinderContainer;

    .line 529
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    iput-object p1, p0, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 538
    .line 539
    return-object p0

    .line 540
    :pswitch_18
    new-instance p0, Lf7;

    .line 541
    .line 542
    invoke-direct {p0, p1}, Lf7;-><init>(Landroid/os/Parcel;)V

    .line 543
    .line 544
    .line 545
    return-object p0

    .line 546
    :pswitch_19
    new-instance p0, Lx4;

    .line 547
    .line 548
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    if-eqz p1, :cond_b

    .line 556
    .line 557
    move v0, v1

    .line 558
    :cond_b
    iput-boolean v0, p0, Lx4;->a:Z

    .line 559
    .line 560
    return-object p0

    .line 561
    :pswitch_1a
    new-instance p0, Lr1;

    .line 562
    .line 563
    invoke-direct {p0, p1}, Lr1;-><init>(Landroid/os/Parcel;)V

    .line 564
    .line 565
    .line 566
    return-object p0

    .line 567
    :pswitch_1b
    new-instance p0, Lx7;

    .line 568
    .line 569
    const-class v0, Lw7;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    invoke-direct {p0, p1}, Lx7;-><init>(Landroid/os/Bundle;)V

    .line 583
    .line 584
    .line 585
    return-object p0

    .line 586
    nop

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lw7;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lx20;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lu00;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lgy;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Landroid/support/v4/media/RatingCompat;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lhu;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lzt;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lzq;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lpq;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lzm;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lkl;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lal;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Lpj;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Lng;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Ljg;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Leg;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Lid;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    new-array p0, p1, [Lmoe/shizuku/api/BinderContainer;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_18
    new-array p0, p1, [Lf7;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_19
    new-array p0, p1, [Lx4;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1a
    new-array p0, p1, [Lr1;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1b
    new-array p0, p1, [Lx7;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
