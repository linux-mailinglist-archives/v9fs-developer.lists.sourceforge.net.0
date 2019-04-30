Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E7FB11
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Apr 2019 16:09:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hLTRu-000189-CA; Tue, 30 Apr 2019 14:09:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hLTRs-000182-TE
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhrxQMNI1D45pPKdKTNVYidPJDbqpBeFYR1CoTEssNE=; b=QrNvoB+RRNaqeKOY4kzaqTjXrW
 lYVeK4L45STemdnNxu3WxQrK/P6dNHDrvJFNxWM4fx1FWrFCs+F4dTAR1BRw8KxlJrSlbVEH4zGfQ
 J615IT2SthlJsamAhukhiNs15+gRCkpEqnsB03oe3Bt3ou4mRsuv6j2zMq3QfIFXcao8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OhrxQMNI1D45pPKdKTNVYidPJDbqpBeFYR1CoTEssNE=; b=hu7P1REKfNHFT9Z7k5aHoYjBpy
 oZDV1hiWKbaQPsXEPk1N70hmQ9090mZMrybwJBk39FPgcMl/F1+ajI+5bnvUNvUeo+8t0vkbLLftp
 vmjr09hAWJP8MQuMm43xEqtBwg+VvdCHYzTdMqZcXfiX5NmR1cAslcWN31jOIu3Kj4As=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLTRp-000f5x-7V
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:09:32 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 8370AC01A; Tue, 30 Apr 2019 16:09:22 +0200 (CEST)
Date: Tue, 30 Apr 2019 16:09:07 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20190430140907.GA19422@nautica>
References: <20190430115942.41840-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430115942.41840-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hLTRp-000f5x-7V
Subject: Re: [V9fs-developer] [PATCH] 9p/virtio: Add cleanup path in
 p9_virtio_init
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
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

YueHaibing wrote on Tue, Apr 30, 2019:
> KASAN report this:

That's not KASAN, but fair enough - fix looks good. I'll queue this for
5.2 unless you absolutely want this in 5.1

If you're feeling nice p9_trans_xen_init has the exact same problem and
could use the same fix :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
