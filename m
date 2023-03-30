Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 296B76D03EB
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 13:51:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phqoC-0002mj-FL;
	Thu, 30 Mar 2023 11:51:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1phqoA-0002mc-He
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=24HaC3/qKs9Zcu+df9BFEAAsmR7v23Sk0lGWpSq1s1c=; b=B8ZxAkPB+nTLhbMW2v2cWHuPk5
 4an7pMPlQMCiYOYSeSDTdiR9ETkwd4JCt3HFZOx4GH2TkfSBNDTq3/0s5gl4JB3fnHXfjIz7xR7Tn
 aDD7SQeUNLS6Jc3ENuYfh1xZ+B6FS0zqADXiUY20FAHPZSa13kRk4hVe/QAyozYa9hxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=24HaC3/qKs9Zcu+df9BFEAAsmR7v23Sk0lGWpSq1s1c=; b=Yw2uY9CzzZFN//xUtA4FylYbuw
 hyW/+urBjW/2yUtMSLYvPBgVejkxbW1+5Bb3gFHs02T64cLieWSEN9+GQ1gPS19pxjEjdAGE5J4LT
 Rqn8N3H66LsMa8o6yYIApwdNe+QG5KSnWbcXn0FdxFYeYYLizkST1PO1Bf8yvfU2sF+4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phqoA-009d6p-4r for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 11:51:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BCBC0615D3;
 Thu, 30 Mar 2023 11:51:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 427C1C4339B;
 Thu, 30 Mar 2023 11:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680177064;
 bh=BnoKw5KS7SaKCVrfQPGiM/jICK730a3ZjfwXB5RR3CQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=POlSe6LxoYYMKbOiomn7vKJp1daNhA6zBC3zbpCeTB4hXDqhO0tiu7Irhbleqmyoh
 bVdkiG8ecEwGX0RJLtjhgdAUCXM88VWMlIzcgz4X1mngjoDCgum1CR5cUg/89XYeE4
 arNDkDUF76ddVJRN+kv8eJYiTYX0Bsszqn7d8ysfY+zv55o2QYUBHeurP+KIIr0pCL
 k010QikBosvJljfbjsVYAOGXHUY2bsoXfvT9f+KE5ZeqGvPxRRVt7iNfR76kPbHF43
 ff8LKFXEDxHJdXd82kaFS+8UqWPeBljy2Jf/Olkrdpv9/DGuu16BC4F1H2Zx3/2lsf
 34icUZTPUUzhQ==
Date: Thu, 30 Mar 2023 13:50:56 +0200
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230330-plunder-revert-f6b2d3199766@brauner>
References: <20230330104144.75547-1-jlayton@kernel.org>
 <ZCVpAyA__NrAOVOg@kroah.com>
 <31bd4a176344cd0746f1ec519eb8caca2ef2ba68.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31bd4a176344cd0746f1ec519eb8caca2ef2ba68.camel@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 07:15:36AM -0400, Jeff Layton wrote:
 > On Thu, 2023-03-30 at 12:48 +0200, Greg Kroah-Hartman wrote: > > On Thu,
 Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote: > > > There [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phqoA-009d6p-4r
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, linux-fsdevel@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 Tejun Heo <tj@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Mar 30, 2023 at 07:15:36AM -0400, Jeff Layton wrote:
> On Thu, 2023-03-30 at 12:48 +0200, Greg Kroah-Hartman wrote:
> > On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote:
> > > There are three copies of the same dt_type helper sprinkled around the
> > > tree. Convert them to use the common fs_umode_to_dtype function instead,
> > > which has the added advantage of properly returning DT_UNKNOWN when
> > > given a mode that contains an unrecognized type.
> > > 
> > > Cc: Chuck Lever <chuck.lever@oracle.com>
> > > Cc: Phillip Potter <phil@philpotter.co.uk>
> > > Suggested-by: Christian Brauner <brauner@kernel.org>
> > > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > > ---
> > >  fs/configfs/dir.c | 9 ++-------
> > >  fs/kernfs/dir.c   | 8 +-------
> > >  fs/libfs.c        | 9 ++-------
> > >  3 files changed, 5 insertions(+), 21 deletions(-)
> > > 
> > > v2: consolidate S_DT helper as well
> > > v3: switch existing dt_type helpers to use fs_umode_to_dtype
> > >     drop v9fs hunks since they're no longer needed
> > 
> > You forgot the "v3" in the subject line :(
> > 
> 
> Yeah, I noticed, sorry. It's the attention to detail that makes me such
> a successful kernel developer! ;)

/me hides from his own syzbot "good morning" message from earlier today...

But honestly, I don't think it's worth resending just to add v3.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
