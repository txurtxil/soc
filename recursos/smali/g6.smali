.class public final synthetic Lg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai;
.implements Lbu;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILfk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg6;->a:I

    iput-object p2, p0, Lg6;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6;->b:Ljava/lang/Object;

    iput p2, p0, Lg6;->a:I

    return-void
.end method


# virtual methods
.method public b(Landroidx/preference/Preference;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lg6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lfk;

    .line 4
    .line 5
    iget-object v0, p1, Lfk;->c0:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lg6;->a:I

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lck;

    .line 16
    .line 17
    iget-object v0, v0, Lck;->a:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Lq6;

    .line 20
    .line 21
    invoke-direct {v1}, Lq6;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "slot"

    .line 30
    .line 31
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string p0, "current_package"

    .line 35
    .line 36
    invoke-virtual {v2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lvf;->J(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lvf;->j()Landroidx/fragment/app/a;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "AppPickerDialog"

    .line 47
    .line 48
    invoke-virtual {v1, p0, p1}, Lqc;->O(Landroidx/fragment/app/a;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "model"

    .line 53
    .line 54
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0
.end method

.method public e(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg6;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget p0, p0, Lg6;->a:I

    .line 6
    .line 7
    check-cast p1, Landroidx/car/app/IAppHost;

    .line 8
    .line 9
    invoke-interface {p1, v0, p0}, Landroidx/car/app/IAppHost;->showToast(Ljava/lang/CharSequence;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
