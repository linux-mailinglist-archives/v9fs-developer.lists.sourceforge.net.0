Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6501DFB7A
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Apr 2019 16:28:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hLTkL-0004MP-Hw; Tue, 30 Apr 2019 14:28:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1hLTkJ-0004MH-W3
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:CC:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SA3BbnfX0I1Y9a/+EfIUqhCgCNlsCd4PtvIeML4C7oI=; b=SjBpp/ntxn6cx3NLQOurZBfG0v
 +zXteB0aUDk1f1kdsByj/a+5VvrxXkQJj+XY5PbydoGwiM93zvFHI9CV2AILw019z+zQWEGbW5KjY
 MX6GR04Wv/YZeq+xzwiR/f2p3F5DDgSZGQoAIq1Z0ivjAy5QzSSUIbyKtDsh6tdSYJQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:CC:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SA3BbnfX0I1Y9a/+EfIUqhCgCNlsCd4PtvIeML4C7oI=; b=W+7Mx6Sb9A4NSttkJsn1xHZXee
 S8rEQXNApxKZZJQ3wG9mVbXsZI970XGECPT3SURL/ogPqZos5SB4WLxYna9NU1TIhrCNmrE7LIC+u
 KilGXxyF//OIjIfbSP8oOej2Txm1n1kMwaHKI8yAkysbEKJU86M0o5aBxofcb8j8UWaI=;
Received: from [45.249.212.35] (helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLTkH-002mT6-Kf
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Apr 2019 14:28:35 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C0A3FBD7A962FC3D7C33;
 Tue, 30 Apr 2019 22:28:19 +0800 (CST)
Received: from [127.0.0.1] (10.177.31.96) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 22:28:15 +0800
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20190430115942.41840-1-yuehaibing@huawei.com>
 <20190430140907.GA19422@nautica>
From: YueHaibing <yuehaibing@huawei.com>
Message-ID: <a22ebdaa-0dcd-8ed0-44e8-2d1218708eb0@huawei.com>
Date: Tue, 30 Apr 2019 22:28:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190430140907.GA19422@nautica>
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hLTkH-002mT6-Kf
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

On 2019/4/30 22:09, Dominique Martinet wrote:
> YueHaibing wrote on Tue, Apr 30, 2019:
>> KASAN report this:
> 
> That's not KASAN, but fair enough - fix looks good. I'll queue this for
> 5.2 unless you absolutely want this in 5.1

Yes, this is not KASAN, just FAULT INJECTION.

> 
> If you're feeling nice p9_trans_xen_init has the exact same problem and
> could use the same fix :)

ok, I can fix it in another patch, thanks!

> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
