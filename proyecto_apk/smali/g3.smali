.class public final synthetic Lg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p2, p0, Lg3;->a:I

    iput-object p1, p0, Lg3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput p1, p0, Lg3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lg3;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lg3;->b:Landroid/content/Context;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcv;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcv;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lqj;->e:Lhd;

    .line 16
    .line 17
    invoke-static {p0, v0, v2, v1}, Lqj;->w(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldv;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    .line 25
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lg3;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v0, p0, v1}, Lg3;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v2, 0x1c

    .line 50
    .line 51
    if-lt v0, v2, :cond_0

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lgv;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    new-instance v2, Ljava/util/Random;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 74
    .line 75
    .line 76
    const/16 v3, 0x3e8

    .line 77
    .line 78
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    new-instance v2, Lg3;

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-direct {v2, p0, v3}, Lg3;-><init>(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    add-int/lit16 v1, v1, 0x1388

    .line 93
    .line 94
    int-to-long v3, v1

    .line 95
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    const/16 v2, 0x21

    .line 102
    .line 103
    if-lt v0, v2, :cond_6

    .line 104
    .line 105
    new-instance v0, Landroid/content/ComponentName;

    .line 106
    .line 107
    const-string v2, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 108
    .line 109
    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v2, v1, :cond_6

    .line 121
    .line 122
    invoke-static {}, Lt7;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const-string v3, "locale"

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    sget-object v2, Lj3;->g:Lv6;

    .line 131
    .line 132
    invoke-virtual {v2}, Lv6;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_1
    move-object v4, v2

    .line 137
    check-cast v4, Lhm;

    .line 138
    .line 139
    invoke-virtual {v4}, Lhm;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_2

    .line 144
    .line 145
    invoke-virtual {v4}, Lhm;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lj3;

    .line 156
    .line 157
    if-eqz v4, :cond_1

    .line 158
    .line 159
    check-cast v4, Lw3;

    .line 160
    .line 161
    iget-object v4, v4, Lw3;->k:Landroid/content/Context;

    .line 162
    .line 163
    if-eqz v4, :cond_1

    .line 164
    .line 165
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    goto :goto_1

    .line 170
    :cond_2
    const/4 v2, 0x0

    .line 171
    :goto_1
    if-eqz v2, :cond_4

    .line 172
    .line 173
    invoke-static {v2}, Li3;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v4, Lwl;

    .line 178
    .line 179
    new-instance v5, Lxl;

    .line 180
    .line 181
    invoke-direct {v5, v2}, Lxl;-><init>(Landroid/os/LocaleList;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v4, v5}, Lwl;-><init>(Lxl;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_3
    sget-object v4, Lj3;->c:Lwl;

    .line 189
    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    sget-object v4, Lwl;->b:Lwl;

    .line 194
    .line 195
    :goto_2
    iget-object v2, v4, Lwl;->a:Lxl;

    .line 196
    .line 197
    iget-object v2, v2, Lxl;->a:Landroid/os/LocaleList;

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_5

    .line 204
    .line 205
    invoke-static {p0}, Lgt;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-eqz v3, :cond_5

    .line 214
    .line 215
    invoke-static {v2}, Lh3;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v3, v2}, Li3;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 227
    .line 228
    .line 229
    :cond_6
    sput-boolean v1, Lj3;->f:Z

    .line 230
    .line 231
    return-void

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
