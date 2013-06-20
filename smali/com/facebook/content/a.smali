.class abstract Lcom/facebook/content/a;
.super Landroid/content/ContentProvider;
.source "AbstractContentProvider.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/content/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 155
    return-void
.end method

.method protected a(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/facebook/content/a;->a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/a;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected c(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/content/ContentProvider;->isTemporary()Z

    move-result v0

    return v0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/a;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/facebook/content/a;->d()V

    .line 217
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    :cond_0
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/facebook/content/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/facebook/content/d;->a()V

    .line 226
    :cond_0
    return-void
.end method

.method public final getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/a;->a(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 280
    invoke-virtual {p0, p1}, Lcom/facebook/content/a;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/facebook/content/a;->f()V

    .line 230
    invoke-virtual {p0}, Lcom/facebook/content/a;->g()V

    .line 231
    return-void
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final isTemporary()Z
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 332
    invoke-virtual {p0}, Lcom/facebook/content/a;->c()Z

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 342
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/facebook/content/a;->a(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 379
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 380
    invoke-virtual {p0}, Lcom/facebook/content/a;->b()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1
    .parameter "level"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 366
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 367
    invoke-virtual {p0, p1}, Lcom/facebook/content/a;->a(I)V

    goto :goto_0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/a;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/a;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"
    .parameter "opts"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 305
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/a;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 312
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/content/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 320
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/content/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/content/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 353
    invoke-virtual {p0}, Lcom/facebook/content/a;->a()V

    goto :goto_0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/facebook/content/a;->h()V

    .line 326
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/content/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
