.class public final Lidv/lzn/screenonauto/SettingsFragment;
.super Lgu;
.source "SourceFile"


# instance fields
.field public final b0:Ljb;

.field public final c0:Liq;

.field public final d0:Lcm;

.field public e0:Landroidx/preference/SwitchPreferenceCompat;

.field public f0:Landroidx/preference/Preference;

.field public g0:Landroidx/preference/Preference;

.field public h0:Landroidx/preference/SwitchPreferenceCompat;

.field public i0:Landroidx/preference/Preference;

.field public j0:Landroidx/preference/Preference;

.field public k0:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgu;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljb;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Ljb;-><init>(Lidv/lzn/screenonauto/SettingsFragment;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->b0:Ljb;

    .line 19
    .line 20
    new-instance v0, Liq;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v0, v1, p0}, Liq;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->c0:Liq;

    .line 27
    .line 28
    new-instance v0, Lcm;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lcm;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->d0:Lcm;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/String;)V
    .locals 5

    .line 1
    const v0, 0x7f130007

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lgu;->P(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "mirror"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 14
    .line 15
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->e0:Landroidx/preference/SwitchPreferenceCompat;

    .line 16
    .line 17
    sget-boolean p1, Lb00;->f:Z

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lb00;->j:Landroid/media/projection/MediaProjection;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move p1, v0

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->e0:Landroidx/preference/SwitchPreferenceCompat;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    new-instance v2, Lw00;

    .line 39
    .line 40
    invoke-direct {v2, p0, v1}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p1, Landroidx/preference/Preference;->e:Lau;

    .line 44
    .line 45
    :cond_2
    const-string p1, "notification_access"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->f0:Landroidx/preference/Preference;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    new-instance v2, Lw00;

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 62
    .line 63
    :cond_3
    const-string p1, "auto_launch_package"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 70
    .line 71
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->R()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    new-instance v2, Lw00;

    .line 79
    .line 80
    const/4 v3, 0x5

    .line 81
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 82
    .line 83
    .line 84
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 85
    .line 86
    :cond_4
    const-string p1, "auto_dim"

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 93
    .line 94
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->h0:Landroidx/preference/SwitchPreferenceCompat;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    new-instance v2, Lw00;

    .line 99
    .line 100
    const/4 v3, 0x6

    .line 101
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p1, Landroidx/preference/Preference;->e:Lau;

    .line 105
    .line 106
    :cond_5
    const-string p1, "force_landscape"

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    new-instance v2, Lw00;

    .line 117
    .line 118
    const/4 v3, 0x7

    .line 119
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p1, Landroidx/preference/Preference;->e:Lau;

    .line 123
    .line 124
    :cond_6
    const-string p1, "launch_shortcuts"

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    new-instance v2, Lw00;

    .line 133
    .line 134
    const/16 v3, 0x8

    .line 135
    .line 136
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 137
    .line 138
    .line 139
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 140
    .line 141
    :cond_7
    const-string p1, "advanced"

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    new-instance v2, Lw00;

    .line 150
    .line 151
    const/16 v3, 0x9

    .line 152
    .line 153
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 154
    .line 155
    .line 156
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 157
    .line 158
    :cond_8
    const-string p1, "root_features"

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->k0:Landroidx/preference/Preference;

    .line 165
    .line 166
    if-eqz p1, :cond_9

    .line 167
    .line 168
    new-instance v2, Lw00;

    .line 169
    .line 170
    const/16 v3, 0xa

    .line 171
    .line 172
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 173
    .line 174
    .line 175
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 176
    .line 177
    :cond_9
    const-string p1, "overlay_access"

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->i0:Landroidx/preference/Preference;

    .line 184
    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    new-instance v2, Lw00;

    .line 188
    .line 189
    const/16 v3, 0xb

    .line 190
    .line 191
    invoke-direct {v2, p0, v3}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 192
    .line 193
    .line 194
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 195
    .line 196
    :cond_a
    const-string p1, "accessibility_access"

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iput-object p1, p0, Lidv/lzn/screenonauto/SettingsFragment;->j0:Landroidx/preference/Preference;

    .line 203
    .line 204
    if-eqz p1, :cond_b

    .line 205
    .line 206
    new-instance v2, Lw00;

    .line 207
    .line 208
    invoke-direct {v2, p0, v0}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 209
    .line 210
    .line 211
    iput-object v2, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 212
    .line 213
    :cond_b
    const-string p1, "about"

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 242
    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    const/16 v3, 0x1c

    .line 246
    .line 247
    if-lt v2, v3, :cond_c

    .line 248
    .line 249
    invoke-static {v0}, Lws;->b(Landroid/content/pm/PackageInfo;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v2

    .line 253
    goto :goto_2

    .line 254
    :cond_c
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 255
    .line 256
    int-to-long v2, v0

    .line 257
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v4, "Version "

    .line 260
    .line 261
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, " ("

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, ")"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lw00;

    .line 288
    .line 289
    const/4 v1, 0x3

    .line 290
    invoke-direct {v0, p0, v1}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 291
    .line 292
    .line 293
    iput-object v0, p1, Landroidx/preference/Preference;->f:Lbu;

    .line 294
    .line 295
    :cond_d
    return-void
.end method

.method public final Q()V
    .locals 9

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "enabled_accessibility_services"

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    :cond_0
    const-string v2, ":"

    .line 31
    .line 32
    filled-new-array {v2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    aget-object v4, v2, v3

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x1

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v4, Lko;

    .line 54
    .line 55
    new-instance v5, Lb2;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x7

    .line 61
    invoke-direct {v4, v1, v5, v2, v3}, Lko;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lv00;

    .line 65
    .line 66
    invoke-direct {v2, v4}, Lv00;-><init>(Lko;)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {v2}, Lx9;->z(Ljava/lang/Iterable;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lic;

    .line 79
    .line 80
    invoke-direct {v2, v4}, Lic;-><init>(Lko;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v2}, Lic;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Lic;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lnj;

    .line 94
    .line 95
    iget v7, v4, Lnj;->a:I

    .line 96
    .line 97
    iget v4, v4, Lnj;->b:I

    .line 98
    .line 99
    add-int/2addr v4, v6

    .line 100
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v1, v4, v3, v3}, Li30;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/4 v5, -0x1

    .line 117
    if-eq v2, v5, :cond_3

    .line 118
    .line 119
    new-instance v7, Ljava/util/ArrayList;

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    move v8, v3

    .line 127
    :cond_2
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    add-int/2addr v8, v2

    .line 143
    invoke-static {v1, v4, v8, v3}, Li30;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-ne v2, v5, :cond_2

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-object v5, v7

    .line 165
    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lqj;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_5

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_9

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-nez v2, :cond_8

    .line 202
    .line 203
    if-nez v4, :cond_7

    .line 204
    .line 205
    move v2, v6

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    move v2, v3

    .line 208
    goto :goto_2

    .line 209
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    :goto_2
    if-eqz v2, :cond_6

    .line 214
    .line 215
    move v3, v6

    .line 216
    :cond_9
    :goto_3
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->j0:Landroidx/preference/Preference;

    .line 217
    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    if-eqz v3, :cond_a

    .line 221
    .line 222
    const v1, 0x7f1000c0

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_a
    const v1, 0x7f1000bf

    .line 227
    .line 228
    .line 229
    :goto_4
    invoke-virtual {p0, v1}, Lvf;->l(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    :cond_b
    return-void
.end method

.method public final R()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "auto_launch_package"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v4, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-boolean v5, v4, Landroidx/preference/Preference;->C:Z

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    iput-boolean v6, v4, Landroidx/preference/Preference;->C:Z

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/preference/Preference;->h()V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1, v0}, Lz5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    :cond_2
    iget-object v5, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    const v6, 0x7f1000cb

    .line 60
    .line 61
    .line 62
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p0, v6, v4}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v4, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    new-instance v3, Lcm;

    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    invoke-direct {v3, p0, v4}, Lcm;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    sget-object v1, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 91
    .line 92
    new-instance v4, Lx5;

    .line 93
    .line 94
    invoke-direct {v4, p0, v0, v3, v2}, Lx5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    :goto_0
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    const v1, 0x7f1000ca

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lvf;->l(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void
.end method

.method public final S(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->e0:Landroidx/preference/SwitchPreferenceCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->A(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->e0:Landroidx/preference/SwitchPreferenceCompat;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const p1, 0x7f1000e6

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p1, 0x7f1000e5

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Lvf;->l(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public final T()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lur;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "enabled_notification_listeners"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lur;->b:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :try_start_0
    sget-object v2, Lur;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const-string v2, ":"

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/util/HashSet;

    .line 38
    .line 39
    array-length v4, v2

    .line 40
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 41
    .line 42
    .line 43
    array-length v4, v2

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    if-ge v5, v4, :cond_1

    .line 46
    .line 47
    aget-object v6, v2, v5

    .line 48
    .line 49
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sput-object v3, Lur;->d:Ljava/util/HashSet;

    .line 69
    .line 70
    sput-object v0, Lur;->c:Ljava/lang/String;

    .line 71
    .line 72
    :cond_2
    sget-object v0, Lur;->d:Ljava/util/HashSet;

    .line 73
    .line 74
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->f0:Landroidx/preference/Preference;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const v0, 0x7f1000eb

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const v0, 0x7f1000ea

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {p0, v0}, Lvf;->l(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void

    .line 108
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p0
.end method

.method public final U()V
    .locals 2

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
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lidv/lzn/screenonauto/SettingsFragment;->k0:Landroidx/preference/Preference;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v1, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->presentBackends(Landroid/content/Context;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    xor-int/lit8 p0, p0, 0x1

    .line 27
    .line 28
    iget-boolean v1, v0, Landroidx/preference/Preference;->x:Z

    .line 29
    .line 30
    if-eq v1, p0, :cond_1

    .line 31
    .line 32
    iput-boolean p0, v0, Landroidx/preference/Preference;->x:Z

    .line 33
    .line 34
    iget-object p0, v0, Landroidx/preference/Preference;->H:Lju;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lju;->g:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object p0, p0, Lju;->h:Lc7;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lgu;->r(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lvf;->j()Landroidx/fragment/app/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lw00;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, v1}, Lw00;-><init>(Lidv/lzn/screenonauto/SettingsFragment;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/a;->S(Lgu;Lmg;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->b0:Ljb;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lgu;->U:Llu;

    .line 18
    .line 19
    invoke-virtual {v0}, Llu;->d()Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->c0:Liq;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 31
    .line 32
    iget-object p0, p0, Lidv/lzn/screenonauto/SettingsFragment;->d0:Lcm;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->removeOnStateChangedListener(Lch;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->T()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->i0:Landroidx/preference/Preference;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const v0, 0x7f1000ee

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v0, 0x7f1000ed

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, v0}, Lvf;->l(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->Q()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->U()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "enabled_accessibility_services"

    .line 50
    .line 51
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lidv/lzn/screenonauto/SettingsFragment;->b0:Ljb;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "enabled_notification_listeners"

    .line 62
    .line 63
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lgu;->U:Llu;

    .line 71
    .line 72
    invoke-virtual {v0}, Llu;->d()Landroid/content/SharedPreferences;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->h0:Landroidx/preference/SwitchPreferenceCompat;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    const-string v3, "auto_dim"

    .line 83
    .line 84
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->A(Z)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lidv/lzn/screenonauto/SettingsFragment;->c0:Liq;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedManager;

    .line 97
    .line 98
    iget-object p0, p0, Lidv/lzn/screenonauto/SettingsFragment;->d0:Lcm;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->addOnStateChangedListener(Lch;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
