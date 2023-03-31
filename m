Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7DA6D1995
	for <lists+v9fs-developer@lfdr.de>; Fri, 31 Mar 2023 10:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pi9w5-0006TF-12;
	Fri, 31 Mar 2023 08:16:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pi9w2-0006SD-IB
 for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Mar 2023 08:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GphwL0cfELCrMcJkGCmai+3pzyqvQW7AouCinH4jEl0=; b=V0X4Y3PLFibL1aA+SpinCe0LUl
 QuABiNe6J7zOiVIYCfca0ObT+6/AfrOvnB73FU68M+DQF+kBa0varBBAfw6mjQ5SVA2jyw4cAqzpm
 5wUUxSuQI8NK2KgqoYfLj0BAtl2FoYtbexyIUy1grKj28XcW70XCFoEq0xQPxavl/tPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GphwL0cfELCrMcJkGCmai+3pzyqvQW7AouCinH4jEl0=; b=RF+YfZoaFTzOa0mLP1PIMJ1dBj
 PYoZKcj5/Q6QhYoEHW5FdUb+shs7Tc/npgluE6zvguPI+TVXXojBGMz4iVs0o99HRhlAUfZV9ZhZs
 pYmpUDyPWxsbfGjAKt1G6sgm0lEpwofcZeDTCgYP9G1M/to/Ancz+CNOYSm6ckr3RHyk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pi9w1-00AdfI-1H for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Mar 2023 08:16:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9F8F362495;
 Fri, 31 Mar 2023 08:16:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86617C433EF;
 Fri, 31 Mar 2023 08:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680250587;
 bh=PYmLM1bxoyFg+1lJKD4C5xnYYLaPTUsZdePvriHRkgQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iaMfo1OsCPFpTL8Mbm7l6/a6MfvE/SDSFYkgJvV06UzSV0apXE3wLINDfsGmJpuME
 YZuD3Nhrhi66/lig1KIg/7Y0VZHS49GYmNoZbrYW+5BEh+ZFn6lz/D7U/uRWZYJhfu
 zcZd7gR882IcuaUHdtYfstGa8FkLm1xvsQ2Ua/X6un7PU+MwM0fQnGcbhOSg0MVGVJ
 Jh8GDr3OQsn1PdSTzlEIYwZwdxluvTzSVYQZLFlWcySDkNtoy1ZBYifS66RJ9P2gN/
 WpMjgrmOwpm4rdXiC70xYyXh3Un5pxyDpnTb2NyW9JQ+wyMiugmcqHgUUnjUM3NS7Y
 vFph0vmwigP5w==
Date: Fri, 31 Mar 2023 10:16:20 +0200
From: Christian Brauner <brauner@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@lst.de>
Message-ID: <20230331-floss-occultist-0335eb57e847@brauner>
References: <20230330104144.75547-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230330104144.75547-1-jlayton@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 06:41:43AM -0400, Jeff Layton wrote:
 > There are three copies of the same dt_type helper sprinkled around the
 > tree. Convert them to use the common fs_umode_to_dtype function [...] 
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
X-Headers-End: 1pi9w1-00AdfI-1H
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

Greg, Christoph, if you have a minute could you please take a look
again and re-add your acks?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
