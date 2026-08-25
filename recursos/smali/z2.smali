.class public abstract Lz2;
.super Landroidx/activity/a;
.source "SourceFile"

# interfaces
.implements Lc3;


# instance fields
.field public final t:Lc9;

.field public final u:Landroidx/lifecycle/a;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lw3;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwf;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwf;-><init>(Lz2;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lc9;

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lc9;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lz2;->t:Lc9;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lz2;->x:Z

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/activity/a;->e:Lqg;

    .line 29
    .line 30
    iget-object v0, v0, Lqg;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lf3;

    .line 33
    .line 34
    new-instance v1, Lx2;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, p0, v2}, Lx2;-><init>(Lz2;I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "android:support:fragments"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lf3;->e(Ljava/lang/String;Luz;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ly2;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, p0, v1}, Ly2;-><init>(Lz2;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/activity/a;->g(Ljs;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/activity/a;->e:Lqg;

    .line 55
    .line 56
    iget-object v0, v0, Lqg;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lf3;

    .line 59
    .line 60
    new-instance v1, Lx2;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, p0, v2}, Lx2;-><init>(Lz2;I)V

    .line 64
    .line 65
    .line 66
    const-string v2, "androidx:appcompat"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lf3;->e(Ljava/lang/String;Luz;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Ly2;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, p0, v1}, Ly2;-><init>(Lz2;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroidx/activity/a;->g(Ljs;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static n(Landroidx/fragment/app/a;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lvf;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Lvf;->t:Lwf;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Lwf;->n:Lz2;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lvf;->g()Landroidx/fragment/app/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lz2;->n(Landroidx/fragment/app/a;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Lvf;->O:Lpg;

    .line 47
    .line 48
    const-string v3, "setCurrentState"

    .line 49
    .line 50
    sget-object v4, Lmk;->c:Lmk;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    sget-object v6, Lmk;->d:Lmk;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Lpg;->d()V

    .line 58
    .line 59
    .line 60
    iget-object v2, v2, Lpg;->b:Landroidx/lifecycle/a;

    .line 61
    .line 62
    iget-object v2, v2, Landroidx/lifecycle/a;->c:Lmk;

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ltz v2, :cond_4

    .line 69
    .line 70
    iget-object v0, v1, Lvf;->O:Lpg;

    .line 71
    .line 72
    iget-object v0, v0, Lpg;->b:Landroidx/lifecycle/a;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroidx/lifecycle/a;->f(Lmk;)V

    .line 78
    .line 79
    .line 80
    move v0, v5

    .line 81
    :cond_4
    iget-object v2, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 82
    .line 83
    iget-object v2, v2, Landroidx/lifecycle/a;->c:Lmk;

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ltz v2, :cond_0

    .line 90
    .line 91
    iget-object v0, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->d(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroidx/lifecycle/a;->f(Lmk;)V

    .line 97
    .line 98
    .line 99
    move v0, v5

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    invoke-virtual {p0}, Lw3;->y()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lw3;->A:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v1, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lw3;->m:Lq3;

    .line 28
    .line 29
    iget-object p0, p0, Lw3;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lq3;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lw3;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lw3;->O:Z

    .line 9
    .line 10
    iget v2, v0, Lw3;->S:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Lj3;->b:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Lw3;->E(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Lj3;->c(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    invoke-static {p1}, Lj3;->c(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    invoke-static {}, Lt7;->a()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sget-boolean v2, Lj3;->f:Z

    .line 44
    .line 45
    if-nez v2, :cond_7

    .line 46
    .line 47
    sget-object v2, Lj3;->a:Lc6;

    .line 48
    .line 49
    new-instance v4, Lg3;

    .line 50
    .line 51
    invoke-direct {v4, p1, v3}, Lg3;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lc6;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v2, Lj3;->i:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v4, Lj3;->c:Lwl;

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    sget-object v4, Lj3;->d:Lwl;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Lgt;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Lwl;->a(Ljava/lang/String;)Lwl;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sput-object v4, Lj3;->d:Lwl;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v4, Lj3;->d:Lwl;

    .line 83
    .line 84
    iget-object v4, v4, Lwl;->a:Lxl;

    .line 85
    .line 86
    iget-object v4, v4, Lxl;->a:Landroid/os/LocaleList;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    monitor-exit v2

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    sget-object v4, Lj3;->d:Lwl;

    .line 97
    .line 98
    sput-object v4, Lj3;->c:Lwl;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    sget-object v5, Lj3;->d:Lwl;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lwl;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_6

    .line 108
    .line 109
    sget-object v4, Lj3;->c:Lwl;

    .line 110
    .line 111
    sput-object v4, Lj3;->d:Lwl;

    .line 112
    .line 113
    iget-object v4, v4, Lwl;->a:Lxl;

    .line 114
    .line 115
    iget-object v4, v4, Lxl;->a:Landroid/os/LocaleList;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {p1, v4}, Lgt;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_2
    monitor-exit v2

    .line 125
    goto :goto_4

    .line 126
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_7
    :goto_4
    invoke-static {p1}, Lw3;->r(Landroid/content/Context;)Lwl;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-boolean v4, Lw3;->k0:Z

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    if-eqz v4, :cond_8

    .line 136
    .line 137
    instance-of v4, p1, Landroid/view/ContextThemeWrapper;

    .line 138
    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    invoke-static {p1, v0, v2, v5, v3}, Lw3;->v(Landroid/content/Context;ILwl;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :try_start_1
    move-object v6, p1

    .line 146
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 147
    .line 148
    invoke-virtual {v6, v4}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    .line 151
    goto/16 :goto_b

    .line 152
    .line 153
    :catch_0
    :cond_8
    instance-of v4, p1, Lcb;

    .line 154
    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    invoke-static {p1, v0, v2, v5, v3}, Lw3;->v(Landroid/content/Context;ILwl;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :try_start_2
    move-object v4, p1

    .line 162
    check-cast v4, Lcb;

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Lcb;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    .line 166
    .line 167
    goto/16 :goto_b

    .line 168
    .line 169
    :catch_1
    :cond_9
    sget-boolean v3, Lw3;->j0:Z

    .line 170
    .line 171
    if-nez v3, :cond_a

    .line 172
    .line 173
    goto/16 :goto_b

    .line 174
    .line 175
    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    .line 176
    .line 177
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 178
    .line 179
    .line 180
    const/4 v4, -0x1

    .line 181
    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 185
    .line 186
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 207
    .line 208
    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 209
    .line 210
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-nez v7, :cond_20

    .line 215
    .line 216
    new-instance v7, Landroid/content/res/Configuration;

    .line 217
    .line 218
    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 219
    .line 220
    .line 221
    iput v4, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 222
    .line 223
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-nez v4, :cond_b

    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 232
    .line 233
    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 234
    .line 235
    cmpl-float v4, v4, v8

    .line 236
    .line 237
    if-eqz v4, :cond_c

    .line 238
    .line 239
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 240
    .line 241
    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    .line 242
    .line 243
    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    .line 244
    .line 245
    if-eq v4, v8, :cond_d

    .line 246
    .line 247
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 248
    .line 249
    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    .line 250
    .line 251
    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    .line 252
    .line 253
    if-eq v4, v8, :cond_e

    .line 254
    .line 255
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 256
    .line 257
    :cond_e
    invoke-static {v3, v6, v7}, Ln3;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 258
    .line 259
    .line 260
    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    .line 261
    .line 262
    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 263
    .line 264
    if-eq v4, v8, :cond_f

    .line 265
    .line 266
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 267
    .line 268
    :cond_f
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 269
    .line 270
    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 271
    .line 272
    if-eq v4, v8, :cond_10

    .line 273
    .line 274
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 275
    .line 276
    :cond_10
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 277
    .line 278
    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 279
    .line 280
    if-eq v4, v8, :cond_11

    .line 281
    .line 282
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 283
    .line 284
    :cond_11
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    .line 285
    .line 286
    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    .line 287
    .line 288
    if-eq v4, v8, :cond_12

    .line 289
    .line 290
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 291
    .line 292
    :cond_12
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    .line 293
    .line 294
    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 295
    .line 296
    if-eq v4, v8, :cond_13

    .line 297
    .line 298
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 299
    .line 300
    :cond_13
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 301
    .line 302
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 303
    .line 304
    if-eq v4, v8, :cond_14

    .line 305
    .line 306
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 307
    .line 308
    :cond_14
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 309
    .line 310
    and-int/lit8 v4, v4, 0xf

    .line 311
    .line 312
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 313
    .line 314
    and-int/lit8 v8, v8, 0xf

    .line 315
    .line 316
    if-eq v4, v8, :cond_15

    .line 317
    .line 318
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 319
    .line 320
    or-int/2addr v4, v8

    .line 321
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 322
    .line 323
    :cond_15
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 324
    .line 325
    and-int/lit16 v4, v4, 0xc0

    .line 326
    .line 327
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 328
    .line 329
    and-int/lit16 v8, v8, 0xc0

    .line 330
    .line 331
    if-eq v4, v8, :cond_16

    .line 332
    .line 333
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 334
    .line 335
    or-int/2addr v4, v8

    .line 336
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 337
    .line 338
    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 339
    .line 340
    and-int/lit8 v4, v4, 0x30

    .line 341
    .line 342
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 343
    .line 344
    and-int/lit8 v8, v8, 0x30

    .line 345
    .line 346
    if-eq v4, v8, :cond_17

    .line 347
    .line 348
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 349
    .line 350
    or-int/2addr v4, v8

    .line 351
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 352
    .line 353
    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 354
    .line 355
    and-int/lit16 v4, v4, 0x300

    .line 356
    .line 357
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 358
    .line 359
    and-int/lit16 v8, v8, 0x300

    .line 360
    .line 361
    if-eq v4, v8, :cond_18

    .line 362
    .line 363
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 364
    .line 365
    or-int/2addr v4, v8

    .line 366
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 367
    .line 368
    :cond_18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 369
    .line 370
    const/16 v8, 0x1a

    .line 371
    .line 372
    if-lt v4, v8, :cond_1a

    .line 373
    .line 374
    invoke-static {v3}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    and-int/lit8 v4, v4, 0x3

    .line 379
    .line 380
    invoke-static {v6}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    and-int/lit8 v8, v8, 0x3

    .line 385
    .line 386
    if-eq v4, v8, :cond_19

    .line 387
    .line 388
    invoke-static {v7}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    invoke-static {v6}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    and-int/lit8 v8, v8, 0x3

    .line 397
    .line 398
    or-int/2addr v4, v8

    .line 399
    invoke-static {v7, v4}, Ld0;->h(Landroid/content/res/Configuration;I)V

    .line 400
    .line 401
    .line 402
    :cond_19
    invoke-static {v3}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    and-int/lit8 v4, v4, 0xc

    .line 407
    .line 408
    invoke-static {v6}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    and-int/lit8 v8, v8, 0xc

    .line 413
    .line 414
    if-eq v4, v8, :cond_1a

    .line 415
    .line 416
    invoke-static {v7}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    invoke-static {v6}, Ld0;->a(Landroid/content/res/Configuration;)I

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    and-int/lit8 v8, v8, 0xc

    .line 425
    .line 426
    or-int/2addr v4, v8

    .line 427
    invoke-static {v7, v4}, Ld0;->h(Landroid/content/res/Configuration;I)V

    .line 428
    .line 429
    .line 430
    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 431
    .line 432
    and-int/lit8 v4, v4, 0xf

    .line 433
    .line 434
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 435
    .line 436
    and-int/lit8 v8, v8, 0xf

    .line 437
    .line 438
    if-eq v4, v8, :cond_1b

    .line 439
    .line 440
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 441
    .line 442
    or-int/2addr v4, v8

    .line 443
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 444
    .line 445
    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 446
    .line 447
    and-int/lit8 v4, v4, 0x30

    .line 448
    .line 449
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 450
    .line 451
    and-int/lit8 v8, v8, 0x30

    .line 452
    .line 453
    if-eq v4, v8, :cond_1c

    .line 454
    .line 455
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 456
    .line 457
    or-int/2addr v4, v8

    .line 458
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 459
    .line 460
    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 461
    .line 462
    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 463
    .line 464
    if-eq v4, v8, :cond_1d

    .line 465
    .line 466
    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 467
    .line 468
    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 469
    .line 470
    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 471
    .line 472
    if-eq v4, v8, :cond_1e

    .line 473
    .line 474
    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 475
    .line 476
    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 477
    .line 478
    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 479
    .line 480
    if-eq v4, v8, :cond_1f

    .line 481
    .line 482
    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 483
    .line 484
    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 485
    .line 486
    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 487
    .line 488
    if-eq v3, v4, :cond_21

    .line 489
    .line 490
    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 491
    .line 492
    goto :goto_5

    .line 493
    :cond_20
    move-object v7, v5

    .line 494
    :cond_21
    :goto_5
    invoke-static {p1, v0, v2, v7, v1}, Lw3;->v(Landroid/content/Context;ILwl;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v2, Lcb;

    .line 499
    .line 500
    const v3, 0x7f11023d

    .line 501
    .line 502
    .line 503
    invoke-direct {v2, p1, v3}, Lcb;-><init>(Landroid/content/Context;I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v0}, Lcb;->a(Landroid/content/res/Configuration;)V

    .line 507
    .line 508
    .line 509
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 510
    .line 511
    .line 512
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 513
    if-eqz p1, :cond_25

    .line 514
    .line 515
    invoke-virtual {v2}, Lcb;->getTheme()Landroid/content/res/Resources$Theme;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 520
    .line 521
    const/16 v3, 0x1d

    .line 522
    .line 523
    if-lt v0, v3, :cond_22

    .line 524
    .line 525
    invoke-static {p1}, Lwx;->a(Landroid/content/res/Resources$Theme;)V

    .line 526
    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_22
    sget-object v0, Lk60;->d:Ljava/lang/Object;

    .line 530
    .line 531
    monitor-enter v0

    .line 532
    :try_start_4
    sget-boolean v3, Lk60;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 533
    .line 534
    if-nez v3, :cond_23

    .line 535
    .line 536
    :try_start_5
    const-class v3, Landroid/content/res/Resources$Theme;

    .line 537
    .line 538
    const-string v4, "rebase"

    .line 539
    .line 540
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    sput-object v3, Lk60;->e:Ljava/lang/reflect/Method;

    .line 545
    .line 546
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 547
    .line 548
    .line 549
    goto :goto_6

    .line 550
    :catchall_1
    move-exception p0

    .line 551
    goto :goto_9

    .line 552
    :catch_2
    move-exception v3

    .line 553
    :try_start_6
    const-string v4, "ResourcesCompat"

    .line 554
    .line 555
    const-string v6, "Failed to retrieve rebase() method"

    .line 556
    .line 557
    invoke-static {v4, v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .line 559
    .line 560
    :goto_6
    sput-boolean v1, Lk60;->f:Z

    .line 561
    .line 562
    :cond_23
    sget-object v1, Lk60;->e:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 563
    .line 564
    if-eqz v1, :cond_24

    .line 565
    .line 566
    :try_start_7
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 567
    .line 568
    .line 569
    goto :goto_8

    .line 570
    :catch_3
    move-exception p1

    .line 571
    goto :goto_7

    .line 572
    :catch_4
    move-exception p1

    .line 573
    :goto_7
    :try_start_8
    const-string v1, "ResourcesCompat"

    .line 574
    .line 575
    const-string v3, "Failed to invoke rebase() method via reflection"

    .line 576
    .line 577
    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .line 579
    .line 580
    sput-object v5, Lk60;->e:Ljava/lang/reflect/Method;

    .line 581
    .line 582
    :cond_24
    :goto_8
    monitor-exit v0

    .line 583
    goto :goto_a

    .line 584
    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 585
    throw p0

    .line 586
    :catch_5
    :cond_25
    :goto_a
    move-object p1, v2

    .line 587
    :goto_b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 588
    .line 589
    .line 590
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()Lk60;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lk60;->h()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lz2;->l()Lk60;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x52

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lk60;->A(Landroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lka;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "Local FragmentActivity "

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, " State:"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "  "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "mCreated="

    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lz2;->v:Z

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    .line 57
    .line 58
    const-string v1, " mResumed="

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lz2;->w:Z

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, " mStopped="

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Lz2;->x:Z

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-interface {p0}, Lc80;->e()Lb80;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v2, Lhb;->b:Lhb;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-class v3, Ltl;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 105
    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object v1, v1, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lz70;

    .line 117
    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_0

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v2, v2, Lib;->a:Ljava/util/AbstractMap;

    .line 134
    .line 135
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lhd;->d:Lhd;

    .line 141
    .line 142
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :try_start_0
    new-instance v2, Ltl;

    .line 146
    .line 147
    invoke-direct {v2}, Ltl;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    :goto_0
    move-object v5, v2

    .line 151
    goto :goto_1

    .line 152
    :catch_0
    new-instance v2, Ltl;

    .line 153
    .line 154
    invoke-direct {v2}, Ltl;-><init>()V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :goto_1
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lz70;

    .line 163
    .line 164
    if-eqz v1, :cond_1

    .line 165
    .line 166
    invoke-virtual {v1}, Lz70;->a()V

    .line 167
    .line 168
    .line 169
    :cond_1
    :goto_2
    check-cast v5, Ltl;

    .line 170
    .line 171
    iget-object v1, v5, Ltl;->c:Lq20;

    .line 172
    .line 173
    iget v2, v1, Lq20;->c:I

    .line 174
    .line 175
    if-lez v2, :cond_5

    .line 176
    .line 177
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v2, "Loaders:"

    .line 181
    .line 182
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget v2, v1, Lq20;->c:I

    .line 186
    .line 187
    if-gtz v2, :cond_2

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_2
    iget-object p0, v1, Lq20;->b:[Ljava/lang/Object;

    .line 191
    .line 192
    const/4 p1, 0x0

    .line 193
    aget-object p0, p0, p1

    .line 194
    .line 195
    if-eqz p0, :cond_3

    .line 196
    .line 197
    invoke-static {}, Lc2;->l()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string p0, "  #"

    .line 205
    .line 206
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object p0, v1, Lq20;->a:[I

    .line 210
    .line 211
    aget p0, p0, p1

    .line 212
    .line 213
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    .line 215
    .line 216
    const-string p0, ": "

    .line 217
    .line 218
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const/4 p0, 0x0

    .line 222
    throw p0

    .line 223
    :cond_4
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 224
    .line 225
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_5
    :goto_3
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 230
    .line 231
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p0, Lwf;

    .line 234
    .line 235
    iget-object p0, p0, Lwf;->m:Lig;

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/a;->t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lw3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lw3;->y()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lw3;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lw3;

    .line 6
    .line 7
    iget-object v0, p0, Lw3;->o:Lr30;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lw3;->C()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lr30;

    .line 15
    .line 16
    iget-object v1, p0, Lw3;->n:Lk60;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lk60;->u()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lw3;->k:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v0, v1}, Lr30;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lw3;->o:Lr30;

    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lw3;->o:Lr30;

    .line 33
    .line 34
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lv60;->a:I

    .line 2
    .line 3
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lj3;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k()Lj3;
    .locals 2

    .line 1
    iget-object v0, p0, Lz2;->y:Lw3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lj3;->a:Lc6;

    .line 6
    .line 7
    new-instance v0, Lw3;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lw3;-><init>(Landroid/content/Context;Landroid/view/Window;Lc3;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lz2;->y:Lw3;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lz2;->y:Lw3;

    .line 16
    .line 17
    return-object p0
.end method

.method public final l()Lk60;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lw3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lw3;->C()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lw3;->n:Lk60;

    .line 11
    .line 12
    return-object p0
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0901e2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0901e5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0901e4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0901e3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final o(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Lc9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lwf;

    .line 12
    .line 13
    iget-object p0, p0, Lwf;->m:Lig;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/a;->h()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lz2;->o(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    iget-boolean p1, p0, Lw3;->F:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lw3;->z:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lw3;->C()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lw3;->n:Lk60;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lk60;->x()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lz3;->a()Lz3;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lw3;->k:Landroid/content/Context;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object v1, p1, Lz3;->a:Lrx;

    .line 36
    .line 37
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v2, v1, Lrx;->b:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lam;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lam;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit p1

    .line 56
    new-instance p1, Landroid/content/res/Configuration;

    .line 57
    .line 58
    iget-object v0, p0, Lw3;->k:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lw3;->R:Landroid/content/res/Configuration;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1, p1}, Lw3;->p(ZZ)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    throw p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    throw p0
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 5
    .line 6
    sget-object v0, Llk;->ON_CREATE:Llk;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 12
    .line 13
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lwf;

    .line 16
    .line 17
    iget-object p0, p0, Lwf;->m:Lig;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Landroidx/fragment/app/a;->z:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/fragment/app/a;->A:Z

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 25
    .line 26
    iput-boolean p1, v0, Lkg;->h:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->s(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lz2;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 11
    .line 12
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lwf;

    .line 15
    .line 16
    iget-object p0, p0, Lwf;->m:Lig;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/a;->j()Z

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 25
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    check-cast v0, Lwf;

    iget-object v0, v0, Lwf;->m:Lig;

    .line 26
    iget-object v0, v0, Landroidx/fragment/app/a;->f:Lzf;

    .line 27
    invoke-virtual {v0, p1, p2, p3, p4}, Lzf;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwf;

    .line 6
    .line 7
    iget-object v0, v0, Lwf;->m:Lig;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/a;->f:Lzf;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Lzf;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lj3;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 5
    .line 6
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lwf;

    .line 9
    .line 10
    iget-object p0, p0, Lwf;->m:Lig;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/a;->l()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lz2;->q(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lz2;->l()Lk60;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const v0, 0x102002c

    .line 18
    .line 19
    .line 20
    if-ne p2, v0, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lk60;->t()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-int/lit8 p1, p1, 0x4

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lz2;->v()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lwf;

    .line 6
    .line 7
    iget-object p0, p0, Lwf;->m:Lig;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/a;->m()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/a;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lz2;->r(ILandroid/view/Menu;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lz2;->w:Z

    .line 6
    .line 7
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 8
    .line 9
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lwf;

    .line 12
    .line 13
    iget-object v0, v0, Lwf;->m:Lig;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->s(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 20
    .line 21
    sget-object v0, Llk;->ON_PAUSE:Llk;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lwf;

    .line 6
    .line 7
    iget-object p0, p0, Lwf;->m:Lig;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/a;->q()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    invoke-virtual {p0}, Lw3;->y()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz2;->s()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    invoke-virtual {p0}, Lw3;->C()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lw3;->n:Lk60;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lk60;->G(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 9
    .line 10
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lwf;

    .line 13
    .line 14
    iget-object p0, p0, Lwf;->m:Lig;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/a;->r()Z

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lz2;->w:Z

    .line 11
    .line 12
    iget-object p0, v0, Lc9;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lwf;

    .line 15
    .line 16
    iget-object p0, p0, Lwf;->m:Lig;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/fragment/app/a;->w(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->t()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lw3;->p(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    .line 1
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz2;->u()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    invoke-virtual {p0}, Lw3;->C()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lw3;->n:Lk60;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lk60;->G(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lj3;->o(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()Lk60;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lk60;->B()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 5
    .line 6
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lwf;

    .line 9
    .line 10
    iget-object v0, v0, Lwf;->m:Lig;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/a;->k()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 16
    .line 17
    sget-object v0, Llk;->ON_DESTROY:Llk;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final q(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 p2, 0x6

    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lwf;

    .line 21
    .line 22
    iget-object p0, p0, Lwf;->m:Lig;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/a;->i()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lwf;

    .line 32
    .line 33
    iget-object p0, p0, Lwf;->m:Lig;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/a;->n()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final r(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 4
    .line 5
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lwf;

    .line 8
    .line 9
    iget-object v0, v0, Lwf;->m:Lig;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/a;->o()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onPanelClosed(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 5
    .line 6
    sget-object v1, Llk;->ON_RESUME:Llk;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 12
    .line 13
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lwf;

    .line 16
    .line 17
    iget-object p0, p0, Lwf;->m:Lig;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/a;->z:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/fragment/app/a;->A:Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 25
    .line 26
    iput-boolean v0, v1, Lkg;->h:Z

    .line 27
    .line 28
    const/4 v0, 0x7

    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz2;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lj3;->i(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lz2;->m()V

    .line 13
    invoke-virtual {p0}, Lz2;->k()Lj3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lj3;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lz2;->m()V

    .line 15
    invoke-virtual {p0}, Lz2;->k()Lj3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lj3;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lw3;

    .line 9
    .line 10
    iput p1, p0, Lw3;->T:I

    .line 11
    .line 12
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc9;->t()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lwf;

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lz2;->x:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Lz2;->v:Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Lz2;->v:Z

    .line 22
    .line 23
    iget-object v2, v0, Lwf;->m:Lig;

    .line 24
    .line 25
    iput-boolean v1, v2, Landroidx/fragment/app/a;->z:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Landroidx/fragment/app/a;->A:Z

    .line 28
    .line 29
    iget-object v4, v2, Landroidx/fragment/app/a;->G:Lkg;

    .line 30
    .line 31
    iput-boolean v1, v4, Lkg;->h:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->s(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Lwf;->m:Lig;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->w(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 43
    .line 44
    sget-object v2, Llk;->ON_START:Llk;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lwf;->m:Lig;

    .line 50
    .line 51
    iput-boolean v1, p0, Landroidx/fragment/app/a;->z:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Landroidx/fragment/app/a;->A:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 56
    .line 57
    iput-boolean v1, v0, Lkg;->h:Z

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lz2;->x:Z

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lz2;->t:Lc9;

    .line 8
    .line 9
    iget-object v2, v1, Lc9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lwf;

    .line 12
    .line 13
    iget-object v2, v2, Lwf;->m:Lig;

    .line 14
    .line 15
    invoke-static {v2}, Lz2;->n(Landroidx/fragment/app/a;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lc9;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lwf;

    .line 24
    .line 25
    iget-object v1, v1, Lwf;->m:Lig;

    .line 26
    .line 27
    iput-boolean v0, v1, Landroidx/fragment/app/a;->A:Z

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/fragment/app/a;->G:Lkg;

    .line 30
    .line 31
    iput-boolean v0, v2, Lkg;->h:Z

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lz2;->u:Landroidx/lifecycle/a;

    .line 38
    .line 39
    sget-object v0, Llk;->ON_STOP:Llk;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public v()Z
    .locals 5

    .line 1
    invoke-static {p0}, Ls8;->s(Lz2;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-static {p0, v0}, Ltq;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ls8;->s(Lz2;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Ls8;->s(Lz2;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :try_start_0
    invoke-static {p0, v3}, Ls8;->t(Lz2;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {p0, v3}, Ls8;->t(Lz2;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string v0, "TaskStackBuilder"

    .line 73
    .line 74
    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    .line 75
    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    new-array v2, v1, [Landroid/content/Intent;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, [Landroid/content/Intent;

    .line 98
    .line 99
    new-instance v2, Landroid/content/Intent;

    .line 100
    .line 101
    aget-object v3, v0, v1

    .line 102
    .line 103
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    const v3, 0x1000c000

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    aput-object v2, v0, v1

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lxa;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    :try_start_1
    invoke-static {p0}, Ln1;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    const-string p0, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 128
    .line 129
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v1

    .line 133
    :cond_5
    invoke-static {p0, v0}, Ltq;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 134
    .line 135
    .line 136
    :goto_2
    const/4 p0, 0x1

    .line 137
    return p0

    .line 138
    :cond_6
    return v1
.end method

.method public final w(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lw3;

    .line 6
    .line 7
    iget-object v0, p0, Lw3;->j:Ljava/lang/Object;

    .line 8
    .line 9
    instance-of v0, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lw3;->C()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lw3;->n:Lk60;

    .line 18
    .line 19
    instance-of v1, v0, Lt80;

    .line 20
    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lw3;->o:Lr30;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lk60;->y()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-object v1, p0, Lw3;->n:Lk60;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    new-instance v0, Le50;

    .line 36
    .line 37
    iget-object v1, p0, Lw3;->j:Ljava/lang/Object;

    .line 38
    .line 39
    instance-of v2, v1, Landroid/app/Activity;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v1, Landroid/app/Activity;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lw3;->q:Ljava/lang/CharSequence;

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Lw3;->m:Lq3;

    .line 53
    .line 54
    invoke-direct {v0, p1, v1, v2}, Le50;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lq3;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lw3;->n:Lk60;

    .line 58
    .line 59
    iget-object v1, p0, Lw3;->m:Lq3;

    .line 60
    .line 61
    iget-object v0, v0, Le50;->u:Lc50;

    .line 62
    .line 63
    iput-object v0, v1, Lq3;->b:Lc50;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lw3;->m:Lq3;

    .line 71
    .line 72
    iput-object v1, p1, Lq3;->b:Lc50;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Lw3;->b()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    const-string p0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 79
    .line 80
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
