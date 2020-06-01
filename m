Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FA81EB0AE
	for <lists+v9fs-developer@lfdr.de>; Mon,  1 Jun 2020 23:06:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jfrdm-0008As-Br; Mon, 01 Jun 2020 21:06:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sstabellini@kernel.org>) id 1jfrdk-0008AZ-8o
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Jun 2020 21:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tSV/xGV0VbYrRDd3p3mZch8Eueqs94bc+62KVqtOGu8=; b=SYU+sOmAgoXzbsx2dzkUUGeUlv
 wS7cV+tPTT99wAWHvTM6KbNBkx/M0gRKG6WHZaWWoEHoIviV5Jt7JSDErpn7Zd9DkGhDTYN9NUscV
 F0p0GCFjXBhCJHwn0Rytl8QmWwdEJMrdZEEmPAE+Wpjcv8FQrUBBml31IBPnQTkdxJsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tSV/xGV0VbYrRDd3p3mZch8Eueqs94bc+62KVqtOGu8=; b=FuMpBv16qzcQCbv16+GDp8dNkN
 LQ7bp35mD7nuOo5WwgvhbtvoASvVUxyTTGILTAGGBQJr+wcBl36PsIm9CIqXnrM0bCrV8Xdr5tKWS
 XhhH09EhbXGaKmy9WU36chLpCP/pCcCos2HBuPOWoonr1BgytRYyhbJSvdC90MHVLYJA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfrdj-007w29-5n
 for v9fs-developer@lists.sourceforge.net; Mon, 01 Jun 2020 21:06:36 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 563D32073B;
 Mon,  1 Jun 2020 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591045585;
 bh=JKKCcPSQ16JBYHZKrRYFmH1gNliKgP1BlndNb+gssBE=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=uCJYQiXodj60WSq0CnVF3iKVwa43WprWs1BZN9WRewFczGAqrs7i+Q3E8PaleOJyx
 HCN1p+zAxD9n38xJHpHaRnuIh13HMwwwprOxYhBIBOB2rAeU5sh0m29J2LC39rmfQQ
 CH8NGKE3y5IS9mlEOa72REboICezVZJ3c/cVcrxA=
Date: Mon, 1 Jun 2020 14:06:24 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20200522055847.GA2833@nautica>
Message-ID: <alpine.DEB.2.21.2006011406100.12801@sstabellini-ThinkPad-T480s>
References: <20200521193242.15953-1-sstabellini@kernel.org>
 <20200522055847.GA2833@nautica>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xilinx.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jfrdj-007w29-5n
Subject: Re: [V9fs-developer] [PATCH v2] 9p/xen: increase XEN_9PFS_RING_ORDER
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
Cc: jgross@suse.com, lucho@ionkov.net,
 Stefano Stabellini <sstabellini@kernel.org>, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 xen-devel@lists.xenproject.org, boris.ostrovsky@oracle.com,
 Stefano Stabellini <stefano.stabellini@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

n Fri, 22 May 2020, Dominique Martinet wrote:
> Stefano Stabellini wrote on Thu, May 21, 2020:
> > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > 
> > Increase XEN_9PFS_RING_ORDER to 9 for performance reason. Order 9 is the
> > max allowed by the protocol.
> > 
> > We can't assume that all backends will support order 9. The xenstore
> > property max-ring-page-order specifies the max order supported by the
> > backend. We'll use max-ring-page-order for the size of the ring.
> > 
> > This means that the size of the ring is not static
> > (XEN_FLEX_RING_SIZE(9)) anymore. Change XEN_9PFS_RING_SIZE to take an
> > argument and base the calculation on the order chosen at setup time.
> > 
> > Finally, modify p9_xen_trans.maxsize to be divided by 4 compared to the
> > original value. We need to divide it by 2 because we have two rings
> > coming off the same order allocation: the in and out rings. This was a
> > mistake in the original code. Also divide it further by 2 because we
> > don't want a single request/reply to fill up the entire ring. There can
> > be multiple requests/replies outstanding at any given time and if we use
> > the full ring with one, we risk forcing the backend to wait for the
> > client to read back more replies before continuing, which is not
> > performant.
> > 
> > Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
> 
> LGTM, I'll try to find some time to test this by the end of next week or
> will trust you if I can't make it -- ping me around June 1st if I don't
> reply again until then...

Ping :-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
