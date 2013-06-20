.class public Lcom/facebook/database/properties/c;
.super Ljava/lang/Object;
.source "DbPropertiesContract.java"


# instance fields
.field public final a:Lcom/facebook/database/properties/e;

.field private final b:Lcom/facebook/database/a/a;


# virtual methods
.method public a(Lcom/facebook/common/e/a;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/database/properties/c;->b:Lcom/facebook/database/a/a;

    const-string v1, "properties"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/database/a/a;->a(Ljava/lang/String;Lcom/facebook/common/e/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
