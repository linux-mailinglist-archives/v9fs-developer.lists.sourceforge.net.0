Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A16882319B4
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 08:47:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0frl-0003Cy-6o; Wed, 29 Jul 2020 06:47:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groug@kaod.org>) id 1k0frj-0003Cq-P0
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f885jt7QdnT93i9atfMci2ZnAhY7d2QZteFvtyNfEuo=; b=hiDW7LQiw4+APAxb48zUd3IIIC
 O41bRxdnt/S4+WCKhooouaxmfKF6uHJgKd0vPbcY9XsGNCPH9Q7CSx7H0e+TxRc18xCfTP5whxmOS
 dHZSVpG60jrFCdQmtPIC5Tx2Y/bJPbUVyFHX5En/9fF5fCc0I2pgP/XS7EIQIp0Ob3AQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f885jt7QdnT93i9atfMci2ZnAhY7d2QZteFvtyNfEuo=; b=aFbmxddkgUjCpDDT/Q9E01DxgW
 CyVyGQn/eXPH3jEIsUBR7mKY/mqfKFLMQo/QTgh53OrGY6ucKArEo4yNnHtwcg3vaiwXG8fBrFywz
 toWsaRrs4IIiIOHksZNFrcI1J3FKWSwgZlYKl5HEu6s73pikmRA/BERINVjfI9Gi4m+g=;
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0frg-00D1Hd-1A
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:47:03 +0000
Received: from player711.ha.ovh.net (unknown [10.108.57.150])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 198A31E2BC2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 29 Jul 2020 08:38:32 +0200 (CEST)
Received: from kaod.org (lns-bzn-46-82-253-208-248.adsl.proxad.net
 [82.253.208.248]) (Authenticated sender: groug@kaod.org)
 by player711.ha.ovh.net (Postfix) with ESMTPSA id AB08514A1AD8F;
 Wed, 29 Jul 2020 06:38:23 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-105G006896df29f-f4f3-493b-ab9a-d0c6f23d8bcf,
 A40F6FE0CFFE28C23AB4AFBB3D5D665E11D39731) smtp.auth=groug@kaod.org
Date: Wed, 29 Jul 2020 08:38:22 +0200
From: Greg Kurz <groug@kaod.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200729083822.66e165ed@bahia.lan>
In-Reply-To: <20200729061449.GA19682@nautica>
References: <20200728124129.130856-1-aik@ozlabs.ru>
 <20200728194235.52660c08@bahia.lan>
 <20200729061449.GA19682@nautica>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 1830713248816142592
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrieefgddutdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtgfesthejredtredtvdenucfhrhhomhepifhrvghgucfmuhhriicuoehgrhhouhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepveehieetvdettdfhiefhueetheekheejgfdtvddthfffuefgueduvefgveeijeegnecuffhomhgrihhnpehophgvnhhgrhhouhhprdhorhhgnecukfhppedtrddtrddtrddtpdekvddrvdehfedrvddtkedrvdegkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejuddurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepghhrohhugheskhgrohgurdhorhhgpdhrtghpthhtohepvhelfhhsqdguvghvvghlohhpvghrsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: opengroup.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [46.105.63.121 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [46.105.63.121 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k0frg-00D1Hd-1A
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Alexey Kardashevskiy <aik@ozlabs.ru>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 29 Jul 2020 08:14:49 +0200
Dominique Martinet <asmadeus@codewreck.org> wrote:

> Greg Kurz wrote on Tue, Jul 28, 2020:
> > > The "fd" transport layer uses 2 file descriptors passed externally
> > > and calls kernel_write()/kernel_read() on these. If files were opened
> > > without FMODE_WRITE/FMODE_READ, WARN_ON_ONCE() will fire.
> 
> There already is a fix in linux-next as a39c46067c84 ("net/9p: validate
> fds in p9_fd_open")
> 
> > > This adds file mode checking in p9_fd_open; this returns -EBADF to
> > > preserve the original behavior.
> > 
> > So this would cause open() to fail with EBADF, which might look a bit

Oops... this seems to rather end up in mount(). :)

> > weird to userspace since it didn't pass an fd... Is this to have a
> > different error than -EIO that is returned when either rfd or wfd
> > doesn't point to an open file descriptor ? If yes, why do we care ?
> 
> FWIW the solution taken just returns EIO as it would if an invalid fd
> was given, but since it did pass an fd EBADF actually makes sense to me?
> 

POSIX says:

https://pubs.opengroup.org/onlinepubs/9699919799/functions/V2_chap02.html

[EBADF]
Bad file descriptor. A file descriptor argument is out of range, refers to
no open file, or a read (write) request is made to a file that is only open
for writing (reading).

It seems that EBADF would be appropriate for both the existing and the
new error path.

> However to the second question I'm not sure I care :)
> 
> > > Found by syzkaller.
> 
> I'm starting to understand where David comment came from the other day,
> I guess it's still time to change my mind and submit to linus now I've
> had time to test it...
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
