Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF9923195A
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 08:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0fMx-0008U2-En; Wed, 29 Jul 2020 06:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1k0fMv-0008Tp-Un
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jrYdPy4sx+WpBMZYT+l1f5VJQEvST9WsAA6BUr2Afnc=; b=Z02rwrPeMRB6WI3ssO0P2ae+2o
 ZgUI/l1KbTekAugZjBZ3hPkSn17HDC/3118UL2K2XGNfb+MTNR45YiBYqfnO8I0+WaTzKpJdqnw1l
 QGHVLtXuqpZloR+BYggZycUrHcrtNkSBlrE/5XEb599bZXSE1j1RQAdigr6OlRVtNSuM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jrYdPy4sx+WpBMZYT+l1f5VJQEvST9WsAA6BUr2Afnc=; b=ieNwhT9DI9N3Aga6hZEmX72qfG
 FNos5RqlpZYLrg8wYF7RlNcl56fnWSTkDQ9EBNQEHIFpaNcx9dD/GDPgjW5vp9vyc3BCd/xG2dBu/
 CoV8obo5SRMqsp92iHY1d8+wUhNLJLNa1ccU5rkE9A9Myl4hfhVCDFabHAjsb7TOCKY0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0fMt-005prA-Nm
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:15:13 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 31395C01F; Wed, 29 Jul 2020 08:15:04 +0200 (CEST)
Date: Wed, 29 Jul 2020 08:14:49 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Greg Kurz <groug@kaod.org>
Message-ID: <20200729061449.GA19682@nautica>
References: <20200728124129.130856-1-aik@ozlabs.ru>
 <20200728194235.52660c08@bahia.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200728194235.52660c08@bahia.lan>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k0fMt-005prA-Nm
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

Greg Kurz wrote on Tue, Jul 28, 2020:
> > The "fd" transport layer uses 2 file descriptors passed externally
> > and calls kernel_write()/kernel_read() on these. If files were opened
> > without FMODE_WRITE/FMODE_READ, WARN_ON_ONCE() will fire.

There already is a fix in linux-next as a39c46067c84 ("net/9p: validate
fds in p9_fd_open")

> > This adds file mode checking in p9_fd_open; this returns -EBADF to
> > preserve the original behavior.
> 
> So this would cause open() to fail with EBADF, which might look a bit
> weird to userspace since it didn't pass an fd... Is this to have a
> different error than -EIO that is returned when either rfd or wfd
> doesn't point to an open file descriptor ? If yes, why do we care ?

FWIW the solution taken just returns EIO as it would if an invalid fd
was given, but since it did pass an fd EBADF actually makes sense to me?

However to the second question I'm not sure I care :)

> > Found by syzkaller.

I'm starting to understand where David comment came from the other day,
I guess it's still time to change my mind and submit to linus now I've
had time to test it...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
