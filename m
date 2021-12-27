Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B14AA47FB40
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Dec 2021 10:18:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n1m9A-00080F-0V; Mon, 27 Dec 2021 09:18:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n1m98-000809-RP
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Dec 2021 09:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GoJxDqGjcRle+gYeU2D7CR3n3CaZRrEOUstVUe74VE=; b=ji1+2cwO40+MNsYhtQreJ2cuaD
 bWlgatnX0HQwgerwENx9kpIN8cgldd3x2B/4bp21+DTcqEqn7iYJQ0xvbFns7ARZF4RTd3YFBcCaa
 29HrU0moH1lIINdM53p0Y2JDl9ICa7kdByRteQ2IDaLidaY2bCXV6+wRDANJFgibTnk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GoJxDqGjcRle+gYeU2D7CR3n3CaZRrEOUstVUe74VE=; b=WGmPsQLeDovgymQivdyQ2MI5kL
 o4B6uSycPV5TvpRKOLqtkp7Xdi7thUELsOPjaSJW1wvlUD8JqFL0HGFQkp2gU1sH1sZN1Q9cWF0vJ
 utf22U8NhboYT7Kjgk9ga3+XKqwFX8eEuxg6Xe9srGI0QBx6TmJPyQxwtgIbrllL3HWk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n1m95-0007th-EZ
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Dec 2021 09:18:22 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AC079C020; Mon, 27 Dec 2021 10:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640596691; bh=9GoJxDqGjcRle+gYeU2D7CR3n3CaZRrEOUstVUe74VE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ycasObKFmpSLBqcmWah4MDS1LqNP8bZObSLD04HdpKMMrTa1F7dAmZzyf62nEDVvg
 OaXhhRbLFmGi20MZZJrii8+wYVt6TAgzVpvfvlmLRygMKwO6YedzbtQA4ZWonv4Bkl
 Kk8m73x8cTd3WWMPNaAxZlJigQ+q9e02cs0iF6I7Cx828LelwLWYdSD+CmW+KbYG1Z
 wgUGSLJhOovhgzyIk4CPMe7et2rRfMfognVxeIMEtKEPupvrkdd4p1lgs3sHttobOK
 4fizV6lEWEHVy5YEizkQ7c416k0gL9IaRJrG6SVze4q7ffYhI6LgZNCshi2xY17pxQ
 n8ItYg4kAo3iQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B119CC009;
 Mon, 27 Dec 2021 10:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640596690; bh=9GoJxDqGjcRle+gYeU2D7CR3n3CaZRrEOUstVUe74VE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DE3RL9Lfba9zohoMYxbfHrOgN+G5nc+mQ7bzQHl3IEMCp1gE+Z5bUaUBrX6yyzlpH
 JJxwIXxKFKKlu3JnPVP1B9ypXFR/dWOK0AtsEWr+IE5vhWHRPmewvkBs9mcmJ1/JCM
 WQHuzfdeI+54QKnxGlISNgCKJLHteqIjKaM6KokGiNqcwRYACEzQxVSW7WR7rHwqIz
 kkbpiS50cQA99f70yGEHqWLE3SIg2frMPf/pfVEHrQOZFZOsqbS7bClwUk3fvtPNtF
 E2QHv8aDA2mTdqE1aB6nVNqIvW4pbLGBcEQyV/ZzVv6xOqJTUYTnRSGMwFZ1ZBxaXw
 Gwni0bpjLfMGQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 65fabf50;
 Mon, 27 Dec 2021 09:18:05 +0000 (UTC)
Date: Mon, 27 Dec 2021 18:17:49 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <YcmEvWm5dB4/d224@codewreck.org>
References: <YcXfm6U/6+Xmv7be@codewreck.org>
 <5ec8d1c6-e410-e297-0d3a-037c7de30b6b@virtuozzo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ec8d1c6-e410-e297-0d3a-037c7de30b6b@virtuozzo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Vasily Averin wrote on Mon, Dec 27, 2021 at 10:42:48AM +0300:
 > > Should we also check fl->fl_flags & (FL_POSIX|FL_FLOCK) like > >
 locks_lock_file_wait
 does, to call either posix_lock_file or ... ther [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n1m95-0007th-EZ
Subject: Re: [V9fs-developer] [PATCH] v9fs: handle async processing of
 F_SETLK with FL_SLEEP flag
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
 linux-kernel@vger.kernel.org, "J. Bruce Fields" <bfields@fieldses.org>,
 kernel@openvz.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vasily Averin wrote on Mon, Dec 27, 2021 at 10:42:48AM +0300:
> > Should we also check fl->fl_flags & (FL_POSIX|FL_FLOCK) like
> > locks_lock_file_wait does, to call either posix_lock_file or ... there
> > doesn't seem to be an exported flock_lock_file equivalent in the other
> > case, so back to wait variant there?
> > (or rephrasing the question, what happens if the lock is a FL_FLOCK lock
> > and we call posix_lock_file on it? Or are we guaranted that if FL_SLEEP
> > is set we're about posix locks?)
> 
> SETLK with FL_SLEEP flag can be set by kernel export threads for posix locks only.

I see.
Would it make sense to add a WARN_ON or similar in case that ever
changes in the future?

I'd be more comfortable with one given it'd be quite a sneaky bug when
it does (locks will still appear to work, just wrong kind of locks...).
I assume that if it ever does all filesystems will be reviewed for
it... But sometimes it's best to make sure.

> > Well, it depends on what you have in mind with blocking.
> > A synchronous RPC to some server which might never reply if it doesn't
> > feel like it (bug or whatever) is very much blocking in my opinion.
> 
> The main goal is to avoid deadlock of server threads.
> It is acceptable to sleep or process such a request for a very long time,
> however it is unacceptable to wait for another command to remove our lock,
> because there can be no available working threads to process this command:
> all of them can be busy by processing of blocking locks. 

Ok, that makes sense to me.

I'm happy with the current patch except for my paranoia on that fcntl
lock check, let me know what you think about it and I'll apply either
this or a new version.

Thanks!
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
