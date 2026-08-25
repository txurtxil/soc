.class public final Ll7;
.super Lw;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll7;->d:I

    iput-object p2, p0, Ll7;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lg0;)V
    .locals 1

    .line 1
    iget v0, p0, Ll7;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ll7;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lmu;

    .line 9
    .line 10
    iget-object v0, p0, Lmu;->g:Lyw;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lyw;->d(Landroid/view/View;Lg0;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lmu;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, -0x1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p1, Lnu;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->D(Lnu;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Ldw;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    instance-of p1, p0, Lju;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    check-cast p0, Lju;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lju;->e(I)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :pswitch_0
    iget-object p2, p2, Lg0;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 52
    .line 53
    iget-object p0, p0, Lw;->a:Landroid/view/View$AccessibilityDelegate;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 56
    .line 57
    .line 58
    const/high16 p0, 0x100000

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget v0, p0, Ll7;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ll7;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lmu;

    .line 9
    .line 10
    iget-object p0, p0, Lmu;->g:Lyw;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lyw;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_0
    const/high16 v0, 0x100000

    .line 18
    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    iget-object p0, p0, Ll7;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lp7;

    .line 24
    .line 25
    check-cast p0, Ll20;

    .line 26
    .line 27
    invoke-static {}, Lvp;->c()Lvp;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lp7;->r:Lm7;

    .line 32
    .line 33
    iget-object v0, p1, Lvp;->a:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {p1, p0}, Lvp;->d(Lm7;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 p3, 0x1

    .line 41
    const/4 v1, 0x3

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    iget-object p0, p1, Lvp;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ln20;

    .line 47
    .line 48
    invoke-virtual {p1, p0, v1}, Lvp;->a(Ln20;I)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    iget-object p2, p1, Lvp;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ln20;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-object p2, p2, Ln20;->a:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-ne p2, p0, :cond_1

    .line 67
    .line 68
    move p0, p3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    :goto_0
    if-eqz p0, :cond_2

    .line 72
    .line 73
    iget-object p0, p1, Lvp;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Ln20;

    .line 76
    .line 77
    invoke-virtual {p1, p0, v1}, Lvp;->a(Ln20;I)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    monitor-exit v0

    .line 81
    goto :goto_3

    .line 82
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0

    .line 84
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lw;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    :goto_3
    return p3

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
