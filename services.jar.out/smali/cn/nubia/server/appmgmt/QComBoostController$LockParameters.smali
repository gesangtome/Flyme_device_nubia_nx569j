.class Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;
.super Ljava/lang/Object;
.source "QComBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/QComBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockParameters"
.end annotation


# instance fields
.field aboveHispeedDelay:[I

.field cpuBandwidthMinFrequency:I

.field disablePowerCollapse:Z

.field downThreshold:I

.field downTimes:I

.field goHispeedLoad:[I

.field gpuMaxPowerLevel:I

.field gpuMinPowerLevel:I

.field hispeedFreq:[I

.field maxFrequencies:[I

.field maxNumCores:[I

.field minFrequencies:[I

.field minNumCores:[I

.field restricted:Z

.field schedBoost:Z

.field schedDownMigrate:I

.field schedMostlyIdleLoad:I

.field schedMostlyIdleNRRun:I

.field schedSmallTask:I

.field schedUpMigrate:I

.field targetLoads:[I

.field thermalLevel:I

.field upThreshold:I

.field upTimes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 827
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    .line 828
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    .line 829
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    .line 830
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    .line 831
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    .line 832
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    .line 833
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->thermalLevel:I

    .line 834
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 835
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 836
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->disablePowerCollapse:Z

    .line 841
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    .line 842
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    .line 843
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    .line 844
    iput v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I

    .line 846
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->restricted:Z

    .line 942
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "numClusters"    # I
    .param p2, "numCores"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    .line 827
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    .line 828
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    .line 829
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    .line 830
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    .line 831
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    .line 832
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    .line 833
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->thermalLevel:I

    .line 834
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    .line 835
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    .line 836
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->disablePowerCollapse:Z

    .line 841
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    .line 842
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    .line 843
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    .line 844
    iput v1, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I

    .line 846
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->restricted:Z

    .line 944
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    .line 945
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 947
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    .line 948
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 950
    new-array v0, p2, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    .line 951
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 953
    new-array v0, p2, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    .line 954
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 956
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    .line 957
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 959
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    .line 960
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 962
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    .line 963
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 965
    new-array v0, p1, [I

    iput-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    .line 966
    iget-object v0, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 967
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 850
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 851
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    if-eqz v2, :cond_1

    .line 853
    const-string v2, "minNumCores:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minNumCores:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    if-eqz v2, :cond_3

    .line 861
    const-string v2, "maxNumCores:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxNumCores:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 865
    :cond_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    if-eqz v2, :cond_5

    .line 868
    const-string v2, "minFrequencies:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->minFrequencies:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 872
    :cond_4
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    if-eqz v2, :cond_7

    .line 875
    const-string v2, "maxFrequencies:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->maxFrequencies:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 879
    :cond_6
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    .end local v1    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpuBandwidthMinFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->cpuBandwidthMinFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedBoost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedBoost:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedSmallTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedSmallTask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedMostlyIdleLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedMostlyIdleNRRun: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedMostlyIdleNRRun:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedUpMigrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedUpMigrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedDownMigrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->schedDownMigrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePowerCollapse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->disablePowerCollapse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thermalLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->thermalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpuMinPowerLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMinPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 900
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpuMaxPowerLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->gpuMaxPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    if-eqz v2, :cond_9

    .line 904
    const-string v2, "targetLoads:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->targetLoads:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 908
    :cond_8
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    if-eqz v2, :cond_b

    .line 911
    const-string v2, "goHispeedLoad:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->goHispeedLoad:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 915
    :cond_a
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    if-eqz v2, :cond_d

    .line 918
    const-string v2, "hispeedFreq :\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->hispeedFreq:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 922
    :cond_c
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    if-eqz v2, :cond_f

    .line 925
    const-string v2, "aboveHispeedDelay:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->aboveHispeedDelay:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 929
    :cond_e
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    .end local v1    # "i":I
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->upTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/appmgmt/QComBoostController$LockParameters;->downTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
