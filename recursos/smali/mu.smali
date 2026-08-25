.class public final Lmu;
.super Lzw;
.source "SourceFile"


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Lyw;

.field public final h:Ll7;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lzw;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lzw;->e:Lyw;

    .line 5
    .line 6
    iput-object v0, p0, Lmu;->g:Lyw;

    .line 7
    .line 8
    new-instance v0, Ll7;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, p0}, Ll7;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lmu;->h:Ll7;

    .line 15
    .line 16
    iput-object p1, p0, Lmu;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final j()Lw;
    .locals 0

    .line 1
    iget-object p0, p0, Lmu;->h:Ll7;

    .line 2
    .line 3
    return-object p0
.end method
