.class public interface abstract Lcom/android/server/pm/IPMSFunc;
.super Ljava/lang/Object;
.source "IPMSFunc.java"


# virtual methods
.method public abstract clearPackagePreferredActivitiesHook(Ljava/lang/String;)V
.end method

.method public abstract filterBySmartContainerHook(Landroid/content/Intent;Ljava/util/List;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract generatePackageInfo(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getInstalledApplicationsHook(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
.end method

.method public abstract queryIntentActivitiesHook(Landroid/content/ComponentName;Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method
