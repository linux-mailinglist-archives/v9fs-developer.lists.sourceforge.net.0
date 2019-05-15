Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0941F7E5
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 May 2019 17:42:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hQw2r-0006PS-1W; Wed, 15 May 2019 15:42:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hQw2q-0006PD-Cq
 for v9fs-developer@lists.sourceforge.net; Wed, 15 May 2019 15:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ip4I/Qyzt04ExpNMDEOxnbYGYQe75Qu74f+fj8SYBlc=; b=f2ZotrX0RypYNf8hrOY1qwDZl8
 NfLiDEakRP/fskErZRT/xfbcElpQXLCfON34dax1IFB/7CM4G2qr9FbE6Bue4EjM9aqZQbBdOFcS4
 17274tR0zpf4j4isj/9h2KFABCkHuMOW2kff/jPVrVnamsSBb2kG3MpGNXjNDr+YBOJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ip4I/Qyzt04ExpNMDEOxnbYGYQe75Qu74f+fj8SYBlc=; b=ImiWrUY0YPKn7ceqw2gbJOB1y4
 1wi0vUTGLgwHXUuVe2ZislsmUERV4qViw523eT3s6LeWVHEJ9ziyhX2UFJD9zfdmLi0BzBp4xDRvf
 k1YI4Ix2uH/QN62wyrfgjMZDIlxvdsLn9oulRfeIksvPohjJiWfnxxtWFunXhMN+NEuA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hQw2o-004uJ7-6A
 for v9fs-developer@lists.sourceforge.net; Wed, 15 May 2019 15:42:16 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 5AFDDC009; Wed, 15 May 2019 17:42:07 +0200 (CEST)
Date: Wed, 15 May 2019 17:41:52 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20190515154152.GA29826@nautica>
References: <20190430143933.19368-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430143933.19368-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hQw2o-004uJ7-6A
Subject: Re: [V9fs-developer] [PATCH -next] 9p/xen: Add cleanup path in
 p9_trans_xen_init
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
> If xenbus_register_frontend() fails in p9_trans_xen_init,
> we should call v9fs_unregister_trans() to do cleanup.
> 
> Fixes: 868eb122739a ("xen/9pfs: introduce Xen 9pfs transport driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks, queued both in my repo - sorry for the delay.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
