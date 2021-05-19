Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F47388535
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 May 2021 05:27:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ljCrh-0007Ak-Am; Wed, 19 May 2021 03:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1ljCrf-0007AW-5c
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 03:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5kK5zPmDiySqTPz9AZYojzz9uGThxf9kCqsvsT/oC4M=; b=ZcvXRQmzTr2ADioChX88+KF1h3
 dthtOVbykzHcAYvyXQt2fLnUTg0+ZSqIp72qdnA4d4zAF3YwFl2wNpHH8ZoKEHsPvPbUYxjTJMiuL
 yworRwZKfG7UGc1Dt5uV2yf3+smSnQThTfmgeGYJ7HjDpwaReoI/zGKnuRVEfkU+BItY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5kK5zPmDiySqTPz9AZYojzz9uGThxf9kCqsvsT/oC4M=; b=VDLvXNhF3+zQMpiDSORZUsyRxM
 Eci8e5fu3HoRhgbCun4eKmv9OcnMLXfTrv0fcVvbqGl/2cy7/+/XDsQmG2QW+NKfkNWlNdTpmeKaW
 LajzWnoQ67347rcQ7of7l6nc4OkUN7jQT0TW6FrZrwBaOIhIicwYOzCw/z7M6E23kSrY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljCrX-00050x-Nr
 for v9fs-developer@lists.sourceforge.net; Wed, 19 May 2021 03:27:20 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7731AC022; Wed, 19 May 2021 05:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621394824; bh=5kK5zPmDiySqTPz9AZYojzz9uGThxf9kCqsvsT/oC4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D1mBr0xDl7jD/RRBorrON1MEMqKPP8vNSsyXNZBGe/DoGpNTYaCdtwsJZ1GULq3Zh
 apffmRPx50w52h5K86xV0vLECgb7CYu5UYiQwz3QobxvVw0QvJqyH1ZRVQLCFMueEH
 UXdntQBKijIoDtzmSmYfnN9stBFMCwS/xzUqIGeSCpiHG16ie1Wa2rfGQuquKPWRGh
 aEnmJZiYAXJF3D3BWP/ZpUV28rLB7/C4LDBGsLKuwMsCNXKd11/0WUygOVx5+fO2Yx
 yhE8SzRIaCXd7cTPdiMrat/Kxu2KpyFmkKPP0dfjzralT/GYwLB3R4QChQth18TZ7T
 iwvzHuHfoFxpg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 455BAC01D;
 Wed, 19 May 2021 05:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621394823; bh=5kK5zPmDiySqTPz9AZYojzz9uGThxf9kCqsvsT/oC4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=3Q4goiSD9JSAqfBPh7IBatqZws/+krfBNNyxmNJ3seZ5ABFJ5V6/XY/cm3cE8GcHg
 /8BNnv19hv81JElKsg15wrrURQD4+PjybeI3x3mGcgJdtYKklv3wFUsPk1IR+zjA0i
 J+9aaiUNEIdKddheKsd1hVEvqK2xB98wuKMis1bBuaiDK6vTjx5on6SU8iB3rSp9OX
 EM9ejHssxLu4h8zEMLCtjNRjRUVwhrbgIBlET1CGPKKhNAvqPnIvG2KFrFPgcXWqLP
 ECZG/BM7cg/HzzFvcEe83nB3jjJgwA+dXc6G99g+JpgtkGQ7PleyP6GZ93SsT3jKGQ
 UV2vR5JMZOfOQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 648993a5;
 Wed, 19 May 2021 03:26:57 +0000 (UTC)
Date: Wed, 19 May 2021 12:26:42 +0900
From: asmadeus@codewreck.org
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <YKSFchOrlTUxBto1@codewreck.org>
References: <20210519025639.12108-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519025639.12108-1-yuehaibing@huawei.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1ljCrX-00050x-Nr
Subject: Re: [V9fs-developer] [PATCH net-next] net/9p: use DEVICE_ATTR_RO
 macro
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

YueHaibing wrote on Wed, May 19, 2021 at 10:56:39AM +0800:
> Use DEVICE_ATTR_RO helper instead of plain DEVICE_ATTR,
> which makes the code a bit shorter and easier to read.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Sure, why not.
Will queue to -next tomorrow-ish

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
