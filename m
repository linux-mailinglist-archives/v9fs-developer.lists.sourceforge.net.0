Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4F54BFEE
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jun 2022 05:03:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o1JJe-0007h4-Q2; Wed, 15 Jun 2022 03:03:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o1JJd-0007gy-Lv
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 03:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7kMu/er3n8xssH8Yllmj0gmeCch7WnvyDQ8/z2G1Q2s=; b=XheN/opRPx5uZSenmGqRQfUjiZ
 krbnszOgB9T4T2iMdyRu1y+Sv4QxQXvCUqWfUUOR9cDFdLCsqzYSLm1hJ+qhzg/OywfwbzIfipYzp
 72dC3CZcBICkwm6Kide1y9veT8Fl2uZ0KZfFdSYXhPKDVo/+DBJO1v9UjQlxOVZCFadw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7kMu/er3n8xssH8Yllmj0gmeCch7WnvyDQ8/z2G1Q2s=; b=RTlCNRKHooZeVibnyNWcTQcEWH
 7ldayvxyMnrw0rMbY27moZyvLm3wMZVmcUCXt0kFnsfBdlqLZpnQsv1qosKxxqdUltsp2LFPltixD
 eU1A0a5ALpCgd9E8wfhALIqyH0XI7qcZPHTStTFqph3KXbWAj9XQvIBSstilpBMUlweM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1JJZ-001yX6-OO
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jun 2022 03:03:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 8A6F2C009; Wed, 15 Jun 2022 05:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655262202; bh=7kMu/er3n8xssH8Yllmj0gmeCch7WnvyDQ8/z2G1Q2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9BmeV6SfZ9w4zK6xcRBSzVvNmkeUV9a4kbYzChpTdwNgVbEnlzvSXOTEKeD9MEQT
 3emaYdv8vPq4O+1Xc2fseHryedQ/ix08XH01XWwGOG7LK3bzzjHpgtx+QYGmWJpTvs
 Sh9sepHcemCi+m14qKoTmbhxoy5+N8f5JFrfnIFOZpunAlpxIHYJl9JgtL3rrBSy2L
 giO8SF4cqlo1pMQv5hn5J6n55JfUlQwXi46h73U+qCovsR35heA8l+1NNf1arML8dx
 YBLaE2vzERyde+1vdCRPZI+jgHCxEfEhSkSj0CkhXPk934gzh1DWL/YnirZd7YeCF1
 rKrCAzuv45fqQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CB626C009;
 Wed, 15 Jun 2022 05:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655262192; bh=7kMu/er3n8xssH8Yllmj0gmeCch7WnvyDQ8/z2G1Q2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aUWQ0WmgDU4ApRpsAeCgnHYYc0gpOOnOPQARXLU+/+QYg+JveNgdIh7niWo4ODInc
 NRKDnKqKqeASbiKtO30/KdDDgl/jWCBvVrxq7cMqxLevqEnEA0W4ayBDEeyk6JZ5dX
 Xwbdzd5OWo47hUvow5Zn2vRKJ9220xYVr7nKboGvuLUp+InusnACXjrnqB8Tru0zHr
 p43bpSHgrBu/Lc+LtXf3jS94EX9NyF1R0PrElD6dayWwS1QjzX+VjyV+gWRDoPqwUq
 ifKWb9JgIN+vsd6RYDHFlEWE4pqxglpUo95LhoUGwrmMuR2MXEnJHxMAXf7VlnfC0R
 Ri5wnGBHivXUA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id da6275d0;
 Wed, 15 Jun 2022 03:03:06 +0000 (UTC)
Date: Wed, 15 Jun 2022 12:02:51 +0900
From: asmadeus@codewreck.org
To: Yang Li <yang.lee@linux.alibaba.com>
Message-ID: <YqlL22D6l7XErRoo@codewreck.org>
References: <20220615012039.43479-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615012039.43479-1-yang.lee@linux.alibaba.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Yang Li wrote on Wed, Jun 15, 2022 at 09:20:39AM +0800: >
 Remove warnings found by running scripts/kernel-doc, > which is caused by
 using 'make W=1'. ugh, I was told W=1 would become the default for net, but
 I guess it isn't question about that yet for fs... 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1o1JJZ-001yX6-OO
Subject: Re: [V9fs-developer] [PATCH -next] 9p: Fix some kernel-doc comments
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Yang Li wrote on Wed, Jun 15, 2022 at 09:20:39AM +0800:
> Remove warnings found by running scripts/kernel-doc,
> which is caused by using 'make W=1'.

ugh, I was told W=1 would become the default for net,
but I guess it isn't question about that yet for fs...

Do you know how to make W=1 the default for part of the subtree?

> fs/9p/fid.c:35: warning: Function parameter or member 'pfid' not described in 'v9fs_fid_add'
> fs/9p/fid.c:35: warning: Excess function parameter 'fid' description in 'v9fs_fid_add'
> fs/9p/fid.c:80: warning: Function parameter or member 'pfid' not described in 'v9fs_open_fid_add'
> fs/9p/fid.c:80: warning: Excess function parameter 'fid' description in 'v9fs_open_fid_add'
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Will apply and add a note that it is NULLed out, thanks.

> ---
>  fs/9p/fid.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/fid.c b/fs/9p/fid.c
> index 289a85eae2ae..3a0f5963b8bd 100644
> --- a/fs/9p/fid.c
> +++ b/fs/9p/fid.c
> @@ -28,7 +28,7 @@ static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
>  /**
>   * v9fs_fid_add - add a fid to a dentry
>   * @dentry: dentry that the fid is being added to
> - * @fid: fid to add
> + * @pfid: fid to add
>   *
>   */
>  void v9fs_fid_add(struct dentry *dentry, struct p9_fid **pfid)
> @@ -72,7 +72,7 @@ static struct p9_fid *v9fs_fid_find_inode(struct inode *inode, kuid_t uid)
>  /**
>   * v9fs_open_fid_add - add an open fid to an inode
>   * @inode: inode that the fid is being added to
> - * @fid: fid to add
> + * @pfid: fid to add
>   *
>   */
>  


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
