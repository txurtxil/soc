.class public final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk;


# instance fields
.field public final a:Lvz;


# direct methods
.method public constructor <init>(Lvz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/savedstate/Recreator;->a:Lvz;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Lsk;Llk;)V
    .locals 12

    .line 1
    sget-object v0, Llk;->ON_CREATE:Llk;

    .line 2
    .line 3
    if-ne p2, v0, :cond_b

    .line 4
    .line 5
    invoke-interface {p1}, Lsk;->f()Landroidx/lifecycle/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->b(Lrk;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Lvz;

    .line 13
    .line 14
    invoke-interface {p1}, Lvz;->a()Lf3;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.savedstate.Restarter"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lf3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    const-string p2, "classes_to_restore"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_a

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 v0, 0x0

    .line 41
    move v1, v0

    .line 42
    :cond_1
    :goto_0
    if-ge v1, p2, :cond_9

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    :try_start_0
    const-class v3, Landroidx/savedstate/Recreator;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-class v4, Ltz;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 76
    const/4 v5, 0x1

    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 78
    .line 79
    .line 80
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    check-cast v3, Ltz;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .line 89
    iget-object v2, p0, Landroidx/savedstate/Recreator;->a:Lvz;

    .line 90
    .line 91
    instance-of v3, v2, Lc80;

    .line 92
    .line 93
    if-eqz v3, :cond_8

    .line 94
    .line 95
    move-object v3, v2

    .line 96
    check-cast v3, Lc80;

    .line 97
    .line 98
    invoke-interface {v3}, Lc80;->e()Lb80;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v2}, Lvz;->a()Lf3;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v7, Ljava/util/HashSet;

    .line 110
    .line 111
    iget-object v8, v3, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_5

    .line 129
    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v9, v3, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Lz70;

    .line 146
    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-interface {v2}, Lsk;->f()Landroidx/lifecycle/a;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const-string v10, "androidx.lifecycle.savedstate.vm.tag"

    .line 161
    .line 162
    iget-object v11, v8, Lz70;->a:Ljava/util/HashMap;

    .line 163
    .line 164
    if-nez v11, :cond_3

    .line 165
    .line 166
    move-object v8, v4

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    monitor-enter v11

    .line 169
    :try_start_3
    iget-object v8, v8, Lz70;->a:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :goto_1
    check-cast v8, Landroidx/lifecycle/SavedStateHandleController;

    .line 177
    .line 178
    if-eqz v8, :cond_2

    .line 179
    .line 180
    iget-boolean v10, v8, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    .line 181
    .line 182
    if-nez v10, :cond_2

    .line 183
    .line 184
    if-eqz v10, :cond_4

    .line 185
    .line 186
    const-string p0, "Already attached to lifecycleOwner"

    .line 187
    .line 188
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_4
    iput-boolean v5, v8, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    .line 193
    .line 194
    invoke-virtual {v9, v8}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 195
    .line 196
    .line 197
    throw v4

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    throw p0

    .line 201
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    .line 202
    .line 203
    iget-object v3, v3, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_1

    .line 217
    .line 218
    const-class v2, Lik;

    .line 219
    .line 220
    iget-boolean v3, v6, Lf3;->e:Z

    .line 221
    .line 222
    if-eqz v3, :cond_7

    .line 223
    .line 224
    iget-object v3, v6, Lf3;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v3, Lx2;

    .line 227
    .line 228
    if-nez v3, :cond_6

    .line 229
    .line 230
    new-instance v3, Lx2;

    .line 231
    .line 232
    invoke-direct {v3, v6}, Lx2;-><init>(Lf3;)V

    .line 233
    .line 234
    .line 235
    :cond_6
    iput-object v3, v6, Lf3;->b:Ljava/lang/Object;

    .line 236
    .line 237
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0

    .line 238
    .line 239
    .line 240
    iget-object v3, v6, Lf3;->b:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v3, Lx2;

    .line 243
    .line 244
    if-eqz v3, :cond_1

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget-object v3, v3, Lx2;->b:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v3, Ljava/util/LinkedHashSet;

    .line 253
    .line 254
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :catch_0
    move-exception p0

    .line 260
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 261
    .line 262
    const-string p2, "Class "

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string p2, " must have default constructor in order to be automatically recreated"

    .line 277
    .line 278
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_7
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 290
    .line 291
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_8
    const-string p0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 296
    .line 297
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :catch_1
    move-exception p0

    .line 302
    new-instance p1, Ljava/lang/RuntimeException;

    .line 303
    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v0, "Failed to instantiate "

    .line 307
    .line 308
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    throw p1

    .line 322
    :catch_2
    move-exception p0

    .line 323
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    const-string p2, "Class "

    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string p2, " must have default constructor in order to be automatically recreated"

    .line 340
    .line 341
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    :catch_3
    move-exception p0

    .line 353
    new-instance p1, Ljava/lang/RuntimeException;

    .line 354
    .line 355
    const-string p2, "Class "

    .line 356
    .line 357
    const-string v0, " wasn\'t found"

    .line 358
    .line 359
    invoke-static {p2, v2, v0}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    throw p1

    .line 367
    :cond_9
    :goto_2
    return-void

    .line 368
    :cond_a
    const-string p0, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 369
    .line 370
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    .line 375
    .line 376
    const-string p1, "Next event must be ON_CREATE"

    .line 377
    .line 378
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    throw p0
.end method
