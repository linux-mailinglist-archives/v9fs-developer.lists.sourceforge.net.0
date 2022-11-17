Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9019F62D413
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 08:30:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovZLY-0006Vv-3n;
	Thu, 17 Nov 2022 07:30:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ovZLV-0006Vp-VU
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 07:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SWElJ8vtTRkRZrwBaPPTOgrSoKbRZvznzYk3yhSldIU=; b=I3HYR/ECaYU/o8yAH1i21wD1ww
 wabU/1I44Hpv4cMXroaYRddiBPGG+lF4EfMDnLospYu4PzMPMCOyoXFdGJvlRIOWvY+lD/33q/I47
 DJ2D/08O+EHts3aDd6Kf2xkhL7wYak3T6c+a5YXFE8Zb3za9CTBxpAb9LOdFBOwRxE5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SWElJ8vtTRkRZrwBaPPTOgrSoKbRZvznzYk3yhSldIU=; b=eDWL9z3X7bnD7rg4svxRfEUpYC
 r9Dyb56uMfXajF9ZSIf+m4egbye+4lcAzZ+GCSOC9zvM6an7hm2N7lJGc95QVy63PUMCIlfRf8P0a
 h5luwVT7B9wHL5IdDX37BHXxjuyQ8SvlUICYlEF8A/fjxf9wonruRum7TwuUwIggezFU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovZLR-00B9Rs-Pw for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 07:30:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 17026C021; Thu, 17 Nov 2022 08:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668670197; bh=SWElJ8vtTRkRZrwBaPPTOgrSoKbRZvznzYk3yhSldIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FOp7chA/T2OO1XqJkRsF3CgpBpppUs2y7UpdgW83Bw2kUQ7RZ+OyQoMolu90WY9R9
 utsj1lMmfFoaw1EGa1DCnVb+ogIy5ZFd8H3p7T+xL7sMjUGUtQ2Z3d1BaTLCU4Aaf7
 +6lAjqT8i6KJKownLP2Zebj4NMAkwvlD79JuJfWJnyLpZp7CV8zWK+2tJ5BFQaV/T0
 1TxWduPFc69lnyfWRB8T64B8rH9vO7tAlgrwyVarQULT87Id06Bt38orPYp1rRiDGB
 6y3OtWbJx5optzX4hrLf+L7n7qn2WwD8BCtyIE1jtzUtdLiNQfBtkkzAq7dga7dY9V
 k7MRdJdOzim6g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 67C05C009;
 Thu, 17 Nov 2022 08:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668670195; bh=SWElJ8vtTRkRZrwBaPPTOgrSoKbRZvznzYk3yhSldIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LrBMSaeFUuSOPi84gfWo+Vfw8/398wMqsefd2Dm9m09giYHHlWbjeI68Doa5y9NZ/
 ttGF18UlHJIXFtiHfxGROqSjiO1HB1Tc5XN+YqtDksrAUCNBzYfyMVbGlrgNn0BMwN
 FMXo7v/E/zgHnxLksmgOaj8Fm39ANKuHyEMYBREPyTkc3/YL/we4WfMrrxpc76ZvxQ
 63v0NbqWHmVBD+zy/eXcX0+EYCkhaS2G/eSGQ1V5u37pVke+P4Rrq0inVkJdK7nVLx
 qyIPlFdpw2LqkUh5ycXBYScG/NM+kVMnN8s9CXF77/LMg89yPfJm4Bid8a4lgwo8ku
 sPY8kS0JOXWsA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cb1a3746;
 Thu, 17 Nov 2022 07:29:43 +0000 (UTC)
Date: Thu, 17 Nov 2022 16:29:28 +0900
From: asmadeus@codewreck.org
To: GUO Zihua <guozihua@huawei.com>
Message-ID: <Y3Xi2PmyglEzH5/u@codewreck.org>
References: <20221117061444.27287-1-guozihua@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117061444.27287-1-guozihua@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  GUO Zihua wrote on Thu, Nov 17, 2022 at 02:14:44PM +0800:
 > The root cause of this issue is that we check the size of the message >
 received against the msize of the client in p9_read_work. However, t [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rc.id]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ovZLR-00B9Rs-Pw
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix write overflow in p9_read_work
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
 linux_oss@crudebyte.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

GUO Zihua wrote on Thu, Nov 17, 2022 at 02:14:44PM +0800:
> The root cause of this issue is that we check the size of the message
> received against the msize of the client in p9_read_work. However, this
> msize could be lager than the capacity of the sdata buffer. Thus,
> the message size should also be checked against sdata capacity.

Thanks for the fix!

I'm picky, so a few remarks below.

> 
> Reported-by: syzbot+0f89bd13eaceccc0e126@syzkaller.appspotmail.com
> Fixes: 1b0a763bdd5e ("9p: use the rcall structure passed in the request in trans_fd read_work")
> Signed-off-by: GUO Zihua <guozihua@huawei.com>
> ---
>  net/9p/trans_fd.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 56a186768750..bc131a21c098 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -342,6 +342,14 @@ static void p9_read_work(struct work_struct *work)
>  			goto error;
>  		}
>  
> +		if (m->rc.size > m->rreq->rc.capacity - m->rc.offset) {

Ah, it took me a while to understand but capacity here is no longer the
same as msize since commit 60ece0833b6c ("net/9p: allocate appropriate
reduced message buffers")

If you have time to test the reproducer, please check with any commit
before 60ece0833b6c if you can still reproduce. If not please fix your
Fixes tag to this commit.
I'd appreciate a word in the commit message saying that message capacity
is no longer constant here and needs a more subtle check than msize.


Also:
 - We can remove the msize check, it's redundant with this; it doesn't
matter if we don't check for msize before doing the tag lookup as tag
has already been read
 - While the `- offset` part of the check is correct (rc.size does
not include headers, and the current offset must be 7 here) I'd prefer
if you woud use P9_HDRSZ as that's defined in the protocol and using
macros will be easier to check if that ever evolves.
 - (I'd also appreciate if you could update the capacity = 7 next to the
'start by reading header' comment above while you're here so we use the
same macro in both place)


> +			p9_debug(P9_DEBUG_ERROR,
> +				 "requested packet size too big: %d\n",
> +				 m->rc.size);

Please log m->rc.tag, m->rc.id and m->rreq->rc.capacity as well for
debugging if that happens.

> +			err = -EIO;
> +			goto error;
> +		}
> +
>  		if (!m->rreq->rc.sdata) {
>  			p9_debug(P9_DEBUG_ERROR,
> 				 "No recv fcall for tag %d (req %p), disconnecting!\n",
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
