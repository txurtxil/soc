.class public final Lfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmg;


# instance fields
.field public final a:Lnk;

.field public final b:Lmg;

.field public final c:Lqk;


# direct methods
.method public constructor <init>(Lnk;Lmg;Lqk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfg;->a:Lnk;

    .line 5
    .line 6
    iput-object p2, p0, Lfg;->b:Lmg;

    .line 7
    .line 8
    iput-object p3, p0, Lfg;->c:Lqk;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfg;->b:Lmg;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lmg;->d(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
