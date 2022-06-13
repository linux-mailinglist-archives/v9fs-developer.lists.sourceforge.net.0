Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D704C549EEF
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 22:21:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0qYh-00014w-BD; Mon, 13 Jun 2022 20:21:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0qYf-00014p-FQ
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nft++AK4Xo5eRcdhC/+nOVQRH0imfgMDAanvnC8iCGY=; b=m2e88LOYpOVUCEtT0dmuc7+By1
 2cOwtLbnjXwNkCInQ2mdyhOBMvYeqxacjCUi3aUh/Q5qMt34utqM4MW/XoxQpi/VHYgZ6v42kwFvt
 TIesvkWTY2KFjX+yGqSiSvx9kbUHM44XYcNdrnCssA17nZ/jpmezo+zf/l/euYLgGCSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nft++AK4Xo5eRcdhC/+nOVQRH0imfgMDAanvnC8iCGY=; b=MYM5m4DD7n4jAxz5xCFWu9pdbb
 uNBdRpV5Ug1lY+K8cg+SCvKJ77Brw+fEMCeHT1Fb254hcNeAxFtzDFPqRff1UrPDbiLN4Wpym5QeA
 j+QTHu6Lo5AybeZIgX2jJ/hropfkILmerpY81qfskR/nYHBfdUWMml4d063PEwnKmRM4=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0qYc-00071N-1S
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:21:09 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 8640820C154C;
 Mon, 13 Jun 2022 13:20:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8640820C154C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655151657;
 bh=Nft++AK4Xo5eRcdhC/+nOVQRH0imfgMDAanvnC8iCGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g0bSIsfsfTpuWw1wxebHkd2aPkjo0Gyxb/hYPwXstl6EQLvknbiRYqW/HO1jZAlxi
 4RY8Zijlv9dmd3IldYIG/q1jLlzlna24bgt4BfAHvvaknQNpNVG7Ot1ZgVD5WZ74Je
 ImAB7VOaW0frx6XujBx9pjxOV9fEfwVu7CY4sv0I=
Date: Mon, 13 Jun 2022 15:20:53 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220613202053.GI7401@sequoia>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220612085330.1451496-1-asmadeus@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-12 17:53:23, Dominique Martinet wrote: > So: >
 - I could reproduce Tyler's generic 531 leak, fixed it by the first > commit
 in v9fs_vfs_atomic_open_dotl > - Found another less likely leak w [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0qYc-00071N-1S
Subject: Re: [V9fs-developer] [PATCH 00/06] fid refcounting improvements and
 fixes
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-12 17:53:23, Dominique Martinet wrote:
> So:
>  - I could reproduce Tyler's generic 531 leak, fixed it by the first
>    commit in v9fs_vfs_atomic_open_dotl
>  - Found another less likely leak while reworking code
>  - Christian's comment that it's not obvious that clunk is just a
>    refcount decrease was very true: I think it's worth the churn,
>    so I've rename this all through a new helper...
>  - ... with the not-so-hidden intent to improve debugging by adding
>    a tracepoint for them, which I have also done.
> 
> I've also taken my comment in the other thread further and went ahead
> and made it in its own commit. Tyler, if you're ok with this I'll just
> squash it up. You can see rebased patches here:
> https://github.com/martinetd/linux/
> 
> Note that I also took the permission to add back '/* clone */' as a
> comment to your changing p9_client_walk's arguments: while I can agree
> variables are hard to track, figuring out what the heck that boolean
> argument means is much harder to me and I honestly preferred the
> variable.
> Having both through a comment is good enough for me if you'll accept
> this:
> ----
> @@ -222,7 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
>                  * We need to hold rename lock when doing a multipath
>                  * walk to ensure none of the patch component change
>                  */
> -               fid = p9_client_walk(old_fid, l, &wnames[i], clone);
> +               fid = p9_client_walk(old_fid, l, &wnames[i],
> +                                    old_fid == root_fid /* clone */);

This is no problem at all. The rebased patches look good to me. Squash
your fix to my fix and it should be ready to go.

Thanks again!

Tyler

>                 /* non-cloning walk will return the same fid */
>                 if (fid != old_fid) {
>                         p9_client_clunk(old_fid);
> ----
> 
> 
> The last commit is just cleanups and should be no real change.
> 
> Dominique Martinet (6):
>   9p: fix fid refcount leak in v9fs_vfs_atomic_open_dotl
>   9p: fix fid refcount leak in v9fs_vfs_get_link
>   9p: v9fs_fid_lookup_with_uid fix's fix suggestion
>   9p fid refcount: add p9_fid_get/put wrappers
>   9p fid refcount: add a 9p_fid_ref tracepoint
>   9p fid refcount: cleanup p9_fid_put calls
> 
> 
> (diff stats include Tyler's commits)
> 
>  fs/9p/fid.c               | 71 +++++++++++++++-------------
>  fs/9p/fid.h               |  6 +--
>  fs/9p/vfs_addr.c          |  4 +-
>  fs/9p/vfs_dentry.c        |  4 +-
>  fs/9p/vfs_dir.c           |  2 +-
>  fs/9p/vfs_file.c          |  9 ++--
>  fs/9p/vfs_inode.c         | 97 +++++++++++++++++----------------------
>  fs/9p/vfs_inode_dotl.c    | 79 ++++++++++++-------------------
>  fs/9p/vfs_super.c         |  8 ++--
>  fs/9p/xattr.c             |  8 ++--
>  include/net/9p/client.h   |  3 ++
>  include/trace/events/9p.h | 48 +++++++++++++++++++
>  net/9p/client.c           | 42 +++++++++++------
>  13 files changed, 211 insertions(+), 170 deletions(-)
> 
> -- 
> 2.35.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
