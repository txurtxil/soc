.class public abstract Ldw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lew;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lew;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldw;->a:Lew;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Ldw;->b:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(I)J
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Lnu;
.end method
