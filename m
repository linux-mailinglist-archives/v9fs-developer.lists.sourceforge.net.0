Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB10D64FF2B
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 15:49:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6uyu-0000y2-78;
	Sun, 18 Dec 2022 14:49:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p6uyr-0000xu-Fx
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 14:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FhwTnOar5E14fmDvz361JNUqxa1iYpvEeC/ZXN7P74g=; b=V6MwhL/mXGdQyvpb9vVHCR3tsA
 WZ0jlc854X517rn6Gx3q+14scDupYwsRKb/341hCOJYz56xGLQilb5tj5ON1buXeW5RqMHOpS9bQ2
 DHeFO98WVTuOhjgN2KCPw33VCe5CzGVMXRiqiqvnjp5X3Yb6rJCSR0sm7F60GQMjVuUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FhwTnOar5E14fmDvz361JNUqxa1iYpvEeC/ZXN7P74g=; b=cy66UM5tTgNP+YipO535alLGAY
 8/oqFeFvBNbIWUbGYn91w5FDryNO03dltgH01g2hzTCCV+atDthanOAP7wgaatTUXGaZHGLTHqVwe
 0w+1fDydNd1TtOg2chipR25aH781txVm0e+xkRoJM+PlD4aakoVDJzaKLAU2W/W3Ato4=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6uyo-0003MC-LB for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 14:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=FhwTnOar5E14fmDvz361JNUqxa1iYpvEeC/ZXN7P74g=; b=WYIc75aPc04gsM7HJ9Kgfr3pRs
 XmQ7NeX1380snfJFNGklSkNPAKQVBLQdVliBFnhI3Zc7XxUmzWiJK/qfw4xkNzmWf31nbDd3JZzpJ
 C9azxSymoJ1yQPsQy8cNVZLbYjleDD1tyQLBBkPbTxrOEyCmxR+ylLNZvD/LbkoKYTfsYhHoQQhsx
 BTcEPhGYENXJjIjSCHpU29w8yVt0LfR9rgK8eHM42eHYU2rWVLT43oReWC0MeAi8A8JIaiyNwPwCM
 ivvyAiMDeYiO7y29hkVZUYWnbqWHUu1UreQDjwaufYV2rOEUBlkevtRWJFGT8gwy1za3bojG1cQwd
 yYYPg8tWF/jtjVT3KEFkTOZWspSKaf4vYNnSq0b5P47UnGl5UuR4eIqNv8d2Sq41D14WGyhztoRvL
 i1kduah4TUqiPJ4MKGi49XeydIcjPDb95BimDEHSlUS7LIobW2OkTzjGReydebLM+Z1zCZUJZcNJ+
 2fMk+tZ29X/4bCNvhPHrX9rFac5qyLFZOCMlyFtf/vGq5x7D7VvZPy3pIZUxk8l2ltnT/kFBLKIQe
 4Ky9X69AYX4I8xCyy/xZ8zFkWD2+tVdVTEwDlt2vs+QI2bbsqK0WEh3FLWDzyrjXY4lpoxwY3dPyx
 AkwNLmvxvp8f3z4Z4srFuUcppor+fxfWIqEPvfDNM=;
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net,
 Eric Van Hensbergen <evanhensbergen@icloud.com>
Date: Sun, 18 Dec 2022 15:49:18 +0100
Message-ID: <4530979.Ltmge6kleC@silver>
In-Reply-To: <20221217185210.1431478-2-evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-2-evanhensbergen@icloud.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, December 17,
 2022 7:52:05 PM CET Eric Van Hensbergen
 wrote: > Add maximum p9 header size to MSIZE to make sure we can > have page
 aligned data. > > Signed-off-by: Eric Van Hensbergen <eva [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p6uyo-0003MC-LB
Subject: Re: [V9fs-developer] [PATCH 1/6] Adjust maximum MSIZE to account
 for p9 header
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, December 17, 2022 7:52:05 PM CET Eric Van Hensbergen wrote:
> Add maximum p9 header size to MSIZE to make sure we can
> have page aligned data.
> 
> Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> ---
>  net/9p/client.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index fef6516a0639..416baf2f1edf 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -28,7 +28,7 @@
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/9p.h>
>  
> -#define DEFAULT_MSIZE (128 * 1024)
> +#define DEFAULT_MSIZE ((128 * 1024) + P9_HDRSZ)

Adding 7 would make what page aligned exactly, the payload? And how?

>  
>  /* Client Option Parsing (code inspired by NFS code)
>   *  - a little lazy - parse all client options
> 





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
