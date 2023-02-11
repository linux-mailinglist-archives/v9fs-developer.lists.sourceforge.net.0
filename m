Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC6D692BE5
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Feb 2023 01:22:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pQdf4-0001PK-Pj;
	Sat, 11 Feb 2023 00:22:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pQdf2-0001PE-Ie
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 00:22:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EKpYuU2BSjYn2WtIkkAflR1rHjUwy/J6E7OWRGdq6Fk=; b=DnNSPR2vrRqnnQosRBojVTzAmG
 xUvjcpy6R3o7Mek6ER3FZqTaCp5EmcMAV2anY5Z1pj0OcboEm/AZAQ2hqkyaHOmmhHmifr3MdH2u2
 I3ac8GFiuSPYo6zYy5XmUO9p3+4jP44SljxsCrorVQLTrY/LJgF6C49Pn2jywBGzJ6TM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EKpYuU2BSjYn2WtIkkAflR1rHjUwy/J6E7OWRGdq6Fk=; b=KaTNKDFEH1esbP2C4kaEDIH0sw
 CsBkJxvUT2sGgkUi4nO49ra6fj1SLQYjeetlvrr5KrhDg1PfUsiW+xzC2EOmzYJ3qdkzFdz8FZoi7
 G1HBG3SKaOaXHDzxduMcYjXtSg9+YvlB8HkNn2bc2igWynGvcvaRwrzI9ASm5FiGln+4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pQdez-0009J8-Np for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Feb 2023 00:22:36 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D5308C021; Sat, 11 Feb 2023 01:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676074968; bh=EKpYuU2BSjYn2WtIkkAflR1rHjUwy/J6E7OWRGdq6Fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1+akKVVrOnVgN0zZBC7WPgy9nZpFLhBk5ZSxiUaF4oMvS4GTQRsyZ1TzXvKhHJ6h7
 V/pzRT3YxD220KyXrjoizPfgRSeFjiagEPpp8vCWiso1uWbN3IcBUEemIBtjwhu/+5
 9z40cjGLCpLs4Q667BnO9HbkV6lSDLedj2JSc7itQ4Memg76sufzXRbw2Q219/wz3t
 yQfRRty2674S+eoxGHywqzmdinb36nNgbEXQflEhQJo6fEdFtRITFV5GbovCVG429G
 FrhL/5330AJfyLu7AYr+UIkYwohMRLUBjSskz4AUw2yZHm8bK+38Z3f1cLPA9wuVMV
 dx4gBeyxZIWYg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D10C5C009;
 Sat, 11 Feb 2023 01:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676074967; bh=EKpYuU2BSjYn2WtIkkAflR1rHjUwy/J6E7OWRGdq6Fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rmDkamA5seys9P7NQH/6492uZf6LtDFUhNDH2eucRWiHn3aCKeJ8YJLFV4CRO/JXA
 xioEbW5xFtTZq1QcmVhNrMob7TxL1vh4f1KnjlyXMB80xvaMFrDn3MNYknaNJE331a
 pDB8kwSxJ+0+ajUYqy+a+13lugcgB+YejxpsqEvYDneh+4Iq88T1WxCJprUjKUaNx9
 r51Pehn5Z14owi1nDLI45a2u49b/0l95G/jbIdXuCmmL7AJ2SafumKbLkM+aEs7ilP
 VgbOmQwmAo6P+hnEAabdB0mxOuV7utwMADEqEd74wr727rCKEoImrBExUedG0dNxo9
 z11km0qfkDr3Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c65af465;
 Sat, 11 Feb 2023 00:22:19 +0000 (UTC)
Date: Sat, 11 Feb 2023 09:22:04 +0900
From: asmadeus@codewreck.org
To: Zhengchao Shao <shaozhengchao@huawei.com>
Message-ID: <Y+bfrI+u98gM9a8j@codewreck.org>
References: <20230104020424.611926-1-shaozhengchao@huawei.com>
 <Y7UtGw6nBLFpXpPh@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7UtGw6nBLFpXpPh@unreal>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Leon Romanovsky wrote on Wed, Jan 04,
 2023 at 09:39:07AM +0200:
 > On Wed, Jan 04, 2023 at 10:04:24AM +0800, Zhengchao Shao wrote: > > When
 down_interruptible() or ib_post_send() failed in rdma_request [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pQdez-0009J8-Np
Subject: Re: [V9fs-developer] [PATCH v2] 9p/rdma: unmap receive dma buffer
 in rdma_request()/post_recv()
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
Cc: lucho@ionkov.net, Leon Romanovsky <leon@kernel.org>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux_oss@crudebyte.com, yuehaibing@huawei.com,
 tom@opengridcomputing.com, edumazet@google.com, weiyongjun1@huawei.com,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Wed, Jan 04, 2023 at 09:39:07AM +0200:
> On Wed, Jan 04, 2023 at 10:04:24AM +0800, Zhengchao Shao wrote:
> > When down_interruptible() or ib_post_send() failed in rdma_request(),
> > receive dma buffer is not unmapped. Add unmap action to error path.
> > Also if ib_post_recv() failed in post_recv(), dma buffer is not unmapped.
> > Add unmap action to error path.
> >
> > Fixes: fc79d4b104f0 ("9p: rdma: RDMA Transport Support for 9P")
> > Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
> Reviewed-by: Leon Romanovsky <leonro@nvidia.com>

Sorry for the delay -- I have no way of testing it but it looks sane,
I'll submit it when 6.3 opens up in a week or two.

Thanks for the patch & Leon for the review.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
