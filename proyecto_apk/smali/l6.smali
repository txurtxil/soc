.class public final synthetic Ll6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lq6;

.field public final synthetic b:Lm6;


# direct methods
.method public synthetic constructor <init>(Lq6;Lm6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6;->a:Lq6;

    iput-object p2, p0, Ll6;->b:Lm6;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll6;->a:Lq6;

    .line 2
    .line 3
    invoke-virtual {p1}, Lvf;->j()Landroidx/fragment/app/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance p4, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ll6;->b:Lm6;

    .line 13
    .line 14
    iget-object p0, p0, Lm6;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ln6;

    .line 21
    .line 22
    iget-object p0, p0, Ln6;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string p3, "package"

    .line 25
    .line 26
    invoke-virtual {p4, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lvf;->f:Landroid/os/Bundle;

    .line 30
    .line 31
    const/4 p3, -0x1

    .line 32
    const-string p5, "slot"

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, p5, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    :cond_0
    invoke-virtual {p4, p5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p2, Landroidx/fragment/app/a;->k:Ljava/util/Map;

    .line 44
    .line 45
    const-string p3, "app_picker_result"

    .line 46
    .line 47
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lfg;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    iget-object p5, p0, Lfg;->a:Lnk;

    .line 56
    .line 57
    check-cast p5, Landroidx/lifecycle/a;

    .line 58
    .line 59
    iget-object p5, p5, Landroidx/lifecycle/a;->c:Lmk;

    .line 60
    .line 61
    sget-object v0, Lmk;->d:Lmk;

    .line 62
    .line 63
    invoke-virtual {p5, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 64
    .line 65
    .line 66
    move-result p5

    .line 67
    if-ltz p5, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, p4}, Lfg;->d(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p2, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_0
    const/4 p0, 0x0

    .line 79
    invoke-virtual {p1, p0, p0}, Lqc;->M(ZZ)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
