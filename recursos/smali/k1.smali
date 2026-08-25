.class public final Lk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lf9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk1;->a:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk1;->b:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk1;->c:Ljava/util/HashSet;

    const v0, 0x7fffffff

    .line 89
    iput v0, p0, Lk1;->d:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lk1;->e:I

    .line 91
    iput-boolean v0, p0, Lk1;->j:Z

    .line 92
    sget-object v0, Lf9;->c:Lf9;

    iput-object v0, p0, Lk1;->k:Lf9;

    return-void
.end method

.method public constructor <init>(Ll1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk1;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lk1;->b:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v2, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lk1;->c:Ljava/util/HashSet;

    .line 24
    .line 25
    const v3, 0x7fffffff

    .line 26
    .line 27
    .line 28
    iput v3, p0, Lk1;->d:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    iput v3, p0, Lk1;->e:I

    .line 32
    .line 33
    iput-boolean v3, p0, Lk1;->j:Z

    .line 34
    .line 35
    sget-object v3, Lf9;->b:Lf9;

    .line 36
    .line 37
    iget v3, p1, Ll1;->a:I

    .line 38
    .line 39
    iput v3, p0, Lk1;->d:I

    .line 40
    .line 41
    iget v3, p1, Ll1;->b:I

    .line 42
    .line 43
    iput v3, p0, Lk1;->e:I

    .line 44
    .line 45
    iget v3, p1, Ll1;->c:I

    .line 46
    .line 47
    iput v3, p0, Lk1;->f:I

    .line 48
    .line 49
    iget-object v3, p1, Ll1;->h:Lf9;

    .line 50
    .line 51
    iput-object v3, p0, Lk1;->k:Lf9;

    .line 52
    .line 53
    iget-object v3, p1, Ll1;->i:Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Ll1;->j:Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Ll1;->k:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p1, Ll1;->d:Z

    .line 69
    .line 70
    iput-boolean v0, p0, Lk1;->g:Z

    .line 71
    .line 72
    iget-boolean v0, p1, Ll1;->e:Z

    .line 73
    .line 74
    iput-boolean v0, p0, Lk1;->h:Z

    .line 75
    .line 76
    iget-boolean v0, p1, Ll1;->f:Z

    .line 77
    .line 78
    iput-boolean v0, p0, Lk1;->i:Z

    .line 79
    .line 80
    iget-boolean p1, p1, Ll1;->g:Z

    .line 81
    .line 82
    iput-boolean p1, p0, Lk1;->j:Z

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    new-instance v0, Ll1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll1;-><init>(Lk1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
