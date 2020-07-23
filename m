Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 587EA22B2F4
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Jul 2020 17:52:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jydVl-0001Uj-Nl; Thu, 23 Jul 2020 15:51:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1jydVj-0001UR-Vd
 for v9fs-developer@lists.sourceforge.net; Thu, 23 Jul 2020 15:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sUICbjxvRHlRETVl7hFvx3j2tXpcUy/MNrVABo/RzXY=; b=PUsM4b31VkB86RN/GJeGigAk2W
 iXbQHtPWpX6i8fxt81ogjwJgTQtNqrQpXBhVsDtlgeCmaDViwvkEDnyCsK56tFQzpFKY8EEW71XK6
 cz5P7dnidZbhPdSNac7FQA+jxGEBikCtBs75oxawj9bG3VxoAGrSgt4zXxLzxpffXAas=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sUICbjxvRHlRETVl7hFvx3j2tXpcUy/MNrVABo/RzXY=; b=PjbyCNfbZmWgP1Mprkbn84aLT0
 +RxeYGd63ZvJA/bwjRsRlc5tEJlL7wyWBAqCdHT2V5Rin2zaX5JKAs9kibotzBMQ+EyhVQeGrcu7G
 NHVFmIYC2mvYiXcwomxa1tZtbNUYO8cww2/RHIca6tiw8nvMqlnq+6P1A1D48vHsgw9o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jydVd-000S5t-Cg
 for v9fs-developer@lists.sourceforge.net; Thu, 23 Jul 2020 15:51:55 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B4902071A;
 Thu, 23 Jul 2020 15:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595519503;
 bh=s7fnhlfkAZ4BDqciAV1UteqeFEi6PoF3meXFtsJ2XFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pbdjRk7AcTzuJnPWMqvcsWQgsIHa3kfOVWA+356lKqVZTJjaILnpro156gOY6GZbc
 5cDbaDxYKYjar5G12tA63PKyQeaPpJcZ0A5jAEhJLrIDbYXonDtHAi7YUI6ASXKOxP
 BZtEIIII3j49elO102+UnQihS0xM3XF34dQkue7E=
Date: Thu, 23 Jul 2020 08:51:42 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Cengiz Can <cengiz@kernel.wtf>
Message-ID: <20200723155142.GA870@sol.localdomain>
References: <00000000000003d32b05aa4d493c@google.com>
 <20200714110239.GE16178@lst.de>
 <455c6bf929ea197a7c18ba3f9e8464148b333297.camel@kernel.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <455c6bf929ea197a7c18ba3f9e8464148b333297.camel@kernel.wtf>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jydVd-000S5t-Cg
Subject: Re: [V9fs-developer] WARNING in __kernel_read
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
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>,
 syzbot <syzbot+d012ca3f813739c37c25@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Cengiz,

On Thu, Jul 23, 2020 at 05:17:25PM +0300, Cengiz Can wrote:
> Hello,
> 
> I'm trying to help clean up syzkaller submissions and this caught my
> attention and I wanted to get your advice.
> 
> With commit: 6209dd9132e8ea5545cffc84483841e88ea8cc5b `kernel_read` was
> modified to use `__kernel_read` by Christoph Hellwig.
> 
> One of the syzkaller tests executes following system calls:
> 
> open("./file0", O_WRONLY|O_CREAT|O_EXCL|O_DIRECT|0x4, 000) = 5
> open("/dev/char/4:1", O_RDWR)           = 6
> mount(NULL, "./file0", "9p", 0,
> "trans=fd,rfdno=0x0000000000000005,wfdno=0x0000000000000006,"
> 
> This initiates a `__kernel_read` call from `p9_read_work` (and
> `p9_fd_read`) and since the `file->f_mode` does not contain FMODE_READ
> , a WARN_ON_ONCE is thrown.
> 
> ```
> if (WARN_ON_ONCE(!(file->f_mode & FMODE_READ)))
>          return -EINVAL;
> ```
> 
> Can you help me understand what's wrong and fix this issue? 
> Is it already being worked on?
> 

Looks like this was already fixed in linux-next by:

	commit a39c46067c845a8a2d7144836e9468b7f072343e
	Author: Christoph Hellwig <hch@lst.de>
	Date:   Fri Jul 10 10:57:22 2020 +0200

	    net/9p: validate fds in p9_fd_open

Let's tell syzbot so that it closes this bug report:

#syz fix: net/9p: validate fds in p9_fd_open


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
