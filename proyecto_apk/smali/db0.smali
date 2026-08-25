.class public final Ldb0;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    iput p1, p0, Ldb0;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcb0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldb0;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Ldb0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 10
    iput p3, p0, Ldb0;->a:I

    iput-object p1, p0, Ldb0;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ldb0;->a:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget v1, v1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    if-eq v1, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Ldb0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lgu;

    .line 21
    .line 22
    iget-object v1, v0, Lgu;->U:Llu;

    .line 23
    .line 24
    iget-object v1, v1, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    new-instance v2, Lju;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Lju;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Ldw;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget v2, v1, Landroid/os/Message;->what:I

    .line 43
    .line 44
    if-ne v2, v5, :cond_3

    .line 45
    .line 46
    iget-object v2, v0, Ldb0;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lfo;

    .line 49
    .line 50
    iget-object v2, v2, Lfo;->a:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v4, v0, Ldb0;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Lfo;

    .line 56
    .line 57
    iget-object v4, v4, Lfo;->d:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lgo;

    .line 64
    .line 65
    iget-object v5, v0, Ldb0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lfo;

    .line 68
    .line 69
    iget-object v6, v5, Lfo;->e:Ldb0;

    .line 70
    .line 71
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    iget-object v2, v4, Lgo;->d:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v2

    .line 77
    :try_start_1
    iget-object v7, v4, Lgo;->i:Lfo;

    .line 78
    .line 79
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-ne v5, v7, :cond_3

    .line 81
    .line 82
    if-nez v6, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Llo;

    .line 88
    .line 89
    invoke-virtual {v4, v1}, Lgo;->d(Llo;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, Ldb0;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lfo;

    .line 95
    .line 96
    invoke-virtual {v0, v4, v6}, Lfo;->a(Lgo;Landroid/os/Handler;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v3}, Lgo;->d(Llo;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw v0

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    throw v0

    .line 109
    :cond_3
    :goto_1
    return-void

    .line 110
    :pswitch_1
    iget-object v2, v0, Ldb0;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lvn;

    .line 113
    .line 114
    if-eqz v2, :cond_9

    .line 115
    .line 116
    const-string v0, "data_callback_token"

    .line 117
    .line 118
    const-string v3, "data_calling_uid"

    .line 119
    .line 120
    const-string v6, "data_calling_pid"

    .line 121
    .line 122
    const-string v7, "data_package_name"

    .line 123
    .line 124
    const-string v8, "data_root_hints"

    .line 125
    .line 126
    const-string v9, "data_media_item_id"

    .line 127
    .line 128
    const-string v10, "data_result_receiver"

    .line 129
    .line 130
    iget-object v12, v2, Lvn;->b:Lc9;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget v11, v1, Landroid/os/Message;->what:I

    .line 137
    .line 138
    const/16 v13, 0x15

    .line 139
    .line 140
    packed-switch v11, :pswitch_data_1

    .line 141
    .line 142
    .line 143
    const-string v0, "MBServiceCompat"

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v3, "Unhandled message: "

    .line 148
    .line 149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, "\n  Service version: 2\n  Client version: "

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :pswitch_2
    const-string v0, "data_custom_action_extras"

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-static {v15}, Lko;->r(Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    const-string v0, "data_custom_action"

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object/from16 v16, v0

    .line 194
    .line 195
    check-cast v16, Lgy;

    .line 196
    .line 197
    new-instance v0, Lc9;

    .line 198
    .line 199
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 200
    .line 201
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_a

    .line 212
    .line 213
    if-nez v16, :cond_4

    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_4
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Lvn;

    .line 220
    .line 221
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 222
    .line 223
    new-instance v11, Ltn;

    .line 224
    .line 225
    move-object v13, v0

    .line 226
    invoke-direct/range {v11 .. v16}, Ltn;-><init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/Bundle;Lgy;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :pswitch_3
    const-string v0, "data_search_extras"

    .line 235
    .line 236
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    invoke-static {v15}, Lko;->r(Landroid/os/Bundle;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "data_search_query"

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object/from16 v16, v0

    .line 254
    .line 255
    check-cast v16, Lgy;

    .line 256
    .line 257
    new-instance v0, Lc9;

    .line 258
    .line 259
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 260
    .line 261
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_a

    .line 272
    .line 273
    if-nez v16, :cond_5

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_5
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Lvn;

    .line 280
    .line 281
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 282
    .line 283
    new-instance v11, Lun;

    .line 284
    .line 285
    move-object v13, v0

    .line 286
    invoke-direct/range {v11 .. v16}, Lun;-><init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/Bundle;Lgy;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :pswitch_4
    new-instance v0, Lc9;

    .line 295
    .line 296
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 297
    .line 298
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v1, Lvn;

    .line 304
    .line 305
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 306
    .line 307
    new-instance v2, Lsn;

    .line 308
    .line 309
    invoke-direct {v2, v12, v0, v5}, Lsn;-><init>(Lc9;Lc9;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :pswitch_5
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 318
    .line 319
    .line 320
    move-result-object v17

    .line 321
    invoke-static/range {v17 .. v17}, Lko;->r(Landroid/os/Bundle;)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Lc9;

    .line 325
    .line 326
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 327
    .line 328
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v15

    .line 335
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v16

    .line 339
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lvn;

    .line 346
    .line 347
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 348
    .line 349
    new-instance v11, Lrn;

    .line 350
    .line 351
    move-object v13, v0

    .line 352
    invoke-direct/range {v11 .. v17}, Lrn;-><init>(Lc9;Lc9;ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :pswitch_6
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    check-cast v2, Lgy;

    .line 369
    .line 370
    new-instance v3, Lc9;

    .line 371
    .line 372
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 373
    .line 374
    invoke-direct {v3, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_a

    .line 385
    .line 386
    if-nez v2, :cond_6

    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_6
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v1, Lvn;

    .line 393
    .line 394
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 395
    .line 396
    new-instance v4, Lun;

    .line 397
    .line 398
    invoke-direct {v4, v12, v3, v0, v2}, Lun;-><init>(Lc9;Lc9;Ljava/lang/String;Lgy;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v4}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_3

    .line 405
    .line 406
    :pswitch_7
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v14

    .line 410
    invoke-static {v2, v0}, Lv7;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    new-instance v0, Lc9;

    .line 415
    .line 416
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 417
    .line 418
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Lvn;

    .line 424
    .line 425
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 426
    .line 427
    new-instance v11, Lk9;

    .line 428
    .line 429
    const/16 v16, 0x1

    .line 430
    .line 431
    move-object v13, v0

    .line 432
    invoke-direct/range {v11 .. v16}, Lk9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_3

    .line 439
    .line 440
    :pswitch_8
    const-string v3, "data_options"

    .line 441
    .line 442
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 443
    .line 444
    .line 445
    move-result-object v16

    .line 446
    invoke-static/range {v16 .. v16}, Lko;->r(Landroid/os/Bundle;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v14

    .line 453
    invoke-static {v2, v0}, Lv7;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 454
    .line 455
    .line 456
    move-result-object v15

    .line 457
    new-instance v0, Lc9;

    .line 458
    .line 459
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 460
    .line 461
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v1, Lvn;

    .line 467
    .line 468
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 469
    .line 470
    new-instance v11, Ltn;

    .line 471
    .line 472
    move-object v13, v0

    .line 473
    invoke-direct/range {v11 .. v16}, Ltn;-><init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    :pswitch_9
    new-instance v0, Lc9;

    .line 482
    .line 483
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 484
    .line 485
    invoke-direct {v0, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v1, Lvn;

    .line 491
    .line 492
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 493
    .line 494
    new-instance v2, Lsn;

    .line 495
    .line 496
    invoke-direct {v2, v12, v0, v4}, Lsn;-><init>(Lc9;Lc9;I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v2}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 500
    .line 501
    .line 502
    goto :goto_3

    .line 503
    :pswitch_a
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 504
    .line 505
    .line 506
    move-result-object v17

    .line 507
    invoke-static/range {v17 .. v17}, Lko;->r(Landroid/os/Bundle;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v14

    .line 514
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    move-result v15

    .line 518
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    new-instance v2, Lc9;

    .line 523
    .line 524
    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 525
    .line 526
    invoke-direct {v2, v13, v1}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v12, Lc9;->b:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v1, Lvn;

    .line 532
    .line 533
    if-eqz v14, :cond_8

    .line 534
    .line 535
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    array-length v5, v3

    .line 544
    :goto_2
    if-ge v4, v5, :cond_8

    .line 545
    .line 546
    aget-object v6, v3, v4

    .line 547
    .line 548
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v6

    .line 552
    if-eqz v6, :cond_7

    .line 553
    .line 554
    iget-object v1, v1, Lvn;->e:Ldb0;

    .line 555
    .line 556
    new-instance v11, Lrn;

    .line 557
    .line 558
    move/from16 v16, v0

    .line 559
    .line 560
    move-object v13, v2

    .line 561
    invoke-direct/range {v11 .. v17}, Lrn;-><init>(Lc9;Lc9;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v11}, Ldb0;->a(Ljava/lang/Runnable;)V

    .line 565
    .line 566
    .line 567
    goto :goto_3

    .line 568
    :cond_7
    move-object v13, v2

    .line 569
    add-int/lit8 v4, v4, 0x1

    .line 570
    .line 571
    goto :goto_2

    .line 572
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 573
    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v3, "Package/uid mismatch: uid="

    .line 577
    .line 578
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v0, " package="

    .line 585
    .line 586
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    throw v1

    .line 600
    :cond_9
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    :cond_a
    :goto_3
    return-void

    .line 604
    :pswitch_b
    iget v2, v1, Landroid/os/Message;->what:I

    .line 605
    .line 606
    const/4 v3, -0x3

    .line 607
    if-eq v2, v3, :cond_c

    .line 608
    .line 609
    const/4 v3, -0x2

    .line 610
    if-eq v2, v3, :cond_c

    .line 611
    .line 612
    const/4 v3, -0x1

    .line 613
    if-eq v2, v3, :cond_c

    .line 614
    .line 615
    if-eq v2, v5, :cond_b

    .line 616
    .line 617
    goto :goto_4

    .line 618
    :cond_b
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v0, Landroid/content/DialogInterface;

    .line 621
    .line 622
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :cond_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    .line 629
    .line 630
    iget-object v0, v0, Ldb0;->b:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Landroid/content/DialogInterface;

    .line 639
    .line 640
    iget v1, v1, Landroid/os/Message;->what:I

    .line 641
    .line 642
    invoke-interface {v2, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 643
    .line 644
    .line 645
    :goto_4
    return-void

    .line 646
    :pswitch_c
    iget-object v2, v0, Ldb0;->b:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v2, Lcb0;

    .line 649
    .line 650
    iget v3, v1, Landroid/os/Message;->what:I

    .line 651
    .line 652
    if-eq v3, v5, :cond_e

    .line 653
    .line 654
    const/4 v4, 0x2

    .line 655
    if-eq v3, v4, :cond_d

    .line 656
    .line 657
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 658
    .line 659
    .line 660
    goto :goto_5

    .line 661
    :cond_d
    iget-object v0, v2, Lcb0;->b:Lj90;

    .line 662
    .line 663
    invoke-virtual {v0}, Lj90;->a()V

    .line 664
    .line 665
    .line 666
    iget-object v0, v2, Lcb0;->b:Lj90;

    .line 667
    .line 668
    iget-object v0, v0, Lj90;->a:Leb0;

    .line 669
    .line 670
    iget-object v0, v0, Law;->b:Lay;

    .line 671
    .line 672
    invoke-virtual {v0}, Lay;->v()V

    .line 673
    .line 674
    .line 675
    goto :goto_5

    .line 676
    :cond_e
    iget-boolean v0, v2, Lcb0;->c:Z

    .line 677
    .line 678
    if-eqz v0, :cond_f

    .line 679
    .line 680
    invoke-virtual {v2, v4}, Lcb0;->a(Z)V

    .line 681
    .line 682
    .line 683
    :cond_f
    :goto_5
    return-void

    .line 684
    nop

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    .line 1
    iget v0, p0, Ldb0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lgn;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "data_calling_uid"

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "data_calling_pid"

    .line 38
    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
