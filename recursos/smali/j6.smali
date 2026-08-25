.class public final synthetic Lj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lq6;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/ListView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lq6;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ListView;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6;->a:Landroid/content/Context;

    iput-object p2, p0, Lj6;->b:Ljava/lang/String;

    iput-object p3, p0, Lj6;->c:Ljava/lang/String;

    iput-object p4, p0, Lj6;->d:Lq6;

    iput-object p5, p0, Lj6;->e:Ljava/lang/String;

    iput-object p6, p0, Lj6;->f:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lj6;->g:Landroid/widget/ListView;

    iput-object p8, p0, Lj6;->h:Landroid/view/View;

    iput-object p9, p0, Lj6;->i:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lj6;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v3, "android.intent.action.MAIN"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "android.intent.category.LAUNCHER"

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v5, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "android.intent.category.HOME"

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v5, Ln6;

    .line 47
    .line 48
    const-string v6, ""

    .line 49
    .line 50
    iget-object v7, p0, Lj6;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v5, v6, v7}, Ln6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Ln6;

    .line 56
    .line 57
    const-string v7, "@home"

    .line 58
    .line 59
    iget-object v8, p0, Lj6;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v6, v7, v8}, Ln6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    filled-new-array {v5, v6}, [Ln6;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5}, Lw9;->y([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v2, v3}, Lv9;->B(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    move v7, v4

    .line 86
    :cond_0
    :goto_0
    if-ge v7, v6, :cond_1

    .line 87
    .line 88
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    move-object v9, v8

    .line 95
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 96
    .line 97
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 98
    .line 99
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-static {v9, v10}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-nez v9, :cond_0

    .line 110
    .line 111
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    move v7, v4

    .line 130
    :cond_2
    :goto_1
    if-ge v7, v6, :cond_3

    .line 131
    .line 132
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    move-object v9, v8

    .line 139
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 140
    .line 141
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 142
    .line 143
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_2

    .line 150
    .line 151
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-static {v2}, Lx9;->z(Ljava/lang/Iterable;)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    move v6, v4

    .line 169
    :goto_2
    if-ge v6, v3, :cond_4

    .line 170
    .line 171
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 178
    .line 179
    new-instance v8, Ln6;

    .line 180
    .line 181
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .line 183
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-direct {v8, v9, v7}, Ln6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    new-instance v1, Lo6;

    .line 204
    .line 205
    invoke-direct {v1, v4}, Lo6;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/4 v3, 0x1

    .line 213
    if-gt v2, v3, :cond_5

    .line 214
    .line 215
    invoke-static {v0}, Lv9;->D(Ljava/lang/Iterable;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    goto :goto_3

    .line 220
    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    array-length v2, v0

    .line 230
    if-le v2, v3, :cond_6

    .line 231
    .line 232
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 233
    .line 234
    .line 235
    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-static {v5, v0}, Lv9;->B(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    iget-object v7, p0, Lj6;->d:Lq6;

    .line 247
    .line 248
    iget-object v0, v7, Lq6;->k0:Landroid/os/Handler;

    .line 249
    .line 250
    new-instance v6, Lk6;

    .line 251
    .line 252
    iget-object v9, p0, Lj6;->e:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v10, p0, Lj6;->f:Landroid/widget/ProgressBar;

    .line 255
    .line 256
    iget-object v11, p0, Lj6;->g:Landroid/widget/ListView;

    .line 257
    .line 258
    iget-object v12, p0, Lj6;->h:Landroid/view/View;

    .line 259
    .line 260
    iget-object v13, p0, Lj6;->i:Landroid/widget/EditText;

    .line 261
    .line 262
    invoke-direct/range {v6 .. v13}, Lk6;-><init>(Lq6;Ljava/util/ArrayList;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ListView;Landroid/view/View;Landroid/widget/EditText;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    .line 267
    .line 268
    return-void
.end method
