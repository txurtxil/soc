.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk;


# instance fields
.field public final synthetic a:Lmg;

.field public final synthetic b:Lnk;

.field public final synthetic c:Landroidx/fragment/app/a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a;Lmg;Lnk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->c:Landroidx/fragment/app/a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Lmg;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->b:Lnk;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Lsk;Llk;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->c:Landroidx/fragment/app/a;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v1, Llk;->ON_START:Llk;

    .line 6
    .line 7
    const-string v2, "app_picker_result"

    .line 8
    .line 9
    if-ne p2, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/Bundle;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$6;->a:Lmg;

    .line 20
    .line 21
    invoke-interface {v3, v1}, Lmg;->d(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v0, Llk;->ON_DESTROY:Llk;

    .line 28
    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->b:Lnk;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Lnk;->b(Lrk;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Landroidx/fragment/app/a;->k:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
