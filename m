Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD4C6D02C6
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 13:15:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phqG0-0004a6-FX;
	Thu, 30 Mar 2023 11:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1phqFy-0004Zz-Dv
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EYSl/vNTnPUEN+eb/kw3LXpeDK/qDHO2VckWMOPZPKk=; b=Q6ngnlEVmPfF4sRahWbmIMla0V
 h0Es9m0agw0g1KvmbBjVEXqsxr+DKmQPFgf9OpYK/ATrNVIPHZfgaI41ZZsU4/zKaaRyCgakeFhBM
 vpk9SzgRUIr3y48Xmi+hJE04UW2pXRgC4Mne8fjkTBMhfvRD7nKdbEZUsJI6MYxIGPMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EYSl/vNTnPUEN+eb/kw3LXpeDK/qDHO2VckWMOPZPKk=; b=eAlApHCTwgNEHBmbZsMyynXd7p
 CmlM+QI0lSjXoPi2M0ufIgzMp4ZQOnFz2zNcnIv2BgMKffjCQTDBFlYqyCrGWln0rSjttwys+/sQx
 sMXpKB3UHkNX+/GQ2dMaQ2+gaqRhn6tBWq6F/HjLwijMMATKKxnKQ35f/Ok5zQC/KTE4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phqFs-009XT0-Tk for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:15:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 835B462010;
 Thu, 30 Mar 2023 11:15:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A797EC4339B;
 Thu, 30 Mar 2023 11:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680174938;
 bh=YCSzKhNNBlTSK7z9joSzKOHxtCHi+jqjL1rPXUOpFEQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=O1RS3fu9KpGLVFV3Q09UyEqLd5K8DnOi+CchwJ9QUZ+ladJ09I3Zyr2oYDFHJ8GHX
 Tv/0ItAQ/Ah8WDyngHvR0ynJCqRui0N5I7Cr0UsXEBQdEfPf6xsGfNiMAOLMlpOP6k
 6ets9kYdd++JvITISKRdLxyFH/T4TxBq6WzgFOOnIhsrJDCm6YunLPOfqdQOVCkpNi
 P2xxfCUT5V1NyhjGxVkoC7t2iCM0LdpW5FFmGmNDqlDx2GwDT9ajwnupvfOCP3oFJF
 Lc1Dv17vrqZcRK1T5ErSS/0BqBFQdl6yJ1nyPsDmdL3yOwzXYKtyO0Zcc7CS4ClMEj
 xtPdBqTDtaMRA==
Message-ID: <31bd4a176344cd0746f1ec519eb8caca2ef2ba68.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 30 Mar 2023 07:15:36 -0400
In-Reply-To: <ZCVpAyA__NrAOVOg@kroah.com>
References: <20230330104144.75547-1-jlayton@kernel.org>
 <ZCVpAyA__NrAOVOg@kroah.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2023-03-30 at 12:48 +0200, Greg Kroah-Hartman wrote:
 > On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote: > > There
 are three copies of the same dt_type helper sprinkled around the > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phqFs-009XT0-Tk
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

On Thu, 2023-03-30 at 12:48 +0200, Greg Kroah-Hartman wrote:
> On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote:
> > There are three copies of the same dt_type helper sprinkled around the
> > tree. Convert them to use the common fs_umode_to_dtype function instead,
> > which has the added advantage of properly returning DT_UNKNOWN when
> > given a mode that contains an unrecognized type.
> > 
> > Cc: Chuck Lever <chuck.lever@oracle.com>
> > Cc: Phillip Potter <phil@philpotter.co.uk>
> > Suggested-by: Christian Brauner <brauner@kernel.org>
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >  fs/configfs/dir.c | 9 ++-------
> >  fs/kernfs/dir.c   | 8 +-------
> >  fs/libfs.c        | 9 ++-------
> >  3 files changed, 5 insertions(+), 21 deletions(-)
> > 
> > v2: consolidate S_DT helper as well
> > v3: switch existing dt_type helpers to use fs_umode_to_dtype
> >     drop v9fs hunks since they're no longer needed
> 
> You forgot the "v3" in the subject line :(
> 

Yeah, I noticed, sorry. It's the attention to detail that makes me such
a successful kernel developer! ;)
-- 
Jeff Layton <jlayton@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
