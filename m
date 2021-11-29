Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9CA4616DE
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 14:43:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrgwG-0004fg-G3; Mon, 29 Nov 2021 13:43:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <SRS0=it4N=QQ=ubuntu.com=christian.brauner@kernel.org>)
 id 1mrgwE-0004fP-Bo
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 13:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1A7Ru6Q1Un/8nIRV+tjNhAbUihct+0/hp3wf6EbNvy0=; b=lQxZB0kIiIm7GG6bxFc/V6pBTL
 d+hKiaqFsK23Y/RiizANFuP98tFJ59IhZqUqYs6WLOZLUmK8Fr7vOI0GSf8+/wMIORR5htMAs4f+E
 EXQU6xN3EDiLH5MlT7Xn85WpVJqGTEV5p9qQO+ciTRa0tr9aZsSDjg/IyYVOxRvdoW+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1A7Ru6Q1Un/8nIRV+tjNhAbUihct+0/hp3wf6EbNvy0=; b=Wlw+hyltbjMO0CLKbg/jX8s87Q
 WKUTOWms2rADDHrvwfkQPBPInKBLbb+1c4TbszXRlNiS93SveRAFYjvX+XGkiiVBCvFp01X2hjvaT
 kcznKho5CMsRwlyY3L2y95djnMh4nqx3eiCOQ2yHbpJuzEk7wX7KZu+bMHZUknkaD44g=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrgwE-0005tv-Rq
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 13:43:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 69F1F61539;
 Mon, 29 Nov 2021 13:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73229C004E1;
 Mon, 29 Nov 2021 13:43:14 +0000 (UTC)
Date: Mon, 29 Nov 2021 14:43:11 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20211129134311.3vvrim4wf557q3fa@wittgenstein>
References: <000000000000a0d53f05d1c72a4c%40google.com>
 <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaTVWtjhm4+2FI33@codewreck.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet
 wrote: > Christian Brauner wrote on Mon, Nov 29, 2021 at 12:44:34PM +0100:
 > > From: Christian Brauner <christian.brauner@ubuntu.com> > > > [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1mrgwE-0005tv-Rq
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> Christian Brauner wrote on Mon, Nov 29, 2021 at 12:44:34PM +0100:
> > From: Christian Brauner <christian.brauner@ubuntu.com>
> > 
> > The 9P2000.L setattr method v9fs_vfs_setattr_dotl() copies struct iattr
> > values without checking whether they are valid causing unitialized
> > values to be copied. The 9P2000 setattr method v9fs_vfs_setattr() method
> > gets this right. Check whether struct iattr fields are valid first
> > before copying in v9fs_vfs_setattr_dotl() too and make sure that all
> > other fields are set to 0 apart from {g,u}id which should be set to
> > INVALID_{G,U}ID. This ensure that they can be safely sent over the wire
> > or printed for debugging later on.
> 
> hm, this might work for g/uid, but the struct isn't directly memcpy'd
> over the wire and real check should be based on p9attr.valid -- I have
> the feeling this is just sweeping the issue under the rug and will be
> potentially sending invalid modes or other attributes if that is a
> problem.
> Copying uninitialized value isn't a problem, and is usually faster than
> checking before every copy, it's using uninitialized values later down
> the road that is bad.
> 
> 
> OTOH this is better than leaking kernel uninitialized value and
> hopefully the server will be using the valid flags and ignore whatever
> value we choose to init with, so what I just said (probably) doesn't
> really matter and I'd be inclined to just take this for now as I have no
> time to check in details...
> I guess I'll take this unless someone has anything more to say.

So we both agree that the client should not send uninitialized data over
the wire as that's pretty bad. And it shouldn't try to log unitialized
data. Both happen currently.

There are multiple ways to fix this. For example, the 9P2000 protocol
sets all values to invalid values in v9fs_vfs_setattr(). I briefly
considered fixing it in a similar way but I don't see how this would be
better as you'd be sending completely invalid values over the wire
and if the server doesn't verify that the values are sane you have a
problem in this case as well.

So simply setting everying to zero and at least setting the {g,u}id
attributes which carry most of the privilege associated with a file to
INVALID_{G,U}ID is a minimal safety net.

Christian


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
