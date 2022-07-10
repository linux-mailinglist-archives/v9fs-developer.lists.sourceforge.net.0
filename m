Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEAD56CF41
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 15:22:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAWsv-0000lX-4L; Sun, 10 Jul 2022 13:22:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oAWsu-0000lR-1G
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 13:22:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K7azBUtXb9QlU6M/oC4wUt3g0LkVwhsHRxrJ+2emkdU=; b=Ktknk5rcDi6W81l5cdpXFrd14b
 VGrh9BTek+gDyb6kmP8Czr7HPJcP4pT2hb3YZddeBVO+xfrM/J6adpzWd6xKU8Y9I07w1MkhzWylk
 TVxG6zxuy1f9IYeDQgFIV4QWDQvgoG7rIu5eo961Qop2JqRSI8nT5o54tr832ECOeiXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K7azBUtXb9QlU6M/oC4wUt3g0LkVwhsHRxrJ+2emkdU=; b=PCtz6D+wGUEKpOO+G8tP+aNC5G
 dBVEB0dM6n96asIyT5r9dHmTzAK/DutmK7B+co2J5FaSMmqnEVu9LNWBP7TQp+Z5Rtc1l7tXNrdSF
 HJt/wrm6tNEzbOJXg4/FpAeiLaB46P9cWdhkJ2ArF8zSYx9/FH/OFv+sHFyT8FtCFouw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAWsr-0003cc-5q
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 13:22:03 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B9BBDC022; Sun, 10 Jul 2022 15:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657459314; bh=K7azBUtXb9QlU6M/oC4wUt3g0LkVwhsHRxrJ+2emkdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z232gDRtgVmB7mdntIImDT8XecmC5DWbBht8xmM+5sieGswOW2apv+23TO3SpEwoL
 lF6UNsQUOZXblJ7O35XdNUrui73dXa1gJzqqLhSrK0gc9i3Q89lJaHnKi8iMxarlQi
 pPJJEQEO0dAuvUCbFXwXoHsOychQN4kScyxL8Yi2zFhtccDQoezs0dIKq7GVG7Ou0d
 mdp5a0axxBkvAAd/ma/vawl3Ob0x8P3hhQo4OlAutRYAS0rdFboXU675JeD34t52ik
 j7jmYyiGDSilJ45WbeuLviDMDXKnShcYgTxXt3gHRUcevaumW1EPyzkd+mAsAVRepa
 9Yq/ewqhroisA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 62F05C009;
 Sun, 10 Jul 2022 15:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657459313; bh=K7azBUtXb9QlU6M/oC4wUt3g0LkVwhsHRxrJ+2emkdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bBVfSBX5Y0e/dgd4JveWnVnEfSnQEuvDoO7g4aons8iVKMy+maaeBXSwAJX28HC7g
 YcKLDHiV62wpmBBGEYeG3fE3TDmY7sLiwt0S/jusqVC9wuP6jZ4HWK6pEWahs4UbIj
 0JueGl8zHouoFUaoJPyxEMd5YFBfBz1KpajRCuqNvD0sF3vHTwUg+yWL6FN9FWspyk
 RyGn33MP0LOYTV/2NJY149KCQMz5L9zsLHynCoXsYXShwho+XockesY2VOC7kXs49j
 /qxOO6vDsqu8BBb7h5ehClBVV91hU1dTvUk2dtwjKUdylAuAsNvp8LS7x/7hZrzpMl
 b2TZeuak+IktA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f2fe1c83;
 Sun, 10 Jul 2022 13:21:48 +0000 (UTC)
Date: Sun, 10 Jul 2022 22:21:33 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tyler Hicks <tyhicks@linux.microsoft.com>
Message-ID: <YsrSXdGYQdtdqp9E@codewreck.org>
References: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tyler Hicks wrote on Sat, Jul 09, 2022 at 03:00:05PM -0500:
 > Ensure that the fid's iounit field is set to zero when a new fid is >
 created.
 Certain 9P operations, such as OPEN and CREATE, allow the > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAWsr-0003cc-5q
Subject: Re: [V9fs-developer] [PATCH] net/9p: Initialize the iounit field
 during fid creation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tyler Hicks wrote on Sat, Jul 09, 2022 at 03:00:05PM -0500:
> Ensure that the fid's iounit field is set to zero when a new fid is
> created. Certain 9P operations, such as OPEN and CREATE, allow the
> server to reply with an iounit size which the client code assigns to the
> fid struct shortly after the fid is created in p9_fid_create(). Other
> operations that follow a call to p9_fid_create(), such as an XATTRWALK,
> don't include an iounit value in the reply message from the server. In
> the latter case, the iounit field remained uninitialized. Depending on
> allocation patterns, the iounit value could have been something
> reasonable that was carried over from previously freed fids or, in the
> worst case, could have been arbitrary values from non-fid related usages
> of the memory location.
> 
> The bug was detected in the Windows Subsystem for Linux 2 (WSL2) kernel
> after the uninitialized iounit field resulted in the typical sequence of
> two getxattr(2) syscalls, one to get the size of an xattr and another
> after allocating a sufficiently sized buffer to fit the xattr value, to
> hit an unexpected ERANGE error in the second call to getxattr(2). An
> uninitialized iounit field would sometimes force rsize to be smaller
> than the xattr value size in p9_client_read_once() and the 9P server in
> WSL refused to chunk up the READ on the attr_fid and, instead, returned
> ERANGE to the client. The virtfs server in QEMU seems happy to chunk up
> the READ and this problem goes undetected there. However, there are
> likely other non-xattr implications of this bug that could cause
> inefficient communication between the client and server.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>

Thanks for the fix!

> ---
> 
> Note that I haven't had a chance to identify when this bug was
> introduced so I don't yet have a proper Fixes tag. The history looked a
> little tricky to me but I'll have another look in the coming days. We
> started hitting this bug after trying to move from linux-5.10.y to
> linux-5.15.y but I didn't see any obvious changes between those two
> series. I'm not confident of this theory but perhaps the fid refcounting
> changes impacted the fid allocation patterns enough to uncover the
> latent bug?
> 
>  net/9p/client.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 8bba0d9cf975..1dfceb9154f7 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -899,6 +899,7 @@ static struct p9_fid *p9_fid_create(struct p9_client *clnt)
>  	fid->clnt = clnt;
>  	fid->rdir = NULL;
>  	fid->fid = 0;
> +	fid->iounit = 0;

ugh, this isn't the first we've missed so I'll be tempted to agree with
Christophe -- let's make that a kzalloc and only set non-zero fields.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
