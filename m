Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D50676D0216
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 12:48:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phppt-0004C6-CO;
	Thu, 30 Mar 2023 10:48:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1phppr-0004C0-Ay
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lQzFhjg9Gq8QJWdD1JtndfSgQNVUtucQ+ZjFjd6tEKg=; b=MrtSTTadZrodgV5GdPosRF7c2p
 tz+BePv/3+JM1mOchSWO0jZIIKpGQvIOt6DcqvLsf89GJPPTCFE7KNB8Sm4lQmgG3+3NgGb1JUtII
 aLB5oOzh2CwZlzNrym0GgybUq+C2DGdz4azx7vw42l1hP4MUTBP/Sd4NvOTuagPjjWNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQzFhjg9Gq8QJWdD1JtndfSgQNVUtucQ+ZjFjd6tEKg=; b=ZlTyDg5Dz4F3YbBJIJeelGmaIh
 7XV01LB8/e8hMwKUQUuVE6mt6oDOSrC6B9tP7MrerhgwtFvhHHwj8hDbG0o2uNYF14NOEamodBQm/
 xCayZjpzEZ4MddthmFQzuz4uXz5UgEZ8+q2Dhnl3A5Y+v5clq9yH6CFQhmf16nk/Q4Sg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phppp-0006MW-1Q for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:48:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BFD7FB82757;
 Thu, 30 Mar 2023 10:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16448C433EF;
 Thu, 30 Mar 2023 10:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1680173321;
 bh=8oWvMr4wiz2aNx6cQIoyYHUmn/pZJiT8/q+iAW7Gv14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AeILlbSJQ4H9+z+a4cMaHn9n/hS7Mm30CJRM+ghJiQ4TqalpxEiKeOMHZ9EmY1phT
 TBmxXvCJuvfmu6VQ1rsQTbg6rvk7q2DcpzQitHTNcHC68dn7BdJErkw1TGuW5Zys6l
 QN18U/M3OYdzBrnhww2D0SNbcLzF1adOxIeD/GqA=
Date: Thu, 30 Mar 2023 12:48:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <ZCVpAyA__NrAOVOg@kroah.com>
References: <20230330104144.75547-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230330104144.75547-1-jlayton@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote:
 > There are three copies of the same dt_type helper sprinkled around the
 > tree. Convert them to use the common fs_umode_to_dtype function [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phppp-0006MW-1Q
Subject: Re: [V9fs-developer] [PATCH] fs: consolidate duplicate dt_type
 helpers
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
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, linux-fsdevel@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 Tejun Heo <tj@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote:
> There are three copies of the same dt_type helper sprinkled around the
> tree. Convert them to use the common fs_umode_to_dtype function instead,
> which has the added advantage of properly returning DT_UNKNOWN when
> given a mode that contains an unrecognized type.
> 
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Phillip Potter <phil@philpotter.co.uk>
> Suggested-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/configfs/dir.c | 9 ++-------
>  fs/kernfs/dir.c   | 8 +-------
>  fs/libfs.c        | 9 ++-------
>  3 files changed, 5 insertions(+), 21 deletions(-)
> 
> v2: consolidate S_DT helper as well
> v3: switch existing dt_type helpers to use fs_umode_to_dtype
>     drop v9fs hunks since they're no longer needed

You forgot the "v3" in the subject line :(



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
