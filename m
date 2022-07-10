Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FE956CF81
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 16:50:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAYFw-00028w-TA; Sun, 10 Jul 2022 14:49:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oAYFn-000288-KR
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 14:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJOfGDr7u/BDDToEE9Qvjgh28U6lSAYZqnZi422JXYY=; b=CfZ5vnTm22/Lv84kqMlAWAK61d
 C639CmptZR4rN64gPBhHuKLTZrgv0yzu8z7Ub7BeOuAkZYBh0lEzdSgSqWOzZuekE823X+BrcDY4q
 xFPIKqjrsFlH2Eh8mKo2ZmYq/5avgO0Hou7Y2gbWGmPiFDZtPoH3mRXQSWyfg0P9avuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WJOfGDr7u/BDDToEE9Qvjgh28U6lSAYZqnZi422JXYY=; b=Klq+alC5PbDcOcx7ng6tP8RN4T
 LkWy5/wOwQmw22qVrIGXUVH5gU7ZowNejkdemJC6Dyn69olr1+lQmPs3T8wmsYdPVV9YRXn1poR1p
 Zputb89qdAg159xBFNMe6wG9mzXArGG90UsfmsTsjbKHAg6dp1YxWVbmpghx/pmGhSSw=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAYFj-00CtII-NW
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 14:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WJOfGDr7u/BDDToEE9Qvjgh28U6lSAYZqnZi422JXYY=; b=Sk5AKrhUTgnBq8NkdSEVntBrug
 mPi63BSKjiStajFW8QukCAZqdAsWKMB1K/phOnT5IzYZeiO2hO/17R4aLh/gl0ZQNqCvtkjPA2BCV
 7ByjyApVa9Y+nKo6MiO/4tqFmtnaMvtDeV5Ezit500f2R7aBFWxLoXph8HZlgXbrL7iiDkJhlGZa7
 oYmFd/E+7E8RpkowUfyDnj5IxvZ2Z6CDwiDfzz6rHaqLFD8PlYLjFkfA/ASs5gO0TV2UoHL0wdl77
 B7jNcRSz/N4wrmxYqd2Hs00jfiDNPRB2wxlBhcPbayAL3xxFG0nl/qQhuVtnwA1Iwv9ZqbRMh1MYz
 QWoSPIBR07rlAyOFO+vB17tTtmh6pqBA54wZPwHWIx1ofy9mimoANDsqFHp5ykaseoh47q5hekjg+
 nWudIjDbeLiwl90BZFmFOlToFGpxUh4wgR2HfEDbcX0iIqgPaJzJUatT6HMGZk3d3HX84S2M0hn0z
 8HK/yUNG8KqBG6Ocq9b3XZvtGqjNtXj70ekSUHr1CFV/E4EQ3ULqxeqTw1fsA85br1fXZWZq1BiZ/
 ZeXJYiFVciaYYBJ84Qw0R5yRH6oCtHOoT8vdKo8csT4iBb9jW9HvanNNHFcTn9pf1UNNyM64FB+M1
 2CelIqseABwnf4M+EwNZOr9wm9mSzWBc9U7G+p8rY=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Tyler Hicks <tyhicks@linux.microsoft.com>
Date: Sun, 10 Jul 2022 16:48:29 +0200
Message-ID: <1984068.YOKu8ataPd@silver>
In-Reply-To: <20220710141402.803295-1-tyhicks@linux.microsoft.com>
References: <20220710141402.803295-1-tyhicks@linux.microsoft.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sonntag, 10. Juli 2022 16:14:02 CEST Tyler Hicks wrote:
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oAYFj-00CtII-NW
Subject: Re: [V9fs-developer] [PATCH v2] net/9p: Initialize the iounit field
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 10. Juli 2022 16:14:02 CEST Tyler Hicks wrote:
> Ensure that the fid's iounit field is set to zero when a new fid is
> created. Certain 9P operations, such as OPEN and CREATE, allow the
> server to reply with an iounit size which the client code assigns to the
> p9_fid struct shortly after the fid is created by p9_fid_create(). On
> the other hand, an XATTRWALK operation doesn't allow for the server to
> specify an iounit value. The iounit field of the newly allocated p9_fid
> struct remained uninitialized in that case. Depending on allocation
> patterns, the iounit value could have been something reasonable that was
> carried over from previously freed fids or, in the worst case, could
> have been arbitrary values from non-fid related usages of the memory
> location.
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
> the READ and this problem goes undetected there.
> 
> Fixes: ebf46264a004 ("fs/9p: Add support user. xattr")
> Cc: stable@vger.kernel.org
> Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

> ---
> 
> v2:
> - Add Fixes tag
> - Improve commit message clarity to make it clear that this only affects
>   xattr get/set
> - kzalloc() the entire fid struct instead of individually zeroing each
>   member
>   - Thanks to Christophe JAILLET for the suggestion
> v1: https://lore.kernel.org/lkml/20220710062557.GA272934@sequoia/
> 
>  net/9p/client.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 8bba0d9cf975..371519e7b885 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -889,16 +889,13 @@ static struct p9_fid *p9_fid_create(struct p9_client
> *clnt) struct p9_fid *fid;
> 
>  	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
> -	fid = kmalloc(sizeof(*fid), GFP_KERNEL);
> +	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
>  	if (!fid)
>  		return NULL;
> 
> -	memset(&fid->qid, 0, sizeof(fid->qid));
>  	fid->mode = -1;
>  	fid->uid = current_fsuid();
>  	fid->clnt = clnt;
> -	fid->rdir = NULL;
> -	fid->fid = 0;
>  	refcount_set(&fid->count, 1);
> 
>  	idr_preload(GFP_KERNEL);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
