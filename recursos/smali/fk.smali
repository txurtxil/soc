.class public final Lfk;
.super Lgu;
.source "SourceFile"


# instance fields
.field public b0:Landroid/content/SharedPreferences;

.field public c0:Ljava/util/List;

.field public final d0:[Lidv/lzn/screenonauto/ShortcutSlotPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgu;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 6
    .line 7
    iput-object v0, p0, Lfk;->d0:[Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lfk;->b0:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-static {p1}, Lgt;->k(Landroid/content/SharedPreferences;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lfk;->c0:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p0, Lgu;->U:Llu;

    .line 26
    .line 27
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v2, Landroidx/preference/PreferenceScreen;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, v0, v3}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->k(Llu;)V

    .line 41
    .line 42
    .line 43
    move p1, v1

    .line 44
    :goto_0
    const/4 v0, 0x4

    .line 45
    if-ge p1, v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 48
    .line 49
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v0, v4, v3}, Lidv/lzn/screenonauto/ShortcutSlotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v1, v0, Landroidx/preference/Preference;->s:Z

    .line 57
    .line 58
    iget-boolean v4, v0, Landroidx/preference/Preference;->C:Z

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    if-eq v4, v5, :cond_0

    .line 62
    .line 63
    iput-boolean v5, v0, Landroidx/preference/Preference;->C:Z

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/preference/Preference;->h()V

    .line 66
    .line 67
    .line 68
    :cond_0
    new-instance v4, Ldk;

    .line 69
    .line 70
    invoke-direct {v4, p1, p0}, Ldk;-><init>(ILfk;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->Q:Ldk;

    .line 74
    .line 75
    new-instance v4, Lg6;

    .line 76
    .line 77
    invoke-direct {v4, p1, p0}, Lg6;-><init>(ILfk;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, v0, Landroidx/preference/Preference;->f:Lbu;

    .line 81
    .line 82
    iget-object v4, p0, Lfk;->d0:[Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 83
    .line 84
    aput-object v0, v4, p1

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->A(Landroidx/preference/Preference;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v2}, Lgu;->O(Landroidx/preference/PreferenceScreen;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    if-ge v1, v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lfk;->Q(I)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method

.method public final Q(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lfk;->d0:[Lidv/lzn/screenonauto/ShortcutSlotPreference;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lfk;->c0:Ljava/util/List;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lck;

    .line 18
    .line 19
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v1, Lck;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    const v7, 0x7f10004e

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    add-int/2addr p1, v8

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, v7, p1}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, v0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 50
    .line 51
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    iput-object p1, v0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/preference/Preference;->h()V

    .line 60
    .line 61
    .line 62
    :cond_1
    const p1, 0x7f10004d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lvf;->l(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v6, v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->O:Z

    .line 76
    .line 77
    iput-boolean v6, v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->P:Z

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/preference/Preference;->h()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-static {v3, v4}, Lz5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object v5, v4

    .line 91
    :goto_0
    iget-object v9, v0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 92
    .line 93
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-nez v9, :cond_4

    .line 98
    .line 99
    iput-object v5, v0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/preference/Preference;->h()V

    .line 102
    .line 103
    .line 104
    :cond_4
    add-int/2addr p1, v8

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, v7, p1}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->x(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lek;

    .line 124
    .line 125
    invoke-direct {p1, p0, v0}, Lek;-><init>(Lfk;Lidv/lzn/screenonauto/ShortcutSlotPreference;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget-object v2, Lz5;->a:Ljava/util/concurrent/ExecutorService;

    .line 133
    .line 134
    new-instance v3, Lx5;

    .line 135
    .line 136
    invoke-direct {v3, p0, v4, p1, v6}, Lx5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    iget-boolean p0, v1, Lck;->b:Z

    .line 143
    .line 144
    iput-boolean p0, v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->O:Z

    .line 145
    .line 146
    iput-boolean v8, v0, Lidv/lzn/screenonauto/ShortcutSlotPreference;->P:Z

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/preference/Preference;->h()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    const-string p0, "model"

    .line 153
    .line 154
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v2
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 1

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
    new-instance v0, Lb2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/a;->S(Lgu;Lmg;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
