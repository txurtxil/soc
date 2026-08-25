.class public final Ld50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkp;


# instance fields
.field public a:Z

.field public final synthetic b:Le50;


# direct methods
.method public constructor <init>(Le50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld50;->b:Le50;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lso;Z)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Ld50;->a:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Ld50;->a:Z

    .line 8
    .line 9
    iget-object p2, p0, Ld50;->b:Le50;

    .line 10
    .line 11
    iget-object v0, p2, Le50;->s:Lh50;

    .line 12
    .line 13
    iget-object v0, v0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Le1;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Le1;->d()Z

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Le1;->u:La1;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lep;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lep;->i:Lbp;

    .line 37
    .line 38
    invoke-interface {v0}, Lg20;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p2, p2, Le50;->t:Landroid/view/Window$Callback;

    .line 42
    .line 43
    const/16 v0, 0x6c

    .line 44
    .line 45
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Ld50;->a:Z

    .line 50
    .line 51
    return-void
.end method

.method public final q(Lso;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Ld50;->b:Le50;

    .line 2
    .line 3
    iget-object p0, p0, Le50;->t:Landroid/view/Window$Callback;

    .line 4
    .line 5
    const/16 v0, 0x6c

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method
