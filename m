Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B65A6853
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 Sep 2019 14:12:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i57fC-00011C-1u; Tue, 03 Sep 2019 12:11:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1i57fA-00010j-AV
 for v9fs-developer@lists.sourceforge.net; Tue, 03 Sep 2019 12:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EUTOAJ5vrISZdZbB5nhWLAb0dTuVygYHmRtFcNYfL9c=; b=BuR+Pd0BpM6vzoVjrBuNnpP5KR
 Rr3ZQToNHMyKQsvnMPG6lMR9RGYJuNFLkwM9fUUYRiUz5ij0oYetYsamcRLuUdk7HIkkFl9ZNQ4EI
 Ch8oNLSpkNov8/VReYXKUG7GcYHOfDPY0+ugfA7EsHITmUeckpaShQz4x7IdL8sX22z0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EUTOAJ5vrISZdZbB5nhWLAb0dTuVygYHmRtFcNYfL9c=; b=gcbx+eBN1iCw1WdJaophbCljPw
 Dc5on9SrW+X5oSfTp2yAhnTeViqhVoD7snlRg1ZkCSYv2OQVzyMhTYK93oGdyHoftZw30mjGZsHCY
 GEMNCEepUYYpamQrqZ3KtKeiFOeI0QTD0xSEwvo0Ssw/cfptw2n08pQj406dLGG/m72w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i57f6-008H38-JN
 for v9fs-developer@lists.sourceforge.net; Tue, 03 Sep 2019 12:11:56 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id EAF20C009; Tue,  3 Sep 2019 12:55:38 +0200 (CEST)
Date: Tue, 3 Sep 2019 12:55:23 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20190903105523.GA29600@nautica>
References: <20190724103948.5834-1-baijiaju1990@gmail.com>
 <20190724125545.GA12982@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724125545.GA12982@nautica>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i57f6-008H38-JN
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

Jia-Ju,

Dominique Martinet wrote on Wed, Jul 24, 2019:
> Jia-Ju Bai wrote on Wed, Jul 24, 2019:
> > In p9_cm_event_handler(), there is an if statement on 260 to check
> > whether rdma is NULL, which indicates that rdma can be NULL.
> > If so, using rdma->xxx may cause a possible null-pointer dereference.
> 
> The final dereference (complete(&rdma->cm_done) line 285) has been here
> from the start, so we would have seen crashes by now if rdma could be
> null at this point.
> 
> Let's do it the other way around and remove the useless "if (rdma)" that
> has been here from day 1 instead ; I basically did the same with
> c->status a few months ago (from a coverity report)...

Did you get anywhere with this, or should I submit a new patch myself ?
In the later case I'll tag this as Reported-by you

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
