.class final Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayControlHandle"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final libraryLoaded:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->clazz:Ljava/lang/Class;

    .line 8
    .line 9
    iput-boolean p2, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->libraryLoaded:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getClazz()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->clazz:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLibraryLoaded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl$DisplayControlHandle;->libraryLoaded:Z

    .line 2
    .line 3
    return p0
.end method
