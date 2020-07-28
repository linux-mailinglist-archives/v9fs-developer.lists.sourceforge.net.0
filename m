Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80512311C6
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jul 2020 20:32:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0UP0-0002zv-6C; Tue, 28 Jul 2020 18:32:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1k0UOy-0002zm-K7
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jul 2020 18:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CkiwDbi0vmPNOlcv1O6PN91/63E+P1S+o6nR3behU/0=; b=brV1DwGHiDVuGxNlCCR0dHD9jQ
 WITZH8cGj3TSOUeBEZGUjt332uanTv8bPvSWsrcMJXcGVE+qw1cFlho/153k08pGYS6PMojn7uZ20
 McVOzEMICb9qPRb9PDgNeolrstqgqZrJMoctjr4WEySgnpwyD86MPYXiSYdEzv7A2Dsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CkiwDbi0vmPNOlcv1O6PN91/63E+P1S+o6nR3behU/0=; b=ZM3mNOZM/T+yB6+bmasqxNbQ8k
 yGc7zDGCF069SFbaFtry2c+WikAnyBpPnLOG7e/KKN8Kz992fML+0rvjuzg5fGviiDp6JqxinDAGw
 iNw30Z2riO+khcOlcR5eutobrCzjGVc/BJuh0uDQ8WqfqlTVea+xDIAe9eW41/ZHGD2Y=;
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0UOv-00CLiq-Pp
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jul 2020 18:32:36 +0000
Received: from player756.ha.ovh.net (unknown [10.110.208.44])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id E66B025C00B
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Jul 2020 19:42:46 +0200 (CEST)
Received: from kaod.org (lns-bzn-46-82-253-208-248.adsl.proxad.net
 [82.253.208.248]) (Authenticated sender: groug@kaod.org)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id 1FCAC13EFFD15;
 Tue, 28 Jul 2020 17:42:35 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-97G002e93d7dbd-e9bf-43f9-bbae-e865b5c28c99,96196EA346850768E7E70500A314E772A5EF2CEB)
 smtp.auth=groug@kaod.org
Date: Tue, 28 Jul 2020 19:42:35 +0200
From: Greg Kurz <groug@kaod.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Message-ID: <20200728194235.52660c08@bahia.lan>
In-Reply-To: <20200728124129.130856-1-aik@ozlabs.ru>
References: <20200728124129.130856-1-aik@ozlabs.ru>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 7175923058598975989
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedriedvgdduudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfesthejredtredtvdenucfhrhhomhepifhrvghgucfmuhhriicuoehgrhhouhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepheekhfdtheegheehjeeludefkefhvdelfedvieehhfekhfdufffhueeuvdfftdfhnecukfhppedtrddtrddtrddtpdekvddrvdehfedrvddtkedrvdegkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtohepvhelfhhsqdguvghvvghlohhpvghrsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.ru]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [178.33.47.94 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [178.33.47.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0UOv-00CLiq-Pp
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

Hi Alexey,

Working on 9p now ?!? ;-)

Cc'ing Dominique Martinet who appears to be the person who takes care of 9p
these days.

On Tue, 28 Jul 2020 22:41:29 +1000
Alexey Kardashevskiy <aik@ozlabs.ru> wrote:

> The "fd" transport layer uses 2 file descriptors passed externally
> and calls kernel_write()/kernel_read() on these. If files were opened
> without FMODE_WRITE/FMODE_READ, WARN_ON_ONCE() will fire.
> 
> This adds file mode checking in p9_fd_open; this returns -EBADF to
> preserve the original behavior.
> 

So this would cause open() to fail with EBADF, which might look a bit
weird to userspace since it didn't pass an fd... Is this to have a
different error than -EIO that is returned when either rfd or wfd
doesn't point to an open file descriptor ? If yes, why do we care ?

> Found by syzkaller.
> 
> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> ---
>  net/9p/trans_fd.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 13cd683a658a..62cdfbd01f0a 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -797,6 +797,7 @@ static int parse_opts(char *params, struct p9_fd_opts *opts)
>  
>  static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
>  {
> +	bool perm;
>  	struct p9_trans_fd *ts = kzalloc(sizeof(struct p9_trans_fd),
>  					   GFP_KERNEL);
>  	if (!ts)
> @@ -804,12 +805,16 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
>  
>  	ts->rd = fget(rfd);
>  	ts->wr = fget(wfd);
> -	if (!ts->rd || !ts->wr) {
> +	perm = ts->rd && (ts->rd->f_mode & FMODE_READ) &&
> +	       ts->wr && (ts->wr->f_mode & FMODE_WRITE);
> +	if (!ts->rd || !ts->wr || !perm) {
>  		if (ts->rd)
>  			fput(ts->rd);
>  		if (ts->wr)
>  			fput(ts->wr);
>  		kfree(ts);
> +		if (!perm)
> +			return -EBADF;
>  		return -EIO;
>  	}
>  



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
