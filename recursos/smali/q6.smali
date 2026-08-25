.class public final Lq6;
.super Lqc;
.source "SourceFile"


# instance fields
.field public final j0:Ljava/util/concurrent/ExecutorService;

.field public final k0:Landroid/os/Handler;

.field public final l0:Ljava/util/HashMap;

.field public final m0:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq6;->j0:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lq6;->k0:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lq6;->l0:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lq6;->m0:Ljava/util/HashMap;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    invoke-super {p0}, Lqc;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqc;->e0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lvf;->k()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    int-to-float v1, v1

    .line 25
    const v2, 0x3f666666    # 0.9f

    .line 26
    .line 27
    .line 28
    mul-float/2addr v1, v2

    .line 29
    float-to-int v1, v1

    .line 30
    const/4 v2, -0x2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lqc;->e0:Landroid/app/Dialog;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final N()Landroid/app/Dialog;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v1, 0x7f1000c9

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lvf;->l(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f10002b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lvf;->l(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lvf;->f:Landroid/os/Bundle;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string v6, "current_package"

    .line 35
    .line 36
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v5

    .line 42
    :goto_0
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    :cond_1
    move-object v6, v1

    .line 47
    invoke-virtual {p0}, Lvf;->k()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .line 57
    int-to-float v1, v1

    .line 58
    const/high16 v7, 0x3f000000    # 0.5f

    .line 59
    .line 60
    mul-float/2addr v1, v7

    .line 61
    float-to-int v1, v1

    .line 62
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const v8, 0x7f0c0032

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    const v7, 0x7f090053

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Landroid/widget/FrameLayout;

    .line 81
    .line 82
    const v8, 0x7f090056

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Landroid/widget/ProgressBar;

    .line 90
    .line 91
    const v10, 0x7f090055

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    check-cast v10, Landroid/widget/ListView;

    .line 99
    .line 100
    const v11, 0x7f090057

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Landroid/widget/EditText;

    .line 108
    .line 109
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .line 111
    const/4 v13, -0x1

    .line 112
    invoke-direct {v12, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v11, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lrm;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Lrm;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Ln2;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lk2;

    .line 130
    .line 131
    const v7, 0x7f1000c8

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v7}, Lvf;->l(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iput-object v7, v0, Lk2;->d:Ljava/lang/CharSequence;

    .line 139
    .line 140
    iput-object v9, v0, Lk2;->o:Landroid/view/View;

    .line 141
    .line 142
    const/high16 v7, 0x1040000

    .line 143
    .line 144
    iget-object v12, v0, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 145
    .line 146
    invoke-virtual {v12, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iput-object v7, v0, Lk2;->i:Ljava/lang/CharSequence;

    .line 151
    .line 152
    iput-object v5, v0, Lk2;->j:Leu;

    .line 153
    .line 154
    invoke-virtual {v1}, Lrm;->b()Lo2;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Lj6;

    .line 159
    .line 160
    move-object v5, p0

    .line 161
    move-object v7, v8

    .line 162
    move-object v8, v10

    .line 163
    move-object v10, v11

    .line 164
    invoke-direct/range {v1 .. v10}, Lj6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lq6;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ListView;Landroid/view/View;Landroid/widget/EditText;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, v5, Lq6;->j0:Ljava/util/concurrent/ExecutorService;

    .line 168
    .line 169
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    return-object v0
.end method

.method public final u()V
    .locals 0

    .line 1
    invoke-super {p0}, Lqc;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lq6;->j0:Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    return-void
.end method
