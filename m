Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EF03D4FFF
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Jul 2021 22:47:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m7l1n-0006fF-GQ; Sun, 25 Jul 2021 20:47:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1m7l1k-0006f7-S9
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 20:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QaQ6Aa01LbwwJwJo87IE3khSh4fiPa3LSlb58ZOkRyQ=; b=SjsvZHq36KeN3Pyk9DfTmVwpmr
 r0tRDcfKyT1rWAhGFh4u3ud51h4wj7XJfA5zR2jQUGqYUmOFj7m9x2dIlh5RUA4v8Ut+/RqmXfnen
 jOPS8RZkwo1zuJMcVmXxNfOoVGtLU3mMhWLs/UL/mxqj+L9U3LB+3/keP9v4e4UaCIGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QaQ6Aa01LbwwJwJo87IE3khSh4fiPa3LSlb58ZOkRyQ=; b=YMiHABrxcfQpU9s7n+xning2OA
 3SWBbGsXEkdFsHC4nemcpYZ+IG5hJ+bsKvhtrfzDmiFzqy33DB796OkV5r4aQRKRznWfKCja+aM6x
 u+LuBclS+HwzhzYwjsvgDQsIHVyUH3ETJIXZrJ+K4kmRyFdEzF2LObchvBfdw1lyNVgQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m7l1g-002Rxj-MN
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 20:47:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 87163C01F; Sun, 25 Jul 2021 22:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627246015; bh=QaQ6Aa01LbwwJwJo87IE3khSh4fiPa3LSlb58ZOkRyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E+9EsSd+WBEmMSGIDwDRz86So3Gf8FX8dhRyaiqijFRZ/pb003a44OWn0TMPyfYLC
 fKRVMhGZBxeLjQlTCrSoqnLOPnsKlAwCldIMTVb9ci8dkR5dOb26JgzmcqrrhEoOJy
 Kb9g7a92muDKK8fM8/zZPLpOQj0wT1oNytmCYMQOWzWrmxIDBXyaTPlNgqwqiRcarR
 PrOgKNGeDHXNYaN14DgBiIkT3iB4+ylGRYKaK0s+DZybLO/FxCedSKuFLJz5H5+ZVy
 E15AKRlzwBVvAGqO0VBnrtIaP4hdsI0n+WjpfS3aCrI7rp3SPQlvDZc014rPEQAcx6
 XcEzSsWfiudbQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 04DBDC009;
 Sun, 25 Jul 2021 22:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1627246014; bh=QaQ6Aa01LbwwJwJo87IE3khSh4fiPa3LSlb58ZOkRyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BxnBpI1X8oXWd/Z4QFGZN8MfSLtg8Sxp2UbTdthAj/tTLPt6ikzb81i9L2hWmgSe9
 NBV+5m8lcbfYy+t6Xq6H3dCN7LaRP0ywzk9F8zBt9+AFrAQmgY96PCDHNL1CtEivnb
 FxHXrRTY8RpOvp8cPivb2dm/GqRjO4DZxXm7rGRuk79xuIF9IstqOwc6zQuFH0C7rs
 w17WEUrgDNWLp8FE7CgJPVKIvOKoffYuEYUGKgU1NJgMaS/w5xzbDjqVM0eyea7wLf
 GHxZRGlaCqneFWwGpUQIX3L4T651OQM7Wy/ba7xdi0B4mRl3I1To4c/hd2Aj65c5qI
 0LFEqNY8kC/yg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e9881dc2;
 Sun, 25 Jul 2021 20:46:48 +0000 (UTC)
Date: Mon, 26 Jul 2021 05:46:33 +0900
From: asmadeus@codewreck.org
To: Harshvardhan Jha <harshvardhan.jha@oracle.com>,
 Stefano Stabellini <sstabellini@kernel.org>
Message-ID: <YP3NqQ5NGF7phCQh@codewreck.org>
References: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210725175103.56731-1-harshvardhan.jha@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1m7l1g-002Rxj-MN
Subject: Re: [V9fs-developer] [PATCH] 9p/xen: Fix end of loop tests for
 list_for_each_entry
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

Harshvardhan Jha wrote on Sun, Jul 25, 2021 at 11:21:03PM +0530:
> The list_for_each_entry() iterator, "priv" in this code, can never be
> NULL so the warning would never be printed.

hm? priv won't be NULL but priv->client won't be client, so it will
return -EINVAL alright in practice?

This does fix an invalid read after the list head, so there's a real
bug, but the commit message needs fixing.

> 
> Signed-off-by: Harshvardhan Jha <harshvardhan.jha@oracle.com>
> ---
> From static analysis.  Not tested.

+Stefano in To - I also can't test xen right now :/
This looks functional to me but if you have a bit of time to spare just
a mount test can't hurt.

> ---
>  net/9p/trans_xen.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> index f4fea28e05da..3ec1a51a6944 100644
> --- a/net/9p/trans_xen.c
> +++ b/net/9p/trans_xen.c
> @@ -138,7 +138,7 @@ static bool p9_xen_write_todo(struct xen_9pfs_dataring *ring, RING_IDX size)
>  
>  static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
>  {
> -	struct xen_9pfs_front_priv *priv = NULL;
> +	struct xen_9pfs_front_priv *priv;
>  	RING_IDX cons, prod, masked_cons, masked_prod;
>  	unsigned long flags;
>  	u32 size = p9_req->tc.size;
> @@ -151,7 +151,7 @@ static int p9_xen_request(struct p9_client *client, struct p9_req_t *p9_req)
>  			break;
>  	}
>  	read_unlock(&xen_9pfs_lock);
> -	if (!priv || priv->client != client)
> +	if (list_entry_is_head(priv, &xen_9pfs_devs, list))
>  		return -EINVAL;
>  
>  	num = p9_req->tc.tag % priv->num_rings;
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
