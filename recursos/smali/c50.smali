.class public final Lc50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La50;
.implements Lqo;


# instance fields
.field public final synthetic a:Le50;


# direct methods
.method public synthetic constructor <init>(Le50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc50;->a:Le50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lso;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public m(Lso;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lc50;->a:Le50;

    .line 2
    .line 3
    iget-object v0, p0, Le50;->s:Lh50;

    .line 4
    .line 5
    iget-object v0, v0, Lh50;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Le50;->t:Landroid/view/Window$Callback;

    .line 12
    .line 13
    const/16 v1, 0x6c

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {p0, v0, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
