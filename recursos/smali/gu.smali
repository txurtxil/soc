.class public abstract Lgu;
.super Lvf;
.source "SourceFile"


# instance fields
.field public final T:Lfu;

.field public U:Llu;

.field public V:Landroidx/recyclerview/widget/RecyclerView;

.field public W:Z

.field public X:Z

.field public Y:I

.field public final Z:Ldb0;

.field public final a0:Lc7;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lvf;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfu;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lfu;-><init>(Lgu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgu;->T:Lfu;

    .line 10
    .line 11
    const v0, 0x7f0c0081

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lgu;->Y:I

    .line 15
    .line 16
    new-instance v0, Ldb0;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-direct {v0, p0, v1, v2}, Ldb0;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lgu;->Z:Ldb0;

    .line 27
    .line 28
    new-instance v0, Lc7;

    .line 29
    .line 30
    const/16 v1, 0xb

    .line 31
    .line 32
    invoke-direct {v0, v1, p0}, Lc7;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lgu;->a0:Lc7;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    iget-object v0, p0, Lgu;->U:Llu;

    .line 5
    .line 6
    iput-object p0, v0, Llu;->h:Lgu;

    .line 7
    .line 8
    iput-object p0, v0, Llu;->i:Lgu;

    .line 9
    .line 10
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    iget-object p0, p0, Lgu;->U:Llu;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Llu;->h:Lgu;

    .line 8
    .line 9
    iput-object v0, p0, Llu;->i:Lgu;

    .line 10
    .line 11
    return-void
.end method

.method public final C(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "android:preferences"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lgu;->U:Llu;

    .line 12
    .line 13
    iget-object v0, v0, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lgu;->W:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lgu;->U:Llu;

    .line 25
    .line 26
    iget-object p1, p1, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    new-instance v1, Lju;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lju;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Ldw;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lgu;->X:Z

    .line 45
    .line 46
    return-void
.end method

.method public final M(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 1
    iget-object p0, p0, Lgu;->U:Llu;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object p0, p0, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->B(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public abstract N(Ljava/lang/String;)V
.end method

.method public final O(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgu;->U:Llu;

    .line 2
    .line 3
    iget-object v1, v0, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 4
    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, v0, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lgu;->W:Z

    .line 16
    .line 17
    iget-boolean v0, p0, Lgu;->X:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lgu;->Z:Ldb0;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final P(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgu;->U:Llu;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Llu;->e:Z

    .line 11
    .line 12
    new-instance v2, Lku;

    .line 13
    .line 14
    invoke-direct {v2, v1, v0}, Lku;-><init>(Landroid/content/Context;Llu;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    invoke-virtual {v2, p1}, Lku;->c(Landroid/content/res/XmlResourceParser;)Landroidx/preference/PreferenceGroup;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 30
    .line 31
    .line 32
    check-cast v1, Landroidx/preference/PreferenceScreen;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->k(Llu;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Llu;->d:Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, v0, Llu;->e:Z

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->B(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    instance-of p1, v1, Landroidx/preference/PreferenceScreen;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p0, "Preference object with key "

    .line 59
    .line 60
    const-string p1, " is not a PreferenceScreen"

    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :goto_0
    check-cast v1, Landroidx/preference/PreferenceScreen;

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lgu;->O(Landroidx/preference/PreferenceScreen;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string p1, "This should be called after super.onCreate."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvf;->D:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v2, "android:support:fragments"

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lvf;->u:Lig;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Landroidx/fragment/app/a;->O(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lvf;->u:Lig;

    .line 21
    .line 22
    iput-boolean v1, p1, Landroidx/fragment/app/a;->z:Z

    .line 23
    .line 24
    iput-boolean v1, p1, Landroidx/fragment/app/a;->A:Z

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/fragment/app/a;->G:Lkg;

    .line 27
    .line 28
    iput-boolean v1, v2, Lkg;->h:Z

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lvf;->u:Lig;

    .line 34
    .line 35
    iget v2, p1, Landroidx/fragment/app/a;->n:I

    .line 36
    .line 37
    if-lt v2, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput-boolean v1, p1, Landroidx/fragment/app/a;->z:Z

    .line 41
    .line 42
    iput-boolean v1, p1, Landroidx/fragment/app/a;->A:Z

    .line 43
    .line 44
    iget-object v2, p1, Landroidx/fragment/app/a;->G:Lkg;

    .line 45
    .line 46
    iput-boolean v1, v2, Lkg;->h:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    new-instance p1, Landroid/util/TypedValue;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v3, 0x7f04037f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 68
    .line 69
    .line 70
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    const p1, 0x7f110161

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Llu;

    .line 89
    .line 90
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Llu;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lgu;->U:Llu;

    .line 98
    .line 99
    iput-object p0, p1, Llu;->j:Lgu;

    .line 100
    .line 101
    iget-object p1, p0, Lvf;->f:Landroid/os/Bundle;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    :goto_1
    invoke-virtual {p0, p1}, Lgu;->N(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final s(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lsv;->h:[I

    .line 7
    .line 8
    const v3, 0x7f040379

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v2, p0, Lgu;->Y:I

    .line 17
    .line 18
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, p0, Lgu;->Y:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, -0x1

    .line 31
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v7, 0x3

    .line 36
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v0, p0, Lgu;->Y:I

    .line 52
    .line 53
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const v0, 0x102003f

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    instance-of v7, v0, Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-eqz v7, :cond_8

    .line 67
    .line 68
    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v7, "android.hardware.type.automotive"

    .line 79
    .line 80
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    const v1, 0x7f090161

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const v1, 0x7f0c0083

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v1, p1

    .line 106
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    .line 110
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Llw;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lmu;

    .line 120
    .line 121
    invoke-direct {p1, v1}, Lmu;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lzw;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iput-object v1, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .line 129
    iget-object p1, p0, Lgu;->T:Lfu;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Liw;)V

    .line 132
    .line 133
    .line 134
    if-eqz v3, :cond_1

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iput v1, p1, Lfu;->b:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    iput v4, p1, Lfu;->b:I

    .line 147
    .line 148
    :goto_1
    iput-object v3, p1, Lfu;->a:Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    iget-object v1, p1, Lfu;->d:Lgu;

    .line 151
    .line 152
    iget-object v3, v1, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const-string v7, "Cannot invalidate item decorations during a scroll or layout"

    .line 161
    .line 162
    if-nez v4, :cond_2

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Llw;

    .line 166
    .line 167
    if-eqz v4, :cond_3

    .line 168
    .line 169
    invoke-virtual {v4, v7}, Llw;->b(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->K()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 176
    .line 177
    .line 178
    :goto_2
    if-eq v5, v6, :cond_6

    .line 179
    .line 180
    iput v5, p1, Lfu;->b:I

    .line 181
    .line 182
    iget-object v1, v1, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    .line 184
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_4

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Llw;

    .line 194
    .line 195
    if-eqz v3, :cond_5

    .line 196
    .line 197
    invoke-virtual {v3, v7}, Llw;->b(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->K()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 204
    .line 205
    .line 206
    :cond_6
    :goto_3
    iput-boolean v2, p1, Lfu;->c:Z

    .line 207
    .line 208
    iget-object p1, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-nez p1, :cond_7

    .line 215
    .line 216
    iget-object p1, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    iget-object p1, p0, Lgu;->Z:Ldb0;

    .line 222
    .line 223
    iget-object p0, p0, Lgu;->a0:Lc7;

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    .line 227
    .line 228
    return-object p2

    .line 229
    :cond_8
    const-string p0, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 230
    .line 231
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-object v1
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgu;->a0:Lc7;

    .line 2
    .line 3
    iget-object v1, p0, Lgu;->Z:Ldb0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lgu;->W:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Ldw;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lgu;->U:Llu;

    .line 23
    .line 24
    iget-object v1, v1, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->n()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object v2, p0, Lgu;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iput-boolean v0, p0, Lvf;->D:Z

    .line 34
    .line 35
    return-void
.end method

.method public final z(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lgu;->U:Llu;

    .line 2
    .line 3
    iget-object p0, p0, Llu;->g:Landroidx/preference/PreferenceScreen;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->c(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "android:preferences"

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
