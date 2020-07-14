Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFB921FEF4
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jul 2020 22:54:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvRwQ-0005MH-4D; Tue, 14 Jul 2020 20:54:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1jvRwO-0005MA-WB
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 20:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fcE/Zrnx1DVFVUArEdVRTbFdXiDVbZOXEpcxh87SByg=; b=SrB6qJPf5tvnw8YW1m9RdW91H8
 kn6G0bN11cWlt+hCm4l+XZtrek5k7kmG5DgnbviJ9i9dJ/bnRXqC2BTZ3Xng5rr8DzMeIvJLtx6AL
 4TVuYnFOf9BwTr5jMi1wjX56OwA9GMdNTEfdEhXqbpg3zJzaLEHfxPSmYvKQYp6BlmRo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fcE/Zrnx1DVFVUArEdVRTbFdXiDVbZOXEpcxh87SByg=; b=jXWyLWksR51lNZYWxV4Dz5xSG+
 u9C8T+Y2+tJ4HhfMy1HtOFt3XcEV2vpuyMJO8viVatD/rYsX9IIRgy1bQFpCPwOMrXm5Nd31l//P3
 3PhKjMfvKdo6qKgQ+lrmmriQWS9bu9YVedwI1FG8DZ08K+fj5E7WnVIABAw73qNc8pqA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvRwN-007VT9-NE
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jul 2020 20:54:16 +0000
Received: from gmail.com (unknown [104.132.1.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2CA220658;
 Tue, 14 Jul 2020 20:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594760043;
 bh=LrI6TvbFj8VaPzxpp5ekzeAMl8autdFdnS/2bB9ZGF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t3+1RnT8+rDhVNw2EQLq8U3lJLOrZp7oVzOLMqPaKBEK9GVdooPlmF++zdcsk1+X1
 ejPQLSrHEcog43UBm0ufElUp7iBgBfPN2WPd/z+mu9ANozuJF/2lkbh7NzC5lb2yuu
 wDiQUxF+13uMOFxohJUKI0OXfaaMqX3v/Q9oUyJ0=
Date: Tue, 14 Jul 2020 13:54:01 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200714205401.GE1064009@gmail.com>
References: <20200713215759.3701482-1-victorhsieh@google.com>
 <20200714121249.GA21928@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714121249.GA21928@nautica>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvRwN-007VT9-NE
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Victor Hsieh <victorhsieh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 14, 2020 at 02:12:49PM +0200, Dominique Martinet wrote:
> 
> > Fixes: 5643135a2846 ("fs/9p: This patch implements TLCREATE for 9p2000.L protocol.")
> > Signed-off-by: Victor Hsieh <victorhsieh@google.com>
> > Cc: stable@vger.kernel.org
> 
> (afaiu it is normally frowned upon for developers to add this cc (I can
> understand stable@ not wanting spam discussing issues left and right
> before maintainers agreed on them!) ; I can add it to the commit itself
> if requested but they normally pick most such fixes pretty nicely for
> backport anyway; I see most 9p patches backported as long as the patch
> applies cleanly which is pretty much all the time.
> Please let me know if I understood that incorrectly)
> 

Some people assume this, but the stable maintainers themselves say that Cc'ing
stable@vger.kernel.org on in-development patches is fine:
https://lkml.kernel.org/r/20200423184219.GA80650@kroah.com

And doing so is pretty much inevitable, since the tag gets picked up by
'git send-email'.  (Yes, there's also "stable@kernel.org", but it's not actually
what is documented.)

- Eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
