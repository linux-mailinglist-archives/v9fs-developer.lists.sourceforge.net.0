Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 774E95B3679
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Sep 2022 13:39:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oWcMB-0001yc-6Y;
	Fri, 09 Sep 2022 11:39:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oWcM1-0001xP-2X
 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Sep 2022 11:39:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qqwt0vBVIvZRqd4nvturax93UCC/svGIe5vYpDqGjUA=; b=d7eKwBJmyo0P/uwwJXbUorfpkE
 bHdp/DJSoBvB1/Ycf1th853zMAUBGNTaoBB67rfnTvbzGjqqu9xIokjRQsmgQjkIoBR4mhHzkoy4Q
 /x22OnoMFWArvjEUTz6Ew77kxsK/ihCs400fRuf5Mc4Bh4QDyvxasjOSPAeGNqvFq7j4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qqwt0vBVIvZRqd4nvturax93UCC/svGIe5vYpDqGjUA=; b=XQ2axjMcIoWVKzCvnpuYrR6ntH
 iDTiFqWMsphcY4ed2pgsHv1q0ksQ5NsaGQSoZQZ8nz1UWldxKHgpGxKW9HAMuKTmxr+n23U19LaXM
 5lUw01fa+sInY0r1ffiOux/njMfeoLDtpnx12JNhm15mmmcsQ1ZOQWecS/0HZ4cPK8to=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oWcLr-0006NQ-1e for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Sep 2022 11:39:21 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id C6D3BC020; Fri,  9 Sep 2022 13:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662723547; bh=Qqwt0vBVIvZRqd4nvturax93UCC/svGIe5vYpDqGjUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I8x667VIoVd4x9lJxLJ2ctVSxhNWHgM1Y07msr8orfCj7UM+xUOAWaecJenfGQ6zW
 OdIiZ7k5sCBfVYmQC9v1QsisZP3Jdbbknofuh3aHumy55CntwZy0l9OnI462OSkM8j
 p1iM57/Hnjlyh03YwNnoHA+hz20DWLzx8chUD95G6mSHYpPbxgUBbXqi790q82T43F
 7CqhLMnj/pDtukAkj3QrmKh4WA0qnpWiMcdaPK+naT5tKdojklaSe9K9NnSD3kqrPU
 Qp2PcFRXU/efZasoyZG37Wk4Vdjd/cY+Gu2/Pv/U0dnyCAJLXuGJoI+tOH7pUZ5hVC
 RwvzBHzwo0cKA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E802AC009;
 Fri,  9 Sep 2022 13:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1662723546; bh=Qqwt0vBVIvZRqd4nvturax93UCC/svGIe5vYpDqGjUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e7VKEWyZuY4lrG8Efk0aJlSk+Z5funJd1NRS4hGL4LhSKjDztUHbT/lR+Zzq8FWud
 bzWLesLkW5QICabeoXEyLb02g2fKqDEI3TyR8KQQ3rHgToT3f6dZ/GDwGq/FnQTT7+
 bFl8E8Dre18izlGLezlP3nIFVJ4fyPEsAz7AGeKCSkZBcDMR1ORZiQ4glgsyRJl5W9
 iN5BB+Dbo8RUBgiP0KW9/2FnS6e3Vzf4Xm2VZz2OTeNgCFz1CLckHKIDnrpkNzJGai
 +dunyA3IkEAX5G6tDn/mSVSTsIyRa0T6VIxpiQ6ynb1YUhHDvHZIIAJ62U1hyYC2XG
 LovW+ZdKu5R2w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a37b6550;
 Fri, 9 Sep 2022 11:38:57 +0000 (UTC)
Date: Fri, 9 Sep 2022 20:38:42 +0900
From: asmadeus@codewreck.org
To: Xiu Jianfeng <xiujianfeng@huawei.com>
Message-ID: <YxslwvLFLTdT2R9z@codewreck.org>
References: <20220909103546.73015-1-xiujianfeng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909103546.73015-1-xiujianfeng@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Xiu Jianfeng wrote on Fri, Sep 09, 2022 at 06:35:46PM +0800:
 > Add missing __init/__exit annotations to module init/exit funcs. sure,
 queueing. FWIW I've checked the others all seem to have it. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oWcLr-0006NQ-1e
Subject: Re: [V9fs-developer] [PATCH -next] net/9p: add __init/__exit
 annotations to module init/exit funcs
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
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Xiu Jianfeng wrote on Fri, Sep 09, 2022 at 06:35:46PM +0800:
> Add missing __init/__exit annotations to module init/exit funcs.

sure, queueing.

FWIW I've checked the others all seem to have it.

> 
> Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
> ---
>  net/9p/trans_xen.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/9p/trans_xen.c b/net/9p/trans_xen.c
> index 41c57d40efb6..b15c64128c3e 100644
> --- a/net/9p/trans_xen.c
> +++ b/net/9p/trans_xen.c
> @@ -511,7 +511,7 @@ static struct xenbus_driver xen_9pfs_front_driver = {
>  	.otherend_changed = xen_9pfs_front_changed,
>  };
>  
> -static int p9_trans_xen_init(void)
> +static int __init p9_trans_xen_init(void)
>  {
>  	int rc;
>  
> @@ -530,7 +530,7 @@ static int p9_trans_xen_init(void)
>  module_init(p9_trans_xen_init);
>  MODULE_ALIAS_9P("xen");
>  
> -static void p9_trans_xen_exit(void)
> +static void __exit p9_trans_xen_exit(void)
>  {
>  	v9fs_unregister_trans(&p9_xen_trans);
>  	return xenbus_unregister_driver(&xen_9pfs_front_driver);


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
