Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1252F231B45
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 10:34:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0hXi-0001wg-Ot; Wed, 29 Jul 2020 08:34:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1k0hXg-0001w2-Ps
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 08:34:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9TLJYqYmNOb+xfIUdEziaGhuv5siu/SI6ol3zR96eMQ=; b=Btzel7Py7jtcecS6Z+L0lc+oQ9
 tYjyd6IeeC1OAKqYwgMpCELuUmoAHPcm5hY6ZJnDSIBKOfETvtpD7N4t9fVtiabpQRwnBLrOAYCHP
 v5ozs7QE1c0z/g6+zqD9YzRgk2hfLtDLGHhfmHsP9+GiYnhKmwjD+cJzimokGZMAfsA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9TLJYqYmNOb+xfIUdEziaGhuv5siu/SI6ol3zR96eMQ=; b=N/h0kpL2S2UivtP4JiWzmin9ze
 NEwfBwC2RyglDsQvnbZP4vHuCjL+xeKSyZqhyztUXYdM6CEExIeXn78c3DRkvT+3ChBMvEKxKF+aO
 QmOhb5Ip9tfiOpFM/gdw12XAU+6GiCzV4EZKGSMsskBSdt03H/EW0lA/2WCps5Yoinoc=;
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0hXd-005xP3-MY
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 08:34:28 +0000
Received: from player731.ha.ovh.net (unknown [10.108.35.240])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 8C1DE174644
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 29 Jul 2020 08:06:42 +0200 (CEST)
Received: from kaod.org (lns-bzn-46-82-253-208-248.adsl.proxad.net
 [82.253.208.248]) (Authenticated sender: groug@kaod.org)
 by player731.ha.ovh.net (Postfix) with ESMTPSA id A82B81493DA7D;
 Wed, 29 Jul 2020 06:06:31 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-103G0054b49c4c4-d057-4c56-8bb1-1a67c11c2913,A40F6FE0CFFE28C23AB4AFBB3D5D665E11D39731)
 smtp.auth=groug@kaod.org
Date: Wed, 29 Jul 2020 08:06:30 +0200
From: Greg Kurz <groug@kaod.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Message-ID: <20200729080630.2741f2e5@bahia.lan>
In-Reply-To: <ceaa4de6-e4df-e6b0-8085-7020240c57b4@ozlabs.ru>
References: <20200728124129.130856-1-aik@ozlabs.ru>
 <20200728194235.52660c08@bahia.lan>
 <ceaa4de6-e4df-e6b0-8085-7020240c57b4@ozlabs.ru>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 1293096043977742837
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrieefgddutdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfesthejredtredtvdenucfhrhhomhepifhrvghgucfmuhhriicuoehgrhhouhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepheekhfdtheegheehjeeludefkefhvdelfedvieehhfekhfdufffhueeuvdfftdfhnecukfhppedtrddtrddtrddtpdekvddrvdehfedrvddtkedrvdegkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfedurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtohepvhelfhhsqdguvghvvghlohhpvghrsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [46.105.62.179 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.ru]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [46.105.62.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0hXd-005xP3-MY
Subject: Re: [V9fs-developer] [PATCH kernel] 9p/trans_fd: Check file mode at
 opening
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 29 Jul 2020 09:50:21 +1000
Alexey Kardashevskiy <aik@ozlabs.ru> wrote:

> 
> 
> On 29/07/2020 03:42, Greg Kurz wrote:
> > Hi Alexey,
> > 
> > Working on 9p now ?!? ;-)
> 
> No, I am running syzkaller and seeing things :)
> 

:)

> 
> > Cc'ing Dominique Martinet who appears to be the person who takes care of 9p
> > these days.
> > 
> > On Tue, 28 Jul 2020 22:41:29 +1000
> > Alexey Kardashevskiy <aik@ozlabs.ru> wrote:
> > 
> >> The "fd" transport layer uses 2 file descriptors passed externally
> >> and calls kernel_write()/kernel_read() on these. If files were opened
> >> without FMODE_WRITE/FMODE_READ, WARN_ON_ONCE() will fire.
> >>
> >> This adds file mode checking in p9_fd_open; this returns -EBADF to
> >> preserve the original behavior.
> >>
> > 
> > So this would cause open() to fail with EBADF, which might look a bit
> > weird to userspace since it didn't pass an fd... Is this to have a
> > different error than -EIO that is returned when either rfd or wfd
> > doesn't point to an open file descriptor ?
> 
> This is only to preserve the existing behavior.
> 
> > If yes, why do we care ?
> 
> 
> Without the patch, p9_fd_open() produces a kernel warning which is not
> great by itself and becomes crash with panic_on_warn.
> 

I don't question the patch, just the errno. Why not returning -EIO ?

> 
> 
> > 
> >> Found by syzkaller.
> >>
> >> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> >> ---
> >>  net/9p/trans_fd.c | 7 ++++++-
> >>  1 file changed, 6 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> >> index 13cd683a658a..62cdfbd01f0a 100644
> >> --- a/net/9p/trans_fd.c
> >> +++ b/net/9p/trans_fd.c
> >> @@ -797,6 +797,7 @@ static int parse_opts(char *params, struct p9_fd_opts *opts)
> >>  
> >>  static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
> >>  {
> >> +	bool perm;
> >>  	struct p9_trans_fd *ts = kzalloc(sizeof(struct p9_trans_fd),
> >>  					   GFP_KERNEL);
> >>  	if (!ts)
> >> @@ -804,12 +805,16 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
> >>  
> >>  	ts->rd = fget(rfd);
> >>  	ts->wr = fget(wfd);
> >> -	if (!ts->rd || !ts->wr) {
> >> +	perm = ts->rd && (ts->rd->f_mode & FMODE_READ) &&
> >> +	       ts->wr && (ts->wr->f_mode & FMODE_WRITE);
> >> +	if (!ts->rd || !ts->wr || !perm) {
> >>  		if (ts->rd)
> >>  			fput(ts->rd);
> >>  		if (ts->wr)
> >>  			fput(ts->wr);
> >>  		kfree(ts);
> >> +		if (!perm)
> >> +			return -EBADF;
> >>  		return -EIO;
> >>  	}
> >>  
> > 
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
