.class public final synthetic Lx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lx5;->a:I

    iput-object p1, p0, Lx5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lx5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnk;Lhx;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lx5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lx5;->d:Ljava/lang/Object;

    iput-object p3, p0, Lx5;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lx5;->a:I

    .line 2
    .line 3
    const v1, 0x7f0800a3

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/car/app/IOnDoneCallback;

    .line 13
    .line 14
    iget-object v1, p0, Lx5;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lx5;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lhx;

    .line 21
    .line 22
    :try_start_0
    invoke-interface {p0}, Lhx;->b()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, v1, p0}, Landroidx/car/app/utils/e;->g(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lb8; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    invoke-static {v0, v1, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    invoke-static {v0, v1, p0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lc2;->k(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lnk;

    .line 48
    .line 49
    iget-object v1, p0, Lx5;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lhx;

    .line 52
    .line 53
    iget-object p0, p0, Lx5;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "CarApp.Dispatch"

    .line 58
    .line 59
    const-string v4, "Lifecycle is not at least created when dispatching "

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    :try_start_1
    check-cast v0, Landroidx/lifecycle/a;

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 66
    .line 67
    sget-object v5, Lmk;->c:Lmk;

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ltz v0, :cond_0

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    :cond_0
    if-nez v2, :cond_1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    invoke-interface {v1}, Lhx;->b()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :catch_2
    move-exception v0

    .line 84
    goto :goto_4

    .line 85
    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lb8; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :goto_4
    const-string v1, "Serialization failure in "

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v3, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :goto_5
    return-void

    .line 111
    :pswitch_1
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lc9;

    .line 114
    .line 115
    iget-object v1, p0, Lx5;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lqj;

    .line 118
    .line 119
    iget-object p0, p0, Lx5;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 122
    .line 123
    :try_start_2
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v0}, Lem;->h(Landroid/content/Context;)Lef;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget-object v2, v0, Lpd;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lsd;

    .line 136
    .line 137
    check-cast v2, Ldf;

    .line 138
    .line 139
    iget-object v3, v2, Ldf;->d:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    iput-object p0, v2, Ldf;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 143
    .line 144
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    :try_start_4
    iget-object v0, v0, Lpd;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lsd;

    .line 148
    .line 149
    new-instance v2, Lud;

    .line 150
    .line 151
    invoke-direct {v2, v1, p0}, Lud;-><init>(Lqj;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, v2}, Lsd;->c(Lqj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_7

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto :goto_6

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    :try_start_6
    throw v0

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    const-string v2, "EmojiCompat font provider not available on this device."

    .line 166
    .line 167
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :goto_6
    invoke-virtual {v1, v0}, Lqj;->r(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 175
    .line 176
    .line 177
    :goto_7
    return-void

    .line 178
    :pswitch_2
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lq6;

    .line 181
    .line 182
    iget-object v1, p0, Lx5;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Ljava/lang/String;

    .line 185
    .line 186
    iget-object p0, p0, Lx5;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    iget-object v2, v0, Lq6;->m0:Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Landroid/widget/ImageView;

    .line 197
    .line 198
    if-nez p0, :cond_4

    .line 199
    .line 200
    goto :goto_9

    .line 201
    :cond_4
    iget-object v0, v0, Lq6;->l0:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    if-eqz v2, :cond_5

    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    goto :goto_8

    .line 213
    :cond_5
    const/4 v0, 0x0

    .line 214
    :goto_8
    invoke-static {v0, v1}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_9
    return-void

    .line 224
    :pswitch_3
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Landroid/content/Context;

    .line 227
    .line 228
    iget-object v2, p0, Lx5;->c:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v2, Ljava/lang/String;

    .line 231
    .line 232
    iget-object p0, p0, Lx5;->d:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Lq6;

    .line 235
    .line 236
    sget-object v3, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v2, v1}, Lz5;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v1, p0, Lq6;->k0:Landroid/os/Handler;

    .line 246
    .line 247
    new-instance v3, Lx5;

    .line 248
    .line 249
    const/4 v4, 0x2

    .line 250
    invoke-direct {v3, p0, v2, v0, v4}, Lx5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_4
    iget-object v0, p0, Lx5;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Landroid/content/Context;

    .line 260
    .line 261
    iget-object v3, p0, Lx5;->c:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v3, Ljava/lang/String;

    .line 264
    .line 265
    iget-object p0, p0, Lx5;->d:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p0, Lch;

    .line 268
    .line 269
    sget-object v4, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v3, v1}, Lz5;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    sget-object v1, Lz5;->b:Landroid/os/Handler;

    .line 279
    .line 280
    new-instance v3, Ly5;

    .line 281
    .line 282
    invoke-direct {v3, p0, v2, v0}, Ly5;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
