Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A70320C67B
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 08:29:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpQoD-0006SM-Li; Sun, 28 Jun 2020 06:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jpQoB-0006S7-6s
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 06:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lQqlt46FUYW1wrJU78Tt3Mwl+qUGao1zNA39z/IzARs=; b=eIWn2VZ0xQnaYtul7dzoZzY+A2
 UWl+0+yVZ68wTBBoDSvpKy7hVuy5rbLQv87R5atzi4yMRtICMlW0/QPq9xuSO8KbRJhmG8FXMK7KS
 x0Cd9x2d4Od0h3myV9ib+yQ9MQox6t+g9ByUu+TeD/EUQ2WUHrhrP1WxZNb+qNW876fY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQqlt46FUYW1wrJU78Tt3Mwl+qUGao1zNA39z/IzARs=; b=Qezg2IB38g2yoe0LS2M3LXDo8T
 qhXCes3RRpfu1cLmo4Y3RnXooTUkQDOUNkNQNZ6Vdk1/HFkuCb0mJl3YpjZrQPwkOu6IIPE+nriCv
 +aBqCp319c8YB4NkQXFRAcYM8zUae+IRfEFHEUcfkKfXcZgXK+/IKGh88ozlKN2MVx2o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpQo9-0040Ai-GF
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 06:28:55 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id D6CADC01A; Sun, 28 Jun 2020 08:28:39 +0200 (CEST)
Date: Sun, 28 Jun 2020 08:28:24 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200628062824.GB13335@nautica>
References: <20200628020608.36512-1-jianyong.wu@arm.com>
 <20200628020608.36512-2-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200628020608.36512-2-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpQo9-0040Ai-GF
Subject: Re: [V9fs-developer] [RFC PATCH 1/2] 9p: retrieve fid from file
 when file instance exist.
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 ericvh@gmail.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Sun, Jun 28, 2020:
> In the current setattr implementation in 9p, fid will always retrieved from
> dentry no matter file instance exist or not when setattr. There will
> be some info related to open file instance dropped. so it's better
> to retrieve fid from file instance if file instance is passed to setattr.
> 
> for example:
> fd=open("tmp", O_RDWR);
> ftruncate(fd, 10);
> 
> the file context related with fd info will lost as fid will always be
> retrieved from dentry, then the backend can't get the info of file context.
> it is against the original intention of user and may lead to bug.

I agree on principle, this makes more sense to use the file's fid.

Just a comment below, but while I'm up in commit message I'll also be
annoying with it -- please try to fix grammar mistakes for next
patches/version (mostly missing some 'be' for future passive form; but I
don't understand why you use future at all and some passive forms could
probably be made active to simplify... Anyway we're not here to discuss
English grammar but words missing out is sloppy and that gives a bad
impression for no good reason)

> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  fs/9p/vfs_inode.c      | 5 ++++-
>  fs/9p/vfs_inode_dotl.c | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index c9255d399917..010869389523 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -1100,7 +1100,10 @@ static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
>  
>  	retval = -EPERM;
>  	v9ses = v9fs_dentry2v9ses(dentry);
> -	fid = v9fs_fid_lookup(dentry);
> +	if (iattr->ia_valid & ATTR_FILE)
> +		fid = iattr->ia_file->private_data;

hmm, normally setattr cannot happen on a file that hasn't been opened so
private_data should always be set, but it doesn't cost much to play safe
and check? e.g. something like this is more conservative:

struct p9_fid *fid = NULL;
...
if (iattr->ia_valid & ATTR_FILE) {
	fid = iattr->ia_file->private_data;
	WARN_ON(!fid);
}
if (!fid)
	fid = v9fs_fid_lookup(dentry);



What do you think?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
