Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 643C73E5D7E
	for <lists+v9fs-developer@lfdr.de>; Tue, 10 Aug 2021 16:21:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mDScw-0007TI-NH; Tue, 10 Aug 2021 14:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mDScv-0007TB-2g
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 14:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+lxGWE04vsIl7HgIEAsQCH6l43miRMDU9SmcVipHZmU=; b=HiTw31mUGFtGYx52apzF6mLmFW
 nyGLxhhc2oB51xitNthvdYd0VBDvBy+zaeLKJi6OLlfswpmbYwEvtOnV/8o1kjGC2wI14QSAsLP92
 pr5nfmCSBeEnbhYDEWYiWvzVGVoA06TDP6/GRZHJUjI9/AcL99GrkacDw0N2iWfRtfVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+lxGWE04vsIl7HgIEAsQCH6l43miRMDU9SmcVipHZmU=; b=ZwZTJnsUXQi6c+TJJaH5170pyG
 LyoOvX8wSTdl/SqsVU/cVvD/sfDdWU1K6t+g6jzqh88/dZ9Bh4QD+s0h4zcr48kzGIFqHwHc9KZUI
 8enPV5tlWjkW9n4M0+qsb3HaGfasz+t1P+PzzXu9LtkYTqZvnOEVTdwM+63Dz5lm1/40=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDScq-001wGV-Mj
 for v9fs-developer@lists.sourceforge.net; Tue, 10 Aug 2021 14:21:08 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 50536C01F; Tue, 10 Aug 2021 16:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1628605257; bh=+lxGWE04vsIl7HgIEAsQCH6l43miRMDU9SmcVipHZmU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DSdcRZJClJzoHeCsRKsYgAbo4gY6cRZlS7KZYZc1aisTcrT++BesFqVU8njHm4SHL
 ah0S1F+SvgZmFBoz/U8zompPeoa3auMpusw2887PBONp06Pb+Gd315zsOLq1ANd9iM
 XCe2+kYzDVLiTQhyrKyAMcbmRg4kvDkttMVU/CpRfl2BY0CvsH56zWppzE6p+ItSiw
 hlKtek37jR39aTuaNkHAQvtSC6CDiHR0VTEq6SQ85aWQ64hrIr/GZp5gQ8KX280/G7
 CFV9cCkJoHVEITSFw3zVNdEXa9Pdiy0ZHwQvu43Hi88XIWs5N45MYzngz5cYYMyOjH
 qTD2XBLUjM1GQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C441EC009;
 Tue, 10 Aug 2021 16:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1628605246; bh=+lxGWE04vsIl7HgIEAsQCH6l43miRMDU9SmcVipHZmU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cS15lj54HNrLb9Y9VUGw09SD+QSbNFVIL+CNdJPXc8TPNxnw5Ii5hHp3YC+HUUo+8
 RDue9JehcUoIoRV8Ur9mayr1TzaosMzddPCBADLRsl41I9ng6vEqoKw1/DldpbN4n3
 mgVBJAT6uBiqpET9PJGOdL+8RIEcsgzHaORtKuPEgKSVl+cy1zJrOMXc1dXQS0qgBQ
 UgVTC8dm4mgtbn7tPDQgPv5Pl78vPcoOjxfwoRMHu6iY22j2QbWtraniQ8yDgcMhN6
 krtHobNUExnVBLd0DYIrNwT7r4ZgYVAcYjImW1y1os1kTEvtSMVYeotChP+dtRw42+
 gPBG/aPZjAWNA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4abb812f;
 Tue, 10 Aug 2021 14:20:39 +0000 (UTC)
Date: Tue, 10 Aug 2021 23:20:24 +0900
From: asmadeus@codewreck.org
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <YRKLKGtxVZAbKVG5@codewreck.org>
References: <20210810132007.296008-1-islituo@gmail.com>
 <YRKFXpilGXnKZ2yH@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YRKFXpilGXnKZ2yH@unreal>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1mDScq-001wGV-Mj
Subject: Re: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereference in p9_cm_event_handler()
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
 linux-kernel@vger.kernel.org, davem@davemloft.net, baijiaju1990@gmail.com,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 TOTE Robot <oslab@tsinghua.edu.cn>, Tuo Li <islituo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Leon Romanovsky wrote on Tue, Aug 10, 2021 at 04:55:42PM +0300:
> On Tue, Aug 10, 2021 at 06:20:07AM -0700, Tuo Li wrote:
> > The variable rdma is checked when event->event is equal to 
> > RDMA_CM_EVENT_DISCONNECTED:
> >   if (rdma)
> > 
> > This indicates that it can be NULL. If so, a null-pointer dereference will 
> > occur when calling complete():
> >   complete(&rdma->cm_done);
> > 
> > To fix this possible null-pointer dereference, calling complete() only 
> > when rdma is not NULL.
> 
> You need to explain how is it possible and blindly set if () checks.
> I would say first "if (rdma)" is not needed, but don't know for sure.

Sounds like static analysis because there's a if (rdma) check in
RDMA_CM_EVENT_DISCONNECTED above, so if that needed check then it will
bug right afterwards

I'd tend to agree I don't think it's possible client->trans is null
there (it's filled right after rdma_create_id which defines the handler,
there might be a window where the callback is called before? But as I
understand it shouldn't be called until we resolve address and connect
then later disconnect)

So, I agree with Leon - unless you have a backtrace of a real bug
let's remove the other 'if' if you want to cleanup something for your
robot.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
