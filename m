Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C62479A89
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Dec 2021 12:17:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1myXiG-0007dn-GC; Sat, 18 Dec 2021 11:17:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1myXiF-0007dh-Ef
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 11:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8CSxbc5WL1k9ccoiWDDaGfsWN/iRL7BkpYTEy76X/4g=; b=A3XMLQg/PwZ1ZdlU+qwpVTOaDk
 E7EqYjyFT/eDQB9qrhYw4u3DPVcVP305OG7Ia4LPbSEEWXPG9tDPc4sRGXJcBNrQaaKyT4MrjBORi
 UoGaaPP9ZiLDb/FFDRZ8u3Ab67y8QfJw88tdEoJtMJ6in1p4HBbJJuX8rVpx9aKfaraM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8CSxbc5WL1k9ccoiWDDaGfsWN/iRL7BkpYTEy76X/4g=; b=Zjxb1z0/fC0lldMVlEpI+3P9U9
 J5l6mml3dBj3xm1rAkeu7PEqpLTubgZPnk8r2VOe7nqvpz7RFpYCe9rWdoYLo3AKt9AKPy1vI4f83
 QOoRQefScnmA4u5NboKfgSb5vecvu0FWb4aC9mPqx9UN923CV6EkDH/iZFtQf68sup50=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myXiE-001wU0-He
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Dec 2021 11:17:15 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 46C6FC01C; Sat, 18 Dec 2021 12:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639826226; bh=8CSxbc5WL1k9ccoiWDDaGfsWN/iRL7BkpYTEy76X/4g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZTqdmRywC9U7LQrM+zMrWByW5RkhT1tb4OXOzA/K9L0G5vMRwroDEOkAQRjSUlRhh
 DplAlrczMjz9XMVo7t1sgXiXJhyCQ1+W++tCVrw39d0FMBKPBm+3+CN6w+j6petNJW
 bYdq/ScRIyr0EL7aEYVUtq+Abj4bLmYK6X1/UqQnNTEHQ3bAxAS2YaEZcOgTGnYyQ1
 qkGEFQzjlw6ExdAYWBxJXXnnDupd42t4BZtkGHUeuKXEtJ+QhYM4cH303fh9vwBAJA
 2lMC8UQJ6svZj84nJYQvJmlqUC2VqYiv4VSnZ7GSegvyZAbg0hd2U7kFP29gwIHS11
 GeLEQSqdTXWiw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 96C03C009;
 Sat, 18 Dec 2021 12:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1639826224; bh=8CSxbc5WL1k9ccoiWDDaGfsWN/iRL7BkpYTEy76X/4g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NIzjkSptoI6TTpfj/IR3eA52mZE8NyVvKXRyBr/V1b8ImSn5W7v5gBM3otX51jRIE
 5p9kbrEjgWjHq1xQChET357PtxOdaftgV+izFJ0xXkf7kePu76HE1q+gE9ZyWfdxYP
 90Pv7urwyRhfC5BrmYoX12CvzyaBciKc/Uf+1/1FLPsmZTpJOKzPrRpRXKJqslU4Xn
 VKhw+45zL9Q1Z39cGxFPxfVfv9xot0BCGRImIuim5RQIvnoizyGrVEEa0t3zWSZ0jV
 nfNKDZfH54g4+mSd4X/Ui7egDwlv3bXSw21FvuFTxQ+345GPBDD0WnigLEq3AHIHr2
 RRAD7z+wgm9ng==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6bbaf76b;
 Sat, 18 Dec 2021 11:17:00 +0000 (UTC)
Date: Sat, 18 Dec 2021 20:16:44 +0900
From: asmadeus@codewreck.org
To: cgel.zte@gmail.com
Message-ID: <Yb3DHNHjk0SwMJPU@codewreck.org>
References: <20211112092547.9153-1-zhang.mingyu@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211112092547.9153-1-zhang.mingyu@zte.com.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  cgel.zte@gmail.com wrote on Fri, Nov 12, 2021 at 09:25:47AM
 +0000: > From: Zhang Mingyu <zhang.mingyu@zte.com.cn> > > This issue was
 detected with the help of Coccinelle. > > Reported-by: Zeal Robot < [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1myXiE-001wU0-He
Subject: Re: [V9fs-developer] [PATCH] 9p: Use BUG_ON instead of if condition
 followed by BUG.
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
Cc: lucho@ionkov.net, ericvh@gmail.com, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Zhang Mingyu <zhang.mingyu@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cgel.zte@gmail.com wrote on Fri, Nov 12, 2021 at 09:25:47AM +0000:
> From: Zhang Mingyu <zhang.mingyu@zte.com.cn>
> 
> This issue was detected with the help of Coccinelle.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Zhang Mingyu <zhang.mingyu@zte.com.cn>

I realize I've never replied to this mail when applying old patches now,
I've picked this up too.

> ---
>  fs/9p/vfs_file.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index 4244d48398ef..f2375448cafc 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -139,8 +139,7 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>  	fid = filp->private_data;
>  	BUG_ON(fid == NULL);
>  
> -	if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
> -		BUG();
> +	BUG_ON((fl->fl_flags & FL_POSIX) != FL_POSIX);
>  
>  	res = locks_lock_file_wait(filp, fl);
>  	if (res < 0)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
