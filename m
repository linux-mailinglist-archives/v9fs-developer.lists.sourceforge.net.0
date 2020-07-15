Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69209220659
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 09:37:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvbyy-0000Ln-76; Wed, 15 Jul 2020 07:37:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1jvbyt-0000LX-Aw
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 07:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G792ZD88BzWHu8v7nhFi7jwiPeciW6tuQujmBqhbskQ=; b=JcmRG+yA5y1xhBaCKrY+0VEuDm
 QguLu1pvssVw69OSnr7qhn2vnkzCloynRBANAIuWVjkJCv2UPUFdDihZQsQemNGcu/5p6YuZc6N9E
 6P7yrTvN3naD+rYY6hvnIjAkrs6YhYdPFxi7vJXz37yd2lJXHwygChUcDDVbTzU/litE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G792ZD88BzWHu8v7nhFi7jwiPeciW6tuQujmBqhbskQ=; b=XFb6vnMADVptS/u5yZ5TF3SaSx
 EBVPkJWN6grqGq53f4OgDmmE8m8Wd9KW4iYKAl9cwJuIyNs/o+jRk01UCJoiOz+Q+c9Ky4U8ao3ds
 Y+6Yt0CrkkDZ678Chg5h/9YI1cKSJsEnQkBWRhsKpuubWf0gztCt5T637B/q3RFJEIyM=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvbyo-008Nu8-VU
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 07:37:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 949496736F; Wed, 15 Jul 2020 09:37:15 +0200 (CEST)
Date: Wed, 15 Jul 2020 09:37:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200715073715.GA22899@lst.de>
References: <20200710085722.435850-1-hch@lst.de>
 <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
 <20200711104923.GA6584@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200711104923.GA6584@nautica>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvbyo-008Nu8-VU
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, v9fs-developer@lists.sourceforge.net,
 Doug Nazar <nazard@nazar.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

FYI, this is now generating daily syzbot reports, so I'd love to see
the fix going into Linus' tree ASAP..


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
