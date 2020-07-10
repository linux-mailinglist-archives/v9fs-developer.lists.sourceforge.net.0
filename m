Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2803A21B3D2
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 13:12:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtqxc-0007dh-OS; Fri, 10 Jul 2020 11:12:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jtqxb-0007dX-Cj
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qR7h0r+FFvoLhQgeL8bJG/QF49ckG8Ymtq+tC5uDzRs=; b=YHRgTqnSYT4ftfrrOzOSzFaojG
 XFV5Fg2awMcwS//vLj001o3TZdOoFoF3Jm1FFA9oDROy0M1frt2T+JLmGnfQi589A9pWzYIGkzrPC
 1w/MDDzC7N2mFgFeE1e4DwAWjnDzO7INZS32NdaheSZYOdoOvMmbUsbMutog8+WMQ5WI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qR7h0r+FFvoLhQgeL8bJG/QF49ckG8Ymtq+tC5uDzRs=; b=Zumjb9+ZrUdWZ9EKisKN3oAgsw
 YoHUHRhYBRP9x1O4sFKianVrnut3QI1YOXKRSZOsRUh3qU/uNPpyB4HH+/hEvXdrQyw/879jsfW47
 31FoT6pX+fVzCIMuxErxLc93SloYkNNgw3xn7kk0Z71k52L8WxcGn1YIfUdgXmOG7EIQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtqxZ-001vqf-SD
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:12:55 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id A3B2DC009; Fri, 10 Jul 2020 13:12:47 +0200 (CEST)
Date: Fri, 10 Jul 2020 13:12:32 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200710111232.GC17924@nautica>
References: <20200710085722.435850-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200710085722.435850-1-hch@lst.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtqxZ-001vqf-SD
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
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig wrote on Fri, Jul 10, 2020:
> p9_fd_open just fgets file descriptors passed in from userspace, but
> doesn't verify that they are valid for read or writing.  This gets
> cought down in the VFS when actually attemping a read or write, but a
> new warning added in linux-next upsets syzcaller.
> 
> Fix this by just verifying the fds early on.
> 
> Reported-by: syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me, I'll pick it up shortly.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
