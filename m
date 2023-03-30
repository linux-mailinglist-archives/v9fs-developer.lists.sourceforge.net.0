Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4884A6D0508
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 14:41:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phrar-00074B-WA;
	Thu, 30 Mar 2023 12:41:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1phraq-000745-PA
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 12:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlQjEwI7tytRCMI2TqSQODnipbb6Y0/Pa2Pt7yMUGQI=; b=K9jb7GBE7v3er5/A3SUuQrnlk6
 6qA7LFNg0W9VijRkNoM+WMeqKgfMkdkdRzRiFEy/Rwvsh5JGxkrjkya2CFVyvxGjQUTfWmImd3uP3
 DoiIYomR2q75xXpz3pr8TJJAh65xgzx/OIpt2QZkqcdWp30qHchg6pvCGd8e6p3OX3Kk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xlQjEwI7tytRCMI2TqSQODnipbb6Y0/Pa2Pt7yMUGQI=; b=jz4MfzZ1X2CMFkjRuLOQfziITk
 wPCjVsQWlT3ccdxxw19xFYN0pekj4wJY+4Wrepuno4RuxUBtW1K1Ay1pZ4PjlLWMhNQFpZ6WlQkBm
 jcopXVGigoeoOCBpnlKceLeZ5PgQ5wS5O2iB6SqvGwm4aHMYT2K2WskjWkah1OeWwCVA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phrar-009gw4-1Y for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 12:41:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0A7E62058;
 Thu, 30 Mar 2023 12:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AECADC433EF;
 Thu, 30 Mar 2023 12:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680180082;
 bh=H2CWthzCkNL5YlH7+JHisFXzsRbNGrgUtcahqrtI+Tw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tn5drJVUC4auIWA58yPEiD6skHL4n/IIbN1Any560WJu21hwunt7Pe+Hjbsj7DnOy
 da4P6noaFjdmALwI7XORtevgAKw3G0vBrFvQs7npDl99H9kG8Ur9Umu6uEisE431RZ
 s+/5fg8+hyGipnypjo7WEAA4g0tiTo9p5O0iScMklpKRzrDKq3pTsgLVsi1RuUqarp
 UjtPJq3XjKQe7Y71uUY7OFIDeCXbXfmnV6qNuqz9vjQc79FWdBcNstL9IYT9PN+kG7
 48xRhKdrtiKvJDyXo/VLL3ejj/fp3LleT/AyOnrjmoQ7MNKK6LU/klIYXM50YcUA/2
 nv+FmNSAxgTAQ==
Date: Thu, 30 Mar 2023 14:41:14 +0200
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230330-overeager-balcony-36975926d0a0@brauner>
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
X-Headers-End: 1phrar-009gw4-1Y
Subject: Re: [V9fs-developer] [PATCH v3] fs: consolidate duplicate dt_type
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

Looks good to me,
Reviewed-by: Christian Brauner <brauner@kernel.org>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
