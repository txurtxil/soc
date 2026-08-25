.class public final Ldz;
.super Lgu;
.source "SourceFile"


# instance fields
.field public b0:Landroidx/preference/Preference;

.field public c0:Landroidx/preference/SwitchPreferenceCompat;

.field public d0:Landroidx/preference/SwitchPreferenceCompat;

.field public final e0:Lx6;

.field public final f0:Ly6;

.field public g0:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgu;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx6;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Lx6;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ldz;->e0:Lx6;

    .line 11
    .line 12
    new-instance v0, Ly6;

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Ly6;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldz;->f0:Ly6;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/String;)V
    .locals 2

    .line 1
    const v0, 0x7f130006

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lgu;->P(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "root_status"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ldz;->b0:Landroidx/preference/Preference;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lzy;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lzy;-><init>(Ldz;I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 24
    .line 25
    :cond_0
    const-string p1, "root_screen_off"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 32
    .line 33
    iput-object p1, p0, Ldz;->c0:Landroidx/preference/SwitchPreferenceCompat;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance v0, Lzy;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v0, p0, v1}, Lzy;-><init>(Ldz;I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p1, Landroidx/preference/Preference;->e:Lau;

    .line 44
    .line 45
    :cond_1
    const-string p1, "root_touch_injection"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 52
    .line 53
    iput-object p1, p0, Ldz;->d0:Landroidx/preference/SwitchPreferenceCompat;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-instance v0, Lzy;

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {v0, p0, v1}, Lzy;-><init>(Ldz;I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p1, Landroidx/preference/Preference;->e:Lau;

    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final Q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lvf;->h()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v4, "root_user_disconnected"

    .line 27
    .line 28
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getLastConnectedKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->presentBackends(Landroid/content/Context;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object v3, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 54
    .line 55
    if-ne v2, v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isAuthorised(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :cond_5
    invoke-static {v2}, Lqj;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Ldz;->S(Ljava/util/List;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final R(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcz;->a:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    const p1, 0x7f100111

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const p1, 0x7f100112

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-virtual {p0, p1}, Lvf;->l(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final S(Ljava/util/List;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lvf;->h()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->presentBackends(Landroid/content/Context;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    invoke-static {p1}, Lv9;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 26
    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isAuthorised(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    iput-object p1, p0, Ldz;->g0:Ljava/util/List;

    .line 38
    .line 39
    const/16 p0, 0x12c1

    .line 40
    .line 41
    invoke-virtual {v2, v1, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->requestAuthorisation(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    sget-object v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 46
    .line 47
    new-instance v3, Lbz;

    .line 48
    .line 49
    invoke-direct {v3, p0, p1, p2, v1}, Lbz;-><init>(Ldz;Ljava/util/List;ZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0, v1, v3}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->connect(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final T()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lvf;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_9

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->presentBackends(Landroid/content/Context;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lv9;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 24
    .line 25
    iget-object v3, p0, Ldz;->b0:Landroidx/preference/Preference;

    .line 26
    .line 27
    if-eqz v3, :cond_5

    .line 28
    .line 29
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getConnectedKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    :cond_1
    invoke-virtual {p0, v4}, Ldz;->R(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const v5, 0x7f1000fc

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v5, v4}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-nez v2, :cond_3

    .line 59
    .line 60
    const v4, 0x7f1000fe

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v4}, Lvf;->l(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    sget-object v4, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;->SHIZUKU:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 69
    .line 70
    if-ne v2, v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isAuthorised(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Ldz;->R(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v5, 0x7f100100

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v5, v4}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p0, v2}, Ldz;->R(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const v5, 0x7f1000fd

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v5, v4}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v3, p0, Ldz;->b0:Landroidx/preference/Preference;

    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    const/4 v5, 0x0

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    move v2, v4

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    move v2, v5

    .line 123
    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->u(Z)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "auto_dim"

    .line 135
    .line 136
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getDisplayPowerModeStatus()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    const/4 v3, 0x7

    .line 151
    if-ne v2, v3, :cond_8

    .line 152
    .line 153
    move v3, v4

    .line 154
    goto :goto_2

    .line 155
    :cond_8
    move v3, v5

    .line 156
    :goto_2
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_a

    .line 161
    .line 162
    const/4 v6, 0x6

    .line 163
    if-eq v2, v6, :cond_9

    .line 164
    .line 165
    const/4 v6, -0x1

    .line 166
    if-ne v2, v6, :cond_a

    .line 167
    .line 168
    :cond_9
    move v6, v4

    .line 169
    goto :goto_3

    .line 170
    :cond_a
    move v6, v5

    .line 171
    :goto_3
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_b

    .line 176
    .line 177
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getDisplayPowerModeSupported()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-nez v7, :cond_b

    .line 182
    .line 183
    if-nez v6, :cond_b

    .line 184
    .line 185
    if-nez v3, :cond_b

    .line 186
    .line 187
    move v7, v4

    .line 188
    goto :goto_4

    .line 189
    :cond_b
    move v7, v5

    .line 190
    :goto_4
    iget-object v8, p0, Ldz;->c0:Landroidx/preference/SwitchPreferenceCompat;

    .line 191
    .line 192
    if-eqz v8, :cond_d

    .line 193
    .line 194
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_c

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    if-nez v7, :cond_c

    .line 203
    .line 204
    if-nez v6, :cond_c

    .line 205
    .line 206
    if-nez v3, :cond_c

    .line 207
    .line 208
    move v0, v4

    .line 209
    goto :goto_5

    .line 210
    :cond_c
    move v0, v5

    .line 211
    :goto_5
    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->u(Z)V

    .line 212
    .line 213
    .line 214
    :cond_d
    iget-object v0, p0, Ldz;->c0:Landroidx/preference/SwitchPreferenceCompat;

    .line 215
    .line 216
    if-eqz v0, :cond_16

    .line 217
    .line 218
    if-eqz v3, :cond_e

    .line 219
    .line 220
    const v2, 0x7f1000f6

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v2}, Lvf;->l(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    goto :goto_7

    .line 228
    :cond_e
    if-eqz v6, :cond_f

    .line 229
    .line 230
    const v2, 0x7f1000f8

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v2}, Lvf;->l(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    goto :goto_7

    .line 238
    :cond_f
    if-eqz v7, :cond_15

    .line 239
    .line 240
    if-eq v2, v4, :cond_14

    .line 241
    .line 242
    const/4 v3, 0x2

    .line 243
    if-eq v2, v3, :cond_13

    .line 244
    .line 245
    const/4 v3, 0x3

    .line 246
    if-eq v2, v3, :cond_12

    .line 247
    .line 248
    const/4 v3, 0x4

    .line 249
    if-eq v2, v3, :cond_11

    .line 250
    .line 251
    const/4 v3, 0x5

    .line 252
    if-eq v2, v3, :cond_10

    .line 253
    .line 254
    const v2, 0x7f100119

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    const v2, 0x7f100115

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_11
    const v2, 0x7f100114

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_12
    const v2, 0x7f100117

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_13
    const v2, 0x7f100116

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_14
    const v2, 0x7f100118

    .line 275
    .line 276
    .line 277
    :goto_6
    invoke-virtual {p0, v2}, Lvf;->l(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const v3, 0x7f1000fb

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v3, v2}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    goto :goto_7

    .line 293
    :cond_15
    const v2, 0x7f1000f9

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v2}, Lvf;->l(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    :goto_7
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    :cond_16
    iget-object p0, p0, Ldz;->d0:Landroidx/preference/SwitchPreferenceCompat;

    .line 304
    .line 305
    if-eqz p0, :cond_18

    .line 306
    .line 307
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->isConnected()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_17

    .line 312
    .line 313
    invoke-virtual {v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->getTouchInjectionSupported()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_17

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_17
    move v4, v5

    .line 321
    :goto_8
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->u(Z)V

    .line 322
    .line 323
    .line 324
    :cond_18
    :goto_9
    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lgu;->r(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 5
    .line 6
    new-instance v0, Lzy;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lzy;-><init>(Ldz;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->setAuthorisationResultCallback(Lgh;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    sget-object p0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->setAuthorisationResultCallback(Lgh;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 5
    .line 6
    iget-object v1, p0, Ldz;->e0:Lx6;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnStateChangedListener(Lch;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Ldz;->f0:Ly6;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnBackendAvailableListener(Lrg;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnConnectionLostListener(Lrg;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 5
    .line 6
    iget-object v1, p0, Ldz;->e0:Lx6;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnStateChangedListener(Lch;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ldz;->f0:Ly6;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnBackendAvailableListener(Lrg;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnConnectionLostListener(Lrg;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ldz;->T()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ldz;->Q()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
