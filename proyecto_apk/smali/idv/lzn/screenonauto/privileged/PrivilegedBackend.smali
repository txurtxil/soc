.class public interface abstract Lidv/lzn/screenonauto/privileged/PrivilegedBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bind(Landroid/content/Context;Lch;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lch;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getKind()Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;
.end method

.method public abstract isAuthorised(Landroid/content/Context;)Z
.end method

.method public abstract isPresent(Landroid/content/Context;)Z
.end method

.method public abstract unbind(Landroid/content/Context;)V
.end method
