.class public final Lga;
.super Landroidx/activity/result/a;
.source "SourceFile"


# instance fields
.field public final synthetic h:Landroidx/activity/a;


# direct methods
.method public constructor <init>(Landroidx/activity/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lga;->h:Landroidx/activity/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/result/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILem;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lga;->h:Landroidx/activity/a;

    .line 2
    .line 3
    invoke-virtual {p2, v0, p3}, Lem;->m(Landroid/content/Context;Ljava/lang/Object;)Lc9;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance p2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Lc5;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p3, p0, p1, v1, v0}, Lc5;-><init>(Lga;ILjava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2, v0, p3}, Lem;->i(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-nez p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    move-object v7, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v1, 0x0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_c

    .line 85
    .line 86
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 p2, 0x0

    .line 93
    if-nez p0, :cond_3

    .line 94
    .line 95
    new-array p0, p2, [Ljava/lang/String;

    .line 96
    .line 97
    :cond_3
    new-instance p3, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    move v1, p2

    .line 103
    :goto_2
    array-length v2, p0

    .line 104
    if-ge v1, v2, :cond_6

    .line 105
    .line 106
    aget-object v2, p0, v1

    .line 107
    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    invoke-static {}, Lt7;->a()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    aget-object v2, p0, v1

    .line 121
    .line 122
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 123
    .line 124
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string p3, "Permission request for permissions "

    .line 149
    .line 150
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p0, " must not contain null or empty values"

    .line 157
    .line 158
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_6
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-lez v1, :cond_7

    .line 174
    .line 175
    array-length v2, p0

    .line 176
    sub-int/2addr v2, v1

    .line 177
    new-array v2, v2, [Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move-object v2, p0

    .line 181
    :goto_3
    if-lez v1, :cond_a

    .line 182
    .line 183
    array-length v3, p0

    .line 184
    if-ne v1, v3, :cond_8

    .line 185
    .line 186
    return-void

    .line 187
    :cond_8
    move v1, p2

    .line 188
    :goto_4
    array-length v3, p0

    .line 189
    if-ge p2, v3, :cond_a

    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {p3, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_9

    .line 200
    .line 201
    add-int/lit8 v3, v1, 0x1

    .line 202
    .line 203
    aget-object v4, p0, p2

    .line 204
    .line 205
    aput-object v4, v2, v1

    .line 206
    .line 207
    move v1, v3

    .line 208
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_a
    instance-of p2, v0, Lz2;

    .line 212
    .line 213
    if-eqz p2, :cond_b

    .line 214
    .line 215
    move-object p2, v0

    .line 216
    check-cast p2, Lz2;

    .line 217
    .line 218
    :cond_b
    invoke-static {v0, p0, p1}, Lo1;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_c
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 223
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p3

    .line 232
    if-eqz p3, :cond_d

    .line 233
    .line 234
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 235
    .line 236
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Lpj;

    .line 241
    .line 242
    :try_start_0
    iget-object v1, p2, Lpj;->a:Landroid/content/IntentSender;

    .line 243
    .line 244
    iget-object v3, p2, Lpj;->b:Landroid/content/Intent;

    .line 245
    .line 246
    iget v4, p2, Lpj;->c:I

    .line 247
    .line 248
    iget v5, p2, Lpj;->d:I
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .line 250
    const/4 v6, 0x0

    .line 251
    move v2, p1

    .line 252
    :try_start_1
    invoke-static/range {v0 .. v7}, Ln1;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :goto_5
    move-object p1, v0

    .line 258
    goto :goto_6

    .line 259
    :catch_1
    move-exception v0

    .line 260
    move v2, p1

    .line 261
    goto :goto_5

    .line 262
    :goto_6
    new-instance p2, Landroid/os/Handler;

    .line 263
    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    .line 270
    .line 271
    new-instance p3, Lc5;

    .line 272
    .line 273
    const/4 v0, 0x2

    .line 274
    invoke-direct {p3, p0, v2, p1, v0}, Lc5;-><init>(Lga;ILjava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_d
    move v2, p1

    .line 282
    invoke-static {v0, p2, v2, v7}, Ln1;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method
