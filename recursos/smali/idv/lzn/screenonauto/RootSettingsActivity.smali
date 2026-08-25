.class public final Lidv/lzn/screenonauto/RootSettingsActivity;
.super Lz2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lj3;->l()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lz2;->attachBaseContext(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lz2;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c0020

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lz2;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0901d0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lz2;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lz2;->w(Landroidx/appcompat/widget/Toolbar;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lz2;->l()Lk60;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lk60;->F(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const v0, 0x7f100102

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 36
    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lz2;->t:Lc9;

    .line 41
    .line 42
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lwf;

    .line 45
    .line 46
    iget-object p0, p0, Lwf;->m:Lig;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p1, Le7;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Le7;-><init>(Landroidx/fragment/app/a;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ldz;

    .line 57
    .line 58
    invoke-direct {p0}, Ldz;-><init>()V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f090168

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, p0}, Le7;->g(ILvf;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    invoke-virtual {p1, p0}, Le7;->d(Z)I

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const-string v0, "uimode"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/app/UiModeManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :goto_0
    invoke-virtual {v1, v2}, Lj3;->n(I)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lz2;->onStart()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final v()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method
