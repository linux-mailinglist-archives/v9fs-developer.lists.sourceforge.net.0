Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D165CDB9
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 Jan 2023 08:39:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pCyN8-0001Vv-Ls;
	Wed, 04 Jan 2023 07:39:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leon@kernel.org>) id 1pCyMq-0001Vn-7q
 for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 07:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DCVKhQB9ge/mI9MF92MdlwnE6A2LGQ7MVAADRZ8MAz8=; b=SZpEkSbDBtRqsNpEtGBD1ibGMr
 8xcCE97byb3vUH84kvFsjzVao5RKdiiSLj9bSQ9lPqwl8+ZO/LmXXcJmWmcEZv5nKrRm4+SsQsAuT
 dFszHeCsYGdnEgE5bHOrnOvd7DjrgausKIYOyUi8FKZ1o0uOI1LJEjQs/38zzEkWY26I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DCVKhQB9ge/mI9MF92MdlwnE6A2LGQ7MVAADRZ8MAz8=; b=Z6cwPfwvGTHhtLcwABsf52V+eR
 EEXw1cNVEqhm0r6W5TIbggOWRaMDcE4AtcBtj2/Qz/pVT0JHjFfgrCchg5rgtOU/DHs6rUq0nbcqY
 /CcW8zHehGQwHa1898+oHnHS/9kbM8HeAHiW6XUFX8kuZhSdfN6UToLLTPSb1FSuoNMg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pCyMp-0000AT-IH for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 07:39:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 47C9BB811A6;
 Wed,  4 Jan 2023 07:39:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F959C433EF;
 Wed,  4 Jan 2023 07:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672817952;
 bh=pXGIxrQT0g8QNAxvRF2T96MW1lWBoEh+WiMLx63M3S4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JjPaUwaVuOiFQXAuqcctufZhJ7tzOXjByM4+7ite4R/dugUWmGQdnBnzqS5SwfCB2
 z1qQHXOvmOo66YyDt/09ATa2qQxGQ8Pqtt5r9n9fjbnCM29AE3JxXcYiR46zjY/xZ9
 LalhoqWrj/S2J2WyWPSg0b4Caa971a8m3HT+pyfiCMR8RWgO/QiIVcsacjVkZ6Yeum
 rBkIswN6Xouxqv5McoOoOZI7aQ9rkPiD9byCzqZ5ttpOY1Bwc3B5DyRO0D+4Ll07k5
 nZkaf9bRAPqv1D4UqGW431wF4iPaBcewapdhT5RE/fz/j189M71XSZ8ysyksAn/oNW
 5OJ0f6SzGFUhQ==
Date: Wed, 4 Jan 2023 09:39:07 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Zhengchao Shao <shaozhengchao@huawei.com>
Message-ID: <Y7UtGw6nBLFpXpPh@unreal>
References: <20230104020424.611926-1-shaozhengchao@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230104020424.611926-1-shaozhengchao@huawei.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 04, 2023 at 10:04:24AM +0800,
 Zhengchao Shao wrote:
 > When down_interruptible() or ib_post_send() failed in rdma_request(), >
 receive dma buffer is not unmapped. Add unmap action to error [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pCyMp-0000AT-IH
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, tom@opengridcomputing.com,
 edumazet@google.com, weiyongjun1@huawei.com, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jan 04, 2023 at 10:04:24AM +0800, Zhengchao Shao wrote:
> When down_interruptible() or ib_post_send() failed in rdma_request(),
> receive dma buffer is not unmapped. Add unmap action to error path.
> Also if ib_post_recv() failed in post_recv(), dma buffer is not unmapped.
> Add unmap action to error path.
> 
> Fixes: fc79d4b104f0 ("9p: rdma: RDMA Transport Support for 9P")
> Signed-off-by: Zhengchao Shao <shaozhengchao@huawei.com>
> ---
> v2: add unmap action if ib_post_send() or ib_post_recv() failed
> ---
>  net/9p/trans_rdma.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
