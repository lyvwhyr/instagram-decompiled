.class Lcom/facebook/database/properties/b;
.super Lcom/facebook/database/b/a;
.source "DbPropertiesContentProvider.java"


# instance fields
.field final synthetic a:Lcom/facebook/database/properties/DbPropertiesContentProvider;


# direct methods
.method private constructor <init>(Lcom/facebook/database/properties/DbPropertiesContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-direct {p0}, Lcom/facebook/database/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/database/properties/DbPropertiesContentProvider;Lcom/facebook/database/properties/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/facebook/database/properties/b;-><init>(Lcom/facebook/database/properties/DbPropertiesContentProvider;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-static {v0}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a(Lcom/facebook/database/properties/DbPropertiesContentProvider;)Lcom/facebook/database/properties/c;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/database/properties/c;->a:Lcom/facebook/database/properties/e;

    invoke-virtual {v0, p1}, Lcom/facebook/database/properties/e;->a(Landroid/net/Uri;)Lcom/facebook/database/properties/d;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-virtual {v0}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/g;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v0

    .line 142
    iget-object v2, v1, Lcom/facebook/database/properties/d;->a:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/v;

    .line 143
    invoke-interface {v0}, Lcom/a/a/a/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v1, Lcom/facebook/database/properties/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-static {v1}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a(Lcom/facebook/database/properties/DbPropertiesContentProvider;)Lcom/facebook/database/properties/c;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/database/properties/c;->a:Lcom/facebook/database/properties/e;

    invoke-virtual {v1, p1}, Lcom/facebook/database/properties/e;->a(Landroid/net/Uri;)Lcom/facebook/database/properties/d;

    move-result-object v3

    .line 105
    iget-object v1, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-virtual {v1}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/d/g;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v1

    .line 106
    iget-object v2, v3, Lcom/facebook/database/properties/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/v;

    move-object v2, v0

    .line 108
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(SELECT key, value FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/facebook/database/properties/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    invoke-interface {v2}, Lcom/a/a/a/v;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-static {v0}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->a(Lcom/facebook/database/properties/DbPropertiesContentProvider;)Lcom/facebook/database/properties/c;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/database/properties/c;->a:Lcom/facebook/database/properties/e;

    invoke-virtual {v0, p1}, Lcom/facebook/database/properties/e;->a(Landroid/net/Uri;)Lcom/facebook/database/properties/d;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lcom/facebook/database/properties/b;->a:Lcom/facebook/database/properties/DbPropertiesContentProvider;

    invoke-virtual {v0}, Lcom/facebook/database/properties/DbPropertiesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/g;->a(Landroid/content/Context;)Lcom/facebook/d/g;

    move-result-object v0

    .line 129
    iget-object v2, v1, Lcom/facebook/database/properties/d;->a:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/facebook/d/g;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/v;

    .line 130
    invoke-interface {v0}, Lcom/a/a/a/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v1, Lcom/facebook/database/properties/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object v3

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
