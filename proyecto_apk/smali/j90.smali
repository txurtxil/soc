.class public final Lj90;
.super Ljava/lang/Object;


# instance fields
.field public final a:Leb0;


# direct methods
.method public constructor <init>(Leb0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj90;->a:Leb0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Lj90;->a:Leb0;

    .line 2
    .line 3
    iget-object p0, p0, Law;->b:Lay;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lay;->k:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lay;->b:Z

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {p0, v1, v0}, Lay;->g(IZ)V

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Lay;->b:Z

    .line 16
    .line 17
    return-void
.end method
