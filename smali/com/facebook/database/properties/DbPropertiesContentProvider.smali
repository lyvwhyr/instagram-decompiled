.class public Lcom/facebook/database/properties/DbPropertiesContentProvider;
.super Lcom/facebook/content/SecureContentProvider;
.source "DbPropertiesContentProvider.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/database/properties/c;

.field private c:Lcom/facebook/database/b/c;

.field private d:Lcom/facebook/database/properties/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/database/properties/DbPropertiesContentProvider;

    sput-object v0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/content/SecureContentProvider;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/facebook/database/properties/DbPropertiesContentProvider;)Lcom/facebook/database/properties/c;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->b:Lcom/facebook/database/properties/c;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 68
    const-string v0, "DbPropertiesContentProvider.doDelete"

    invoke-static {v0}, Lcom/facebook/c/c/e;->a(Ljava/lang/String;)Lcom/facebook/c/c/e;

    move-result-object v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->c:Lcom/facebook/database/b/c;

    invoke-virtual {v0, p1}, Lcom/facebook/database/b/c;->a(Landroid/net/Uri;)Lcom/facebook/database/b/b;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/database/b/b;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 73
    invoke-virtual {v1}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 74
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doDelete took %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return v0

    .line 73
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 74
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doDelete took %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    throw v0
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    const-string v0, "DbPropertiesContentProvider.doQuery"

    invoke-static {v0}, Lcom/facebook/c/c/e;->a(Ljava/lang/String;)Lcom/facebook/c/c/e;

    move-result-object v6

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->c:Lcom/facebook/database/b/c;

    invoke-virtual {v0, p1}, Lcom/facebook/database/b/c;->a(Landroid/net/Uri;)Lcom/facebook/database/b/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 59
    invoke-interface/range {v0 .. v5}, Lcom/facebook/database/b/b;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 61
    invoke-virtual {v6}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 62
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doQuery took %d ms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 62
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doQuery took %d ms"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    throw v0
.end method

.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    const-string v0, "DbPropertiesContentProvider.doInsert"

    invoke-static {v0}, Lcom/facebook/c/c/e;->a(Ljava/lang/String;)Lcom/facebook/c/c/e;

    move-result-object v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->c:Lcom/facebook/database/b/c;

    invoke-virtual {v0, p1}, Lcom/facebook/database/b/c;->a(Landroid/net/Uri;)Lcom/facebook/database/b/b;

    move-result-object v0

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/facebook/database/b/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    invoke-virtual {v1}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 86
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doInsert took %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/c/c/e;->a()J

    move-result-wide v1

    .line 86
    sget-object v3, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a:Ljava/lang/Class;

    const-string v4, "DbPropertiesContentProvider.doInsert took %d ms"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/facebook/c/b/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    throw v0
.end method

.method protected a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected declared-synchronized d()V
    .locals 5

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    const-string v0, "DbPropertiesContentProvider.onInitialize"

    invoke-static {v0}, Lcom/facebook/c/c/e;->a(Ljava/lang/String;)Lcom/facebook/c/c/e;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/g;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v2

    .line 40
    const-class v0, Lcom/facebook/database/properties/c;

    invoke-virtual {v2, v0}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/database/properties/c;

    iput-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->b:Lcom/facebook/database/properties/c;

    .line 41
    new-instance v0, Lcom/facebook/database/properties/b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/facebook/database/properties/b;-><init>(Lcom/facebook/database/properties/DbPropertiesContentProvider;Lcom/facebook/database/properties/a;)V

    iput-object v0, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->d:Lcom/facebook/database/properties/b;

    .line 42
    const-class v0, Lcom/facebook/common/e/a;

    invoke-virtual {v2, v0}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/e/a;

    .line 44
    new-instance v2, Lcom/facebook/database/b/c;

    invoke-direct {v2}, Lcom/facebook/database/b/c;-><init>()V

    iput-object v2, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->c:Lcom/facebook/database/b/c;

    .line 45
    iget-object v2, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->c:Lcom/facebook/database/b/c;

    iget-object v3, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->b:Lcom/facebook/database/properties/c;

    invoke-virtual {v3, v0}, Lcom/facebook/database/properties/c;->a(Lcom/facebook/common/e/a;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "properties/*/*"

    iget-object v4, p0, Lcom/facebook/database/properties/DbPropertiesContentProvider;->d:Lcom/facebook/database/properties/b;

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/database/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/database/b/b;)V

    .line 50
    invoke-virtual {v1}, Lcom/facebook/c/c/e;->a()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
