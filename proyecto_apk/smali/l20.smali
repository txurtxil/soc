.class public final Ll20;
.super Lp7;
.source "SourceFile"


# static fields
.field public static final z:[I


# instance fields
.field public final y:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f0403d0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0403d2

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ll20;->z:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lp7;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "accessibility"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    iput-object p1, p0, Ll20;->y:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    return-void
.end method

.method public static e(Landroid/view/View;Ljava/lang/CharSequence;)Ll20;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    instance-of v2, p0, Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x1020002

    .line 12
    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v1, p0

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    :cond_2
    if-eqz p0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    instance-of v2, p0, Landroid/view/View;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    check-cast p0, Landroid/view/View;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move-object p0, v0

    .line 36
    :cond_4
    :goto_0
    if-nez p0, :cond_0

    .line 37
    .line 38
    move-object p0, v1

    .line 39
    :goto_1
    if-eqz p0, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Ll20;->z:[I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, -0x1

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .line 68
    .line 69
    if-eq v5, v4, :cond_5

    .line 70
    .line 71
    if-eq v6, v4, :cond_5

    .line 72
    .line 73
    const v2, 0x7f0c005b

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const v2, 0x7f0c0025

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 85
    .line 86
    new-instance v2, Ll20;

    .line 87
    .line 88
    invoke-direct {v2, v0, p0, v1, v1}, Ll20;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v2, Lp7;->i:Lo7;

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :cond_6
    const-string p0, "No suitable parent found from the given view. Please provide a valid view."

    .line 108
    .line 109
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 5

    .line 1
    invoke-static {}, Lvp;->c()Lvp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Ll20;->y:Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    invoke-static {v1}, Lb0;->b(Landroid/view/accessibility/AccessibilityManager;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    iget-object p0, p0, Lp7;->r:Lm7;

    .line 21
    .line 22
    iget-object v2, v0, Lvp;->a:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    invoke-virtual {v0, p0}, Lvp;->d(Lm7;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object p0, v0, Lvp;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ln20;

    .line 34
    .line 35
    iput v1, p0, Ln20;->b:I

    .line 36
    .line 37
    iget-object v1, v0, Lvp;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lvp;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ln20;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lvp;->g(Ln20;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v2

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget-object v4, v0, Lvp;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Ln20;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iget-object v4, v4, Ln20;->a:Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-ne v4, p0, :cond_2

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    :cond_2
    if-eqz v3, :cond_3

    .line 71
    .line 72
    iget-object p0, v0, Lvp;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Ln20;

    .line 75
    .line 76
    iput v1, p0, Ln20;->b:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    new-instance v3, Ln20;

    .line 80
    .line 81
    invoke-direct {v3, v1, p0}, Ln20;-><init>(ILm7;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, v0, Lvp;->d:Ljava/lang/Object;

    .line 85
    .line 86
    :goto_1
    iget-object p0, v0, Lvp;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Ln20;

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    invoke-virtual {v0, p0, v1}, Lvp;->a(Ln20;I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    monitor-exit v2

    .line 100
    return-void

    .line 101
    :cond_4
    const/4 p0, 0x0

    .line 102
    iput-object p0, v0, Lvp;->c:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {v0}, Lvp;->h()V

    .line 105
    .line 106
    .line 107
    monitor-exit v2

    .line 108
    return-void

    .line 109
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p0
.end method
