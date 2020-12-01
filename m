Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE62CA6CE
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 16:17:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk7PF-0004BF-0W; Tue, 01 Dec 2020 15:17:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kk7PC-0004B4-RD
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W1804/WmEJKiPKMrETIzFsZscClPHYpVI3Xu7UowPbA=; b=VsCczE8P7LR5iUVqvFbZ1SCFSh
 oFpbgVdfpuJC6nzkmI7jMFvL8l5OnrKSzyzvcOorNAL7EM4k5nYHjDrTG0X9hCsYYGT7eSTeqV1EO
 5pJ1Qt4J+RTK1sg14HDvCn/F6kZ7u6Yv1W+cNQtlv8q6/EP8Fky4qRNCloq6r/pMPkMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W1804/WmEJKiPKMrETIzFsZscClPHYpVI3Xu7UowPbA=; b=JaruXY9h+Ztzmqafz9vpGoHR13
 bCrGAGeCmSeei+wqXjW0I/avjCs6T/UZ/5607jK2Mu/5XPrJLoUN69XI3s3neNjeuzeu3a/o3uJ3j
 k4EeQh3EwBOEvGBg9B4rqLiCsOJC13U9ooPFKBhVX/vHKWm0BtqHKKDjRtmv+OfXeAy8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk7P5-009LQc-Pz
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:17:26 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 5E97BC009; Tue,  1 Dec 2020 16:17:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606835833; bh=W1804/WmEJKiPKMrETIzFsZscClPHYpVI3Xu7UowPbA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bMNh4jh+h4C3tOWqO1+UCkfvkfxA/exRkYX3v1IDZEbBJISZZHYQwBBZV4HMD1AxJ
 l8hTuf3oRSqZJdIK9x+XnEQPfouUtnBRf2ezXUemULE59mWF4OKDAIbJdRBqWrbJpd
 COrSPeFg1ZdIp2W0mlvbcyo5zto3SNxzKEdElfeyNhh3awF5TnOjas5YJrI6llZ7kt
 ngjDEAgYJmS9nK4l0WvmmlsoyfdEjByOkOfDWZ3Y5tk2F/+GgdDJKOP7mHb/9DAn5H
 Y1w04hLHPXBoNGw/jucX4cAyji0OS8fNmq/28ZWrZRhVZYtrXVlM5aQl6Edj0Jus63
 3VL0z6h2MJd3g==
Date: Tue, 1 Dec 2020 16:16:58 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <20201201151658.GA13180@nautica>
References: <20201201135409.55510-1-toke@redhat.com>
 <20201201145728.GA11144@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201145728.GA11144@nautica>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kk7P5-009LQc-Pz
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: add generic splice_read file
 operations
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Tue, Dec 01, 2020:
> > Since generic_file_splice_read() seems to just implement splice_read in
> > terms of the read_iter operation, I simply added the generic implementation
> > to the file operations, which fixed the error I was seeing. A quick grep
> > indicates that this is what most other file systems do as well.
> 
> Good catch, might as well do that.
> I'm surprised you didn't hit the same problem with splice_write?
> 
> I see iter_file_splice_write being used for it on many filesystems,
> it's probably better to add both?

Yeah, I confirm both are needed (the second for the pipe -> fs side)

This made me test copy_file_range, and it works with both as well (used
not to)

interestingly on older kernels this came as default somehow? I have
splice working on 5.4.67 :/ so this broke somewhat recently...

I'll add an extra patch with the second and take your patch.
Thanks!

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
