Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A851C72F4D
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 14:56:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqGoU-0003OU-KT; Wed, 24 Jul 2019 12:56:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hqGoT-0003O8-7Z
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 12:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tRI1IniVegTQRYO4TGJQovKVRqtm90GRij/Ychi2bjs=; b=fcPRuSog01Wed+4uMyrdTzPQdx
 OSUX2St8rPBGeom0vuzaotuolcwEliN/dyL1Vm1IdOH8JMNNSUE34uwaQykETkgCaqv32ZcDxnugk
 LD1TG5EEAk7sDEovWJjahejMyK5ugwhoFBGjvz4OqRSugh6BKd1yM4T8Q+u6zahPkjxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tRI1IniVegTQRYO4TGJQovKVRqtm90GRij/Ychi2bjs=; b=PlrL1WQS8sULT/6ImgSyt7HKkN
 1zMgAAVBI34yYnsXMKF9enwpYCzgpL5S02QGolGO6ZNVrkUxYhwawIgk+Arl5zHcMO+nJ5VXflk9b
 eqeAY5xLSfCpvX9kCbiIivBh/2k80HSckuKB6E3SBGsjIVBuTVH9DK6DYUeUau2lHJ7M=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqGoR-00G6om-0K
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 12:56:09 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 29525C009; Wed, 24 Jul 2019 14:56:00 +0200 (CEST)
Date: Wed, 24 Jul 2019 14:55:45 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20190724125545.GA12982@nautica>
References: <20190724103948.5834-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724103948.5834-1-baijiaju1990@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hqGoR-00G6om-0K
Subject: Re: [V9fs-developer] [PATCH] net: 9p: Fix possible null-pointer
 dereferences in p9_cm_event_handler()
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

Jia-Ju Bai wrote on Wed, Jul 24, 2019:
> In p9_cm_event_handler(), there is an if statement on 260 to check
> whether rdma is NULL, which indicates that rdma can be NULL.
> If so, using rdma->xxx may cause a possible null-pointer dereference.

The final dereference (complete(&rdma->cm_done) line 285) has been here
from the start, so we would have seen crashes by now if rdma could be
null at this point.

Let's do it the other way around and remove the useless "if (rdma)" that
has been here from day 1 instead ; I basically did the same with
c->status a few months ago (from a coverity report)...


That said, please note that 'rdma checked for null in this event->event
== RDMA_CM_EVENT_DISCONNECTED branch' does not mean rdma can be null in
other branches.
static analysis does not say anything more than the final complete()
should also have a check if the previous one has, but nothing about the
other cases in the switch.


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
