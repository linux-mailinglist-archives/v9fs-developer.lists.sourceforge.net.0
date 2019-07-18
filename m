Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF806D174
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jul 2019 17:58:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ho8nK-0007gN-Qr; Thu, 18 Jul 2019 15:58:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1ho8nJ-0007gA-OM
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 15:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7XK834nYzBPSOlOotDhMpgyUj9Cmt0Vgmf63Mlfy+HE=; b=KhXDx3CSvRnVabQxXgg5gU4/zL
 ilo8DrbyKmWz+jmcAlWPzxwc5DsFoGOoZf5XI0PJcQQoMwVE7jIXnAia2khMi/o3fgbsZfN3ItbpE
 PqGiFHYRwcJkAfJ7F8U5AHuQnoOFCGKIjvV5iwsU6EnPw4p3oaFWm+JA59dX/tHpzl8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7XK834nYzBPSOlOotDhMpgyUj9Cmt0Vgmf63Mlfy+HE=; b=bibjLD0oKS6b2xTXZIcTn+wm/D
 HgzrWKpC2vh3rsUHUp/0yTnXOWc4lq4VeDCzISAyDo+DqVelbadtQNv/dtHXS3vQ6646qiGRdMsWx
 x44c+D8zXW8neBrCVNIhoF6vyBKIa0Xyh4rudhEFqjrrZYU1YIitB/LsPvIna1ADFoEs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1ho8nF-0066R6-VK
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 15:58:09 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 65E59C01B; Thu, 18 Jul 2019 17:57:59 +0200 (CEST)
Date: Thu, 18 Jul 2019 17:57:44 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190718155744.GA31023@nautica>
References: <20190718135255.GA21431@nautica>
 <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e508114-4e3c-f2ee-6160-9207a54414e4@tessares.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ho8nF-0066R6-VK
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Thu, Jul 18, 2019:
> Could it be possible that with the new patch, less characters are copied
> and '\0' is not added anywhere in dirent->d_name? And it was working
> before because one byte was set to 0 just after? But now when d_name is
> read, we read far too much. I don't know what else it could be when
> looking at 84693d06096 ("9p: p9dirent_read: check network-provided name
> length").

If the copy is not complete, strscpy will return -E2BIG and an error
should show up on your dmesg with debug=1 so that isn't likely.

> Do you think it could come from another patch? I could re-do a "git
> bisect"-like but continue after the first reverted patch gives a green
> light.

The only thing that comes up right now is that this patch could change
the timing a bit and make it happen but it really is something else; if
you have time to run another bisect we might find something but I would
not spend time specifically on it if you cannot just leave it running on
its own.

> > If you have interactive access to the vm, could you try something
> > similar to see if v9fs_vfs_get_link also gets hit for you?
> 
> The interactive access is currently disabled on this setup but I can
> enable it and see what I can do! I hope I will be able to do these
> manipulations soon.

If you do not have interactive access, can you just add a print message
in the non-dotl function? I suggested perf because that can be used to
probe around and get full backtraces easily, but the first thing I'd
like to check is if v9fs_vfs_get_link really gets called or if kasan
prints the wrong function for some reason (I don't see why it would, but
this function really should never be called for you).

If it is called, I will give you a few more things to print in there - I
need to check how to get access to the v9ses and friends from this
context (they should be attached to the inode so it should be accessible
but I cannot give precise instructions from memory)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
