.class public final Landroidx/car/app/model/ParkedOnlyOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgs;


# annotations
.annotation runtime Le9;
.end annotation


# instance fields
.field private final mListener:Lgs;


# direct methods
.method private constructor <init>(Lgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/model/ParkedOnlyOnClickListener;->mListener:Lgs;

    .line 5
    .line 6
    return-void
.end method

.method public static create(Lgs;)Landroidx/car/app/model/ParkedOnlyOnClickListener;
    .locals 1

    .line 1
    new-instance v0, Landroidx/car/app/model/ParkedOnlyOnClickListener;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lgs;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/car/app/model/ParkedOnlyOnClickListener;-><init>(Lgs;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/model/ParkedOnlyOnClickListener;->mListener:Lgs;

    .line 2
    .line 3
    invoke-interface {p0}, Lgs;->onClick()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
