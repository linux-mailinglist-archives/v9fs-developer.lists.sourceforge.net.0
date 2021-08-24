Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E21E3F5BED
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 12:22:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mITZ9-0007pV-O3; Tue, 24 Aug 2021 10:21:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@kernel.org>) id 1mITZ8-0007pO-Nm
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 10:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BPVqVzHLOhxVLKI+d5hCjLggk43D5U+VOGs9+TkiZhY=; b=mpl+5O861V/ibOgPn8ZRBAr2cD
 O0QrIZ1XB2dgVUzIJJFi8EaV0ta1tjYM5H3kIKcVCMh5VMhHxJV2aUy8fGDwKUW22DcYwLZxPE49E
 GnyWTjTZzUa6Au/DEtvy55MMn1q4lXiRmOKfuyZmIidPPSvD7B1l3gpoejgSd2+ghkmM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BPVqVzHLOhxVLKI+d5hCjLggk43D5U+VOGs9+TkiZhY=; b=J4lBYyRMszzFQNufM+AcPCmPiT
 hL7eNOXXVkyBc5HhM3HZF5wPr1Ks3U4jv4aZ4w+r03mDInPIi4CBChpfwzYI9e0wdFzSQqKnbfIFw
 /WMYmuoeSiz3sWjr+aUAJleTfr1GpTqBEPe2ypO0Q8UoWUhYYdsYttE51bltIZFufOMo=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mITZ7-00084i-5g
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 10:21:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DF2CA6127B;
 Tue, 24 Aug 2021 10:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629800507;
 bh=xJCfJs8RZmn3g/5lvkqUBr+gT+oZyrinafGUL3DOSGY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UJeIZHkNabA/L55+6x0syo7gdCEu9epNSQ03c0pEBoeJfwy99uzx6mOk9RuVeHtS5
 NE065IYoJnQDrt6IL555JCq+P+bjr47h2B5SFk1R/9XaycamagLuVm11uREAS4VliH
 elNC8qxKW92ASuerZ8iRF2wZ+MWaEjKGqdhlhCpD9Mt4XfBf7mWHpvPnwLFOufXMl0
 hZKtDgLHrctGOaljfF0J/SiicoER9aKhVm4cNs27SZVZDEHo+cfaj8nL2l/9BaC2FM
 hmxGbdoclA2JLqhYZwbJXatX+f/RqvJ45KXju07sSXiUnXGBaw2iyNDn48clDjcC3m
 sKcXYq6XMuQtg==
Message-ID: <9fdf35533dab9ae95947bcc3709d14a268b14368.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: asmadeus@codewreck.org, cgel.zte@gmail.com
Date: Tue, 24 Aug 2021 06:21:45 -0400
In-Reply-To: <YSSl4tPGeowannmy@codewreck.org>
References: <20210824074503.62333-1-ran.xiaokai@zte.com.cn>
 <YSSl4tPGeowannmy@codewreck.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mITZ7-00084i-5g
Subject: Re: [V9fs-developer] [PATCH] fs: 9q: remove unnecessary label
 "out_err"
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
Cc: lucho@ionkov.net, ericvh@gmail.com, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, ran.xiaokai@zte.com.cn,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-08-24 at 16:55 +0900, asmadeus@codewreck.org wrote:
> cgel.zte@gmail.com wrote on Tue, Aug 24, 2021 at 12:45:03AM -0700:
> > From: CGEL <ran.xiaokai@zte.com.cn>
> > 
> > due to commit 798b2ae3cd58 ("Merge remote-tracking branch
> > 'file-locks/locks-next'"), label "out_err" should be removed to
> > avoid build warning.
> 
> That commit is not in master (it's a linux-next commit), you cannot
> refer to a commit id that hasn't been merged in commit messages.
> Also given it's a trivial merge commit so please take a minute to find
> the real culprit (fs: remove mandatory file locking support) next time.
> 
> 
> Given it's not merged yet, Jeff can still fix his patch in his branch,
> I've added him to recipients -- can you remove the label?
> I've never used mandatory file locking myself so I'll admit I didn't
> really look at your patch the other day...
> 

Yep, I've already fixed this in my branch. The next linux-next merge
should have it. We'll probably merge the patch in v5.15, so hopefully
any pain and merge conflicts will be short-lived...

Thanks,
Jeff

> > 
> > Reported-by: Zeal Robot <zealci@zte.com.cn>
> > Signed-off-by: CGEL <ran.xiaokai@zte.com.cn>
> > ---
> >  fs/9p/vfs_file.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> > index 978666530d8e..d2d83163d6b0 100644
> > --- a/fs/9p/vfs_file.c
> > +++ b/fs/9p/vfs_file.c
> > @@ -319,7 +319,7 @@ static int v9fs_file_lock_dotl(struct file *filp, int cmd, struct file_lock *fl)
> >  		ret = v9fs_file_getlock(filp, fl);
> >  	else
> >  		ret = -EINVAL;
> > -out_err:
> > +
> >  	return ret;
> >  }
> 
> Thanks,

-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
